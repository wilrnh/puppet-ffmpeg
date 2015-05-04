# == Class: ffmpeg
#
# Just some params.pp
#
class ffmpeg::params {
  
  $package_ensure = 'present'
  $include_dev    = false,
  $include_dbg    = false,
  
  case $::osfamily {
    'Debian': {
      $base_package = 'ffmpeg'
      $dbg_package  = 'ffmpeg-dbg'
      $dev_packages = [
        'libavcodec-dev',
        'libavdevice-dev',
        'libavfilter-dev',
        'libavformat-dev',
        'libavutil-dev',
        'libpostproc-dev',
        'libswresample-dev',
        'libswscale-dev'
      ]
    }
    
    default: {
      default: {
        fail("Unsupported platform: ${module_name} currently doesn't support ${::osfamily} or ${::operatingsystem}")
      }
    }
  }
}
