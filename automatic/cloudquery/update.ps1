import-module au

$releases_latest = 'https://github.com/cloudquery/cloudquery/releases?q=cli-&expanded=true'
$releases = 'https://github.com/cloudquery/cloudquery/releases/'

function global:au_SearchReplace {
    @{
        "tools\VERIFICATION.txt" = @{
            "(?i)(x64:).*"                 = "`${1} $($Latest.URL64)"
            "(?i)(checksum64:).*"          = "`${1} $($Latest.Checksum64)"
        }
     }
}

function global:au_BeforeUpdate() {
    Get-RemoteFiles -Purge -NoSuffix -FileNameBase 'cloudquery'
}

function global:au_GetLatest {
    $releases_page = Invoke-WebRequest -Uri $releases_latest -UseBasicParsing

    # cloudquery_windows_amd64.exe
    $re_version = "/cloudquery/cloudquery/tree/cli-v.+"
    $re64  = "cloudquery_windows_amd64.exe"

    $latest_version = $releases_page.Links | Where-Object href -match $re_version | Select-Object -First 1 -expand href

    $latest_version = $latest_version -split '/' | select -First 1 -Skip 4

    $download_page = Invoke-WebRequest -Uri "$($releases)expanded_assets/$($latest_version)" -UseBasicParsing

    $url64 = $download_page.links | ? href -match $re64 | select -First 1 -expand href

    $version = $url64 -split '/' | select -Last 1 -Skip 1
    $version = $version.replace("cli-v","")

    $url64 = 'https://github.com' + $url64

    $Latest = @{ URL64 = $url64; Version = $version }
    return $Latest
}

update
