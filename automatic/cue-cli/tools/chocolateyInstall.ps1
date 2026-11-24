$ErrorActionPreference = 'Stop'

$packageName = 'cue-cli'
$url64       = 'https://github.com/cue-lang/cue/releases/download/v0.18.0/cue_v0.18.0_windows_amd64.zip'
$checksum64  = 'c2b17fc673b1395704cf4db657327c5f9da831edab5164531ec315ba05bb95b4'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
