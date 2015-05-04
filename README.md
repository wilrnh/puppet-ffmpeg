# FFMPEG

#### Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with ffmpeg](#setup)
    * [What ffmpeg affects](#what-ffmpeg-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with ffmpeg](#beginning-with-ffmpeg)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)

## Overview

Manages FFMPEG installation.

Currently only supports Ubuntu.

## Module Description

FFMPEG is a complete, cross-platform solution to record, convert and stream audio
and video. This module provides the ability to manage the installation of FFMPEG.

## Setup

### What ffmpeg affects

* FFMPEG packages: binaries, libraries, debug symbols.

### Setup Requirements

This module requires that FFMPEG is available via package repositories. This module *does not* manage any package repositories, such as those suggested via http://ffmpeg.org/download.html#build-linux.

### Beginning with ffmpeg

Simply include the main class to get started with the default options:

```puppet
    include '::ffmpeg'
```

## Usage

```puppet
    class {'ffmpeg':
      package_ensure => '7:2.6.2~trusty', # specify a version
      include_dev    => true,             # install development libraries
      include_dbg    => true,             # install debug symbols
    }
```

## Reference

### Classes
#### Public Classes

`::ffmpeg`: Installs FFMPEG.

#### Private Classes

`::ffmpeg::install`: Installs FFMPEG base packages.

`::ffmpeg::dev`: Installs FFMPEG development packages.

`::ffmpeg::dbg`: Installs FFMPEG debug symbols packages.

### Parameters
#### ffmpeg

`package_ensure`
Passed directly on to Puppet's `package` type `ensure` parameter. Defaults to `present`.

`include_dev`
Whether to include development libraries. eg., `libavcode-dev`. Defaults to `false`.

`include_dbg`
Whether to include debug symbols. eg., `ffmpeg-dbg`. Defaults to `false`.

## Limitations

This module currently only supports Ubuntu.

## Development

Pull requests are always awesome.
