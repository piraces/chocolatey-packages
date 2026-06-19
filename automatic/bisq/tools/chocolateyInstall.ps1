$ErrorActionPreference = 'Stop'

$packageName = 'bisq'
$fileType    = 'exe'
$url64       = 'https://github.com/bisq-network/bisq/releases/download/v1.10.2/Bisq-64bit-1.10.2.exe'
$checksum64  = '31507d8a117a32574632b2d166871aab276ac186c1ef4dd35c93469b3971f13e'
$silentArgs  = '/quiet'
$checksumType64 = 'sha256'
$validExitCodes = @(0, 3010, 1641)

$packageArgs = @{
  packageName    = $packageName
  fileType       = $fileType
  url64bit       = $url64
  checksum64     = $checksum64
  checksumType64 = $checksumType64
  validExitCodes = $validExitCodes
  silentArgs     = $silentArgs
}

Install-ChocolateyPackage @packageArgs
