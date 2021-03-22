import-module au

$releases = 'https://github.com/bisq-network/bisq/releases'

function global:au_SearchReplace {
    @{
        'tools\chocolateyInstall.ps1' = @{
            "(^[$]url64\s*=\s*)('.*')"      = "`$1'$($Latest.URL64)'"
            "(^[$]checksum64\s*=\s*)('.*')" = "`$1'$($Latest.Checksum64)'"
        }
     }
}

function global:au_BeforeUpdate() {
    $Latest.Checksum64 = Get-RemoteChecksum $Latest.Url64
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing

    # Bisq-64bit-1.5.9.exe
    $re  = "Bisq-64bit-.+.exe"
    $url = $download_page.links | ? href -match $re | select -First 1 -expand href

    $version = $url -split '/' | select -Last 1 -Skip 1
    $version = $version.replace("v","")
    $url64 = 'https://github.com' + $url

    $Latest = @{ URL64 = $url64; Version = $version }
    return $Latest
}

update -ChecksumFor none