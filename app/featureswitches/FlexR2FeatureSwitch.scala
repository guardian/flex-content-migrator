package featureswitches


import play.api.Play


object FlexR2FeatureSwitch {

  private def galleryCanBeInFlex : Boolean = Play.current.configuration.getBoolean("feature.galleryCanBeInFlex").get
  private def cartoonCanBeInFlex : Boolean = Play.current.configuration.getBoolean("feature.cartoonCanBeInFlex").get
  private def quizCanBeInFlex : Boolean = Play.current.configuration.getBoolean("feature.quizCanBeInFlex").get
  private def audioCanBeInFlex : Boolean = Play.current.configuration.getBoolean("feature.audioCanBeInFlex").get

  def allowGalleryMigrationToFlex = galleryCanBeInFlex

  def allowCartoonMigrationToFlex = cartoonCanBeInFlex

  def allowQuizMigrationToFlex = quizCanBeInFlex

  def allowAudioMigrationToFlex = audioCanBeInFlex

}
