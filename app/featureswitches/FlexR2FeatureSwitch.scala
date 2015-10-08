package featureswitches


import play.api.Play


object FlexR2FeatureSwitch {

  private def galleryCanBeInFlex : Boolean = Play.current.configuration.getBoolean("feature.galleryCanBeInFlex").get
  private def cartoonCanBeInFlex : Boolean = Play.current.configuration.getBoolean("feature.cartoonCanBeInFlex").get

  def allowGalleryMigrationToFlex = galleryCanBeInFlex

  def allowCartoonMigrationToFlex = cartoonCanBeInFlex

}
