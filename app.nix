with import <nixpkgs> {};

androidenv.buildApp {
  name = "Amadeus";
  src = ./app/src/main;
  release = false;
  APP_PLATFORM = "34";

  ## If release is set to true, you need to specify the following parameters
  #keyStore = ./keystore;
  #keyAlias = "amadeus";
  #keyStorePassword = "amadeus-keystore";
  #keyAliasPassword = "amadeus-password";

  # Any Android SDK parameters that install all the relevant plugins that a
  # build requires
  platformVersions = [ "33" "34"];

  # When we include the NDK, then ndk-build is invoked before Ant gets invoked
  includeNDK = true;
}

