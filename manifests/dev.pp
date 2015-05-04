# == Class: ffmpeg::dev
#
# Installs FFMPEG development packages
#
class ffmpeg::dev {
  
  package{$ffmpeg::params::$dev_packages:
    ensure => $ffmpeg::package_ensure,
  }
}
