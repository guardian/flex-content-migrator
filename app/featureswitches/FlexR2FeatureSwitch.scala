package featureswitches


import play.api.Play


object FlexR2FeatureSwitch {

  private def galleryCanBeInFlex : Boolean = Play.current.configuration.getBoolean("feature.galleryCanBeInFlex").get

  def allowGalleryMigrationToFlex = galleryCanBeInFlex

}
