import-module au

$releases_latest = 'https://github.com/Azure/aztfy/releases/latest'
$releases = 'https://github.com/Azure/aztfy/releases/'

function global:au_SearchReplace {
    @{
        'tools\chocolateyInstall.ps1' = @{
            "(^[$]url64\s*=\s*)('.*')"      = "`$1'$($Latest.URL64)'"
            "(^[$]url32\s*=\s*)('.*')"      = "`$1'$($Latest.URL32)'"
            "(^[$]checksum32\s*=\s*)('.*')" = "`$1'$($Latest.Checksum32)'"
            "(^[$]checksum64\s*=\s*)('.*')" = "`$1'$($Latest.Checksum64)'"
        }
     }
}

function global:au_BeforeUpdate {
    $Latest.Checksum32 = Get-RemoteChecksum $Latest.URL32
    $Latest.Checksum64 = Get-RemoteChecksum $Latest.URL64
}

function global:au_GetLatest {
    $releases_page = Invoke-WebRequest -Uri $releases_latest  -UseBasicParsing

    # aztfy_v0.3.0_windows_386.zip
    # aztfy_v0.3.0_windows_amd64.zip

    $re_version = "/Azure/aztfy/tree/v.+"
    $re  = "aztfy_.+_windows_(386|amd64).zip"

    $latest_version = $releases_page.Links | ? href -match $re_version | select -First 1 -expand href

    $latest_version = $latest_version -split '/' | select -First 1 -Skip 4

    $download_page = Invoke-WebRequest -Uri "$($releases)expanded_assets/$($latest_version)" -UseBasicParsing

    $url = $download_page.links | ? href -match $re | select -First 2 -expand href

    $version = $url[0] -split '_' | select -First 1 -Skip 1
    $version = $version.replace("v","")
    $url32 = 'https://github.com' + $url[0]
    $url64 = 'https://github.com' + $url[1]

    $Latest = @{ URL32 = $url32; URL64 = $url64; Version = $version }
    return $Latest
}

update -ChecksumFor none