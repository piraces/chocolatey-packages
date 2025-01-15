$ErrorActionPreference = 'Stop'

$packageName = 'gitleaks'
$url32       = 'https://github.com/gitleaks/gitleaks/releases/download/v8.23.1/gitleaks_8.23.1_windows_x32.zip'
$url64       = 'https://github.com/gitleaks/gitleaks/releases/download/v8.23.1/gitleaks_8.23.1_windows_x64.zip'
$checksum32  = '469c70055aa31bd14afdb37f475d920c4efb0c0e49c3517d126627b869ef0692'
$checksum64  = '3467ffc4338d2ee60fe962ed1cb5364b2b6412eedbbcc40f7a9b66ca49ba71ad'

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
