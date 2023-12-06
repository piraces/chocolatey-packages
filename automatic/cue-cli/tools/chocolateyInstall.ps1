$ErrorActionPreference = 'Stop'

$packageName = 'cue-cli'
$url64       = 'https://github.com/cue-lang/cue/releases/download/v0.7.0/cue_v0.7.0_windows_amd64.zip'
$checksum64  = '50be1c1a622c2544ae834b377293a587a0c08b3ea6c82441ae1d59435eeb5240'

$packageArgs = @{
  packageName    = $packageName
  url64          = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  unzipLocation  = Split-Path $MyInvocation.MyCommand.Definition
}
Install-ChocolateyZipPackage @packageArgs
