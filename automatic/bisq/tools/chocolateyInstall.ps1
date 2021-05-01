$ErrorActionPreference = 'Stop'

$packageName = 'bisq'
$fileType    = 'exe'
$url64       = 'https://github.com/bisq-network/bisq/releases/download/v1.6.3/Bisq-64bit-1.6.3.exe'
$checksum64  = 'ce69e7069d554fb7fb2a6e5086d498bce5dfe366582b655d5f13573009892c95'
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
