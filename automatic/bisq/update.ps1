import-module au

$releases_latest = 'https://github.com/bisq-network/bisq/releases/latest'
$releases = 'https://github.com/bisq-network/bisq/releases/'

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
    $releases_page = Invoke-WebRequest -Uri $releases_latest -UseBasicParsing

    # Bisq-64bit-1.5.9.exe
    $re_version = "/bisq-network/bisq/tree/v.+"
    $re  = "Bisq-64bit-.+.exe"

    $latest_version = $releases_page.Links | ? href -match $re_version | select -First 1 -expand href

    $latest_version = $latest_version -split '/' | select -First 1 -Skip 4

    $download_page = Invoke-WebRequest -Uri "$($releases)expanded_assets/$($latest_version)" -UseBasicParsing

    $url = $download_page.links | ? href -match $re | select -First 1 -expand href

    $version = $url -split '/' | select -Last 1 -Skip 1
    $version = $version.replace("v","")
    $url64 = 'https://github.com' + $url

    $Latest = @{ URL64 = $url64; Version = $version }
    return $Latest
}

update -ChecksumFor none