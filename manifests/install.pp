# == Class: ffmpeg::install
#
# Installs FFMPEG base packages
#
class ffmpeg::install {
  package{$ffmpeg::params::base_package:
    ensure => $ffmpeg::package_ensure,
  }
}
