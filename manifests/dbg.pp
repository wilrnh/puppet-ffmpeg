# == Class: ffmpeg::dbg
#
# Installs FFMPEG debug symbols packages
#
class ffmpeg::dbg {
  
  package{$ffmpeg::params::$dbg_package:
    ensure => $ffmpeg::package_ensure,
  }
}
