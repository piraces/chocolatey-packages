$ErrorActionPreference = 'Stop'

$packageName = 'bisq'
$fileType    = 'exe'
$url64       = 'https://github.com/bisq-network/bisq/releases/download/v1.6.2/Bisq-64bit-1.6.2.exe'
$checksum64  = '9c45e2a92e1b2087998feccfcdfddf7f6111c3f9dc41466024a53d0953fdd22a'
$silentArgs  = '/VERYSILENT /NORESTART /SUPRESSMSGBOXES'
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
