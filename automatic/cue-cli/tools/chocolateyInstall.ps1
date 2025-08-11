﻿$ErrorActionPreference = 'Stop'

$packageName = 'cue-cli'
$url64       = 'https://github.com/cue-lang/cue/releases/download/v0.14.1/cue_v0.14.1_windows_amd64.zip'
$checksum64  = 'b2289feb775db9d10de6c039ffeccc8afb7a7fe0c656af891f8fce7f38aa1d8a'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
