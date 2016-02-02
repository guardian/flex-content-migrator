package featureswitches


import play.api.Play


object FlexR2FeatureSwitch {

  private def quizCanBeInFlex : Boolean = Play.current.configuration.getBoolean("feature.quizCanBeInFlex").get

  def allowQuizMigrationToFlex = quizCanBeInFlex


}
