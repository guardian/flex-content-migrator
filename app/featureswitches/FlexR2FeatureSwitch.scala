package featureswitches


import play.api.Play


object FlexR2FeatureSwitch {

  private def quizCanBeInFlex : Boolean = Play.current.configuration.getBoolean("feature.quizCanBeInFlex").get

  def allowQuizMigrationToFlex = quizCanBeInFlex

  private def crosswordCanBeInFlex : Boolean = Play.current.configuration.getBoolean("feature.crosswordCanBeInFlex").get

  def allowCrosswordMigrationToFlex = crosswordCanBeInFlex


}
