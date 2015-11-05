package services.migration.r2ToFlexConversion

import java.util.concurrent.TimeUnit

import scala.concurrent.duration.Duration

import com.lambdaworks.jacks.JacksMapper
import org.joda.time.DateTime
import play.Logger
import services.migration.quizbuilder._

import scala.concurrent.{Await, Future}


object R2ToFlexQuizConversion {

  def jsonMap(json : String) : Map[String, Any] = {
    JacksMapper.readValue[Map[String, Any]](json)
  }

  def parseLiveData(json : Map[String, Any],  quizImporterService : QuizImporterService) = {
    val parsed = new R2ToFlexQuizConversion(json, true, quizImporterService)
    Logger.debug(s"Produced live cartoon content XML:\n" + parsed.xml.toString())
    parsed
  }
  def parseDraftData(json : Map[String, Any],  quizImporterService : QuizImporterService) = {
    val parsed = new R2ToFlexQuizConversion(json, false, quizImporterService)
    Logger.debug(s"Produced draft cartoon content XML:\n" + parsed.xml.toString())
    parsed
  }
}

class R2ToFlexQuizConversion(jsonMap : Map[String, Any],
                             parseLiveData : Boolean,
                             quizImporterService : QuizImporterService)
                             extends R2ToFlexContentConversion(jsonMap, parseLiveData){

  import scala.language.postfixOps


  private def buildAnswer(answer : Map[String, Any]) : QuizQuestionAnswer = {
    val answerText = answer("answerText").toString //must have an answer text
    val isCorrect = getAsString("correct", answer).map(_.toBoolean).getOrElse(false);
    val image = None //TODO
    val revealText = None//TODO
    QuizQuestionAnswer(answerText, isCorrect, image, revealText)
  }

  private def buildQuestionsAndAnswers : List[QuizQuestion] = {
    val questions = getAsMaps("questions", liveOrDraft)
    questions match {
      case Some(questions) => {
        questions.map((question: Map[String, Any]) => {
          val questionText = question("questionText").toString
          val questionImage = None //TODO
          val questionAnswers : List[QuizQuestionAnswer] = getAsMaps("answers", question).getOrElse(Nil).map(buildAnswer(_))
          QuizQuestion(questionText, questionAnswers, questionImage)
        })
      }
      case None => Nil
    }
  }

  private def buildResultGroups : List[QuizResultGroup] = {
    val resultGroups = getAsMaps("bands", liveOrDraft)
    resultGroups match {
      case Some(resultGroups) => {
        resultGroups.map((resultGroup: Map[String, Any]) => {
          val bandValue = resultGroup("bandValue").toString.toInt
          val bandText = resultGroup("bandText").toString
          val share = None //TODO
          QuizResultGroup(bandText, bandValue, share)
        }).toList
      }
      case None => Nil
    }
  }

  private def buildAndImportQuiz = {

      val title = headline.get
      val createdAt = DateTime.now //TODO createdDate
      val updatedAt = DateTime.now //TODO
      val createdByUser = createdBy.get
      val revealAnswers = getAsString("showAnswerPage").map(_.toBoolean).getOrElse(true)

      Quiz( r2ContentId.get.toInt, title, createdAt, createdByUser, updatedAt, createdByUser,
            buildQuestionsAndAnswers, buildResultGroups, revealAnswers)
  }

  def contentAtoms : List[(String, Boolean)] = {
    val importedQuiz: Future[Option[String]] = quizImporterService.importQuiz(buildAndImportQuiz)
    Await.result(importedQuiz, Duration(30, TimeUnit.SECONDS)) match {
      case Some(s)  => (s, true) :: Nil //NOTE: defaulting required=true
      case _ => Nil
    };
  }

  override lazy val xml = {
    <article story-bundle={storyBundleId orNull} cms-path={cmsPath orNull} notes={notes orNull} slug-word={slug orNull}
             expiry-date={scheduledExpiry orNull}
             created-date={createdDate orNull} created-user={createdBy orNull} modified-date={modifiedDate orNull}
             web-publication-date={webPublicationDate orNull} on-page={pageNumber orNull}>

      <tags>
        {for (tag <- tags) yield <tag id={tag}/>}
      </tags>
      {r2PageId.map(pageId => <originalR2PageId>{pageId}</originalR2PageId>) orNull}
      {r2ContentId.map(contentId => <originalR2ContentId>{contentId}</originalR2ContentId>) orNull}
      {headline.map(h => <headline>{h}</headline>) orNull}
      {strap.map(s => <strap>{s}</strap>) orNull}
      {standfirst.map(s => <standfirst>{s}</standfirst>) orNull}
      {byline.map(b => <byline>{b}</byline>) orNull}
      {linktext.map(l => <linktext>{l}</linktext>) orNull}
      {trailtext.map(t => <trail>{t}</trail>) orNull}
      {thumbnailImageUrl.map(iu => <thumbnail-image-url>{iu}</thumbnail-image-url>) orNull}
      {trailPictureId.map(tp => <trail-picture image-id={tp} media-id={trailPictureMediaId orNull}/>) orNull}
      {largeTrailPictureId.map(ltp => <large-trail-picture image-id={ltp} media-id={largeTrailPictureMediaId orNull}/>) orNull}
      <content-atoms>
        {for (atom <- contentAtoms) yield <content-atom id={atom._1} required={atom._2.toString}/>}
      </content-atoms>
      <rights syndicationAggregate={syndicationAggregateFn orNull} subscriptionDatabases={subscriptionDatabasesFn orNull} developerCommunity={developerCommunityFn orNull}/>
      //expiry of rights and commercial expiry processing
      {val rightsExpiry = getRightsExpiry
    val commercialExpiry = getCommercialExpiry
    if (rightsExpiry.isDefined || commercialExpiry.isDefined) {
      <expiry>
        {rightsExpiry.map(info => <rights expired={info._1.getOrElse(false).toString}
                                          expiredAt={info._2 orNull}
                                          scheduledExpiry={info._3 orNull}/>) orNull}{commercialExpiry.map(info => <commercial expired={info._1.getOrElse(false).toString}
                                                                                                                               expiredAt={info._2 orNull}
                                                                                                                               scheduledExpiry={info._3 orNull}/>) orNull}
      </expiry>
    }}
    </article>
  }
  override lazy val live = getFacetFromMap("live")

  override lazy val draft = getFacetFromMap("draft")
}