$ErrorActionPreference = 'Stop'

$packageName = 'cue-cli'
$url64       = 'https://github.com/cue-lang/cue/releases/download/v0.11.1/cue_v0.11.1_windows_amd64.zip'
$checksum64  = '9ec0d4b82fbe682c5a7e5d752fe6240d69ad277216f832bdbd53bd3f496c09e0'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
