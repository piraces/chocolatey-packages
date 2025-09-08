$ErrorActionPreference = 'Stop'

$packageName = 'duf'
$url32       = 'https://github.com/muesli/duf/releases/download/v0.9.1/duf_0.9.1_windows_i386.zip'
$url64       = 'https://github.com/muesli/duf/releases/download/v0.9.1/duf_0.9.1_windows_x86_64.zip'
$checksum32  = '716138691fb2ed2f73e3061a43f1d1e82f47057e192f80d48e82d4eb07a17e55'
$checksum64  = '503934be81f847d9ddb1b739834217480633435ad16515dd199e372c0b2e1afc'

$packageArgs = @{
  packageName    = $packageName
  url            = $url32
  url64Bit       = $url64
  checksum       = $checksum32
  checksum64     = $checksum64
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
