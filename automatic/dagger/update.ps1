import-module au

$releases_latest = 'https://github.com/dagger/dagger/releases/latest'
$releases = 'https://github.com/dagger/dagger/releases/'

function global:au_SearchReplace {
    @{
        'tools\chocolateyInstall.ps1' = @{
            "(^[$]url64\s*=\s*)('.*')"      = "`$1'$($Latest.URL64)'"
            "(^[$]checksum64\s*=\s*)('.*')" = "`$1'$($Latest.Checksum64)'"
        }
     }
}

function global:au_BeforeUpdate {
    $Latest.Checksum64 = Get-RemoteChecksum $Latest.URL64
}

function global:au_GetLatest {
    $releases_page = Invoke-WebRequest -Uri $releases_latest -UseBasicParsing

    # dagger_v0.2.5_windows_amd64.zip
    $re_version = "/dagger/dagger/tree/v.+"
    $re  = "dagger_.+_windows_amd64.zip"

    $latest_version = $releases_page.Links | ? href -match $re_version | select -First 1 -expand href

    $latest_version = $latest_version -split '/' | select -First 1 -Skip 4

    $download_page = Invoke-WebRequest -Uri "$($releases)expanded_assets/$($latest_version)" -UseBasicParsing

    $url = $download_page.links | ? href -match $re | select -First 1 -expand href

    $version = $url -split '_' | select -First 1 -Skip 1
    $version = $version.replace("v","")
    $url64 = 'https://github.com' + $url

    $Latest = @{ URL64 = $url64; Version = $version }
    return $Latest
}

update -ChecksumFor none