# == Class: ffmpeg
#
# Entry point for FFMPEG module
#
# === Parameters
#
# [*package_ensure*]
#   Passed directly on to Puppet's `package` type `ensure` parameter. Defaults to `present`.
#
#
# [*include_dev*]
#   Whether to include development libraries. eg., `libavcode-dev`. Defaults to `false`.
#
#
# [*include_dbg*]
#   Whether to include debug symbols. eg., `ffmpeg-dbg`. Defaults to `false`.
#
# === Examples
#
# class {'ffmpeg':
#   package_ensure => '7:2.6.2~trusty', # specify a version
#   include_dev    => true,             # install development libraries
#   include_dbg    => true,             # install debug symbols
# }
#
class ffmpeg (
    $package_ensure = $ffmpeg::params::package_ensure,
    $include_dev    = $ffmpeg::params::include_dev,
    $include_dbg    = $ffmpeg::params::include_dbg,
  ) inherits ffmpeg::params {
    
    validate_string($package_ensure)
    validate_bool($include_dev)
    validate_bool($include_dbg)
    
    include ffmpeg::install
    
    if ($include_dev == true){
      include ffmpeg::dev
    }
    
    if ($include_dbg == true){
      include ffmpeg::dbg
    }
    
}
