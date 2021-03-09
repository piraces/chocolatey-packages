import-module au

$releases = 'https://github.com/Azure/bicep/releases'

function global:au_SearchReplace {
    @{
        "tools\VERIFICATION.txt" = @{
            "(?i)(x64:).*"                 = "`${1} $($Latest.URL64)"
            "(?i)(checksum64:).*"          = "`${1} $($Latest.Checksum64)"
        }
     }
}

function global:au_BeforeUpdate() {
    Get-RemoteFiles -Purge
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing

    # bicep-win-x64.exe
    $re  = "bicep-win-x64.exe"
    $url = $download_page.links | ? href -match $re | select -First 1 -expand href

    $version = $url -split '/' | select -Last 1 -Skip 1
    $version = $version.replace("v","")
    $url = 'https://github.com' + $url

    $Latest = @{ URL64 = $url; Version = $version }
    return $Latest
}

update
