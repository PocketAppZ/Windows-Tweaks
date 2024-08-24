# Define URLs and paths
$userJsUrl = "https://raw.githubusercontent.com/yokoffing/Betterfox/main/user.js"
$ublockXpiUrl = "https://github.com/gorhill/uBlock/releases/download/1.59.0/uBlock0_1.59.0.firefox.signed.xpi"
$downloadFolder = [System.IO.Path]::GetTempPath()
$ublockXpiPath = Join-Path -Path $downloadFolder -ChildPath "ublock_origin.xpi"
$firefoxExePath = "C:\Program Files\Mozilla Firefox\firefox.exe"

# Function to download the user.js file
function Download-UserJsFile {
    param (
        [string]$url,
        [string]$outputPath
    )
    try {
        Write-Host "Downloading user.js..."
        Invoke-WebRequest -Uri $url -OutFile $outputPath
        Write-Host "Downloaded user.js to $outputPath."
    } catch {
        Write-Host "Failed to download user.js: $_"
        exit 1
    }
}

# Function to find the Firefox profile directory
function Get-FirefoxProfilePath {
    $profilesPath = "$env:APPDATA\Mozilla\Firefox\Profiles\"
    $profileFolder = Get-ChildItem -Path $profilesPath | Where-Object { $_.PSIsContainer } | Select-Object -First 1
    return $profileFolder.FullName
}

# Function to download the uBlock Origin XPI file
function Download-XPIFile {
    param (
        [string]$url,
        [string]$outputPath
    )
    try {
        Write-Host "Downloading uBlock Origin..."
        Invoke-WebRequest -Uri $url -OutFile $outputPath
        Write-Host "Downloaded uBlock Origin to $outputPath."
    } catch {
        Write-Host "Failed to download uBlock Origin: $_"
        exit 1
    }
}

# Function to open Firefox with the XPI file for manual installation
function Open-FirefoxForManualInstall {
    param (
        [string]$firefoxPath,
        [string]$xpiPath
    )
    try {
        Write-Host "Opening Firefox for manual installation of uBlock Origin..."
        Start-Process -FilePath $firefoxPath -ArgumentList "--new-tab `"$xpiPath`""
        Write-Host "Firefox opened for manual installation."
    } catch {
        Write-Host "Failed to open Firefox: $_"
        exit 1
    }
}

# Function to close Firefox if it is running
function Close-FirefoxIfRunning {
    Write-Host "Checking if Firefox is running..."
    $firefoxProcess = Get-Process -Name firefox -ErrorAction SilentlyContinue
    if ($firefoxProcess) {
        Write-Host "Firefox is running. Closing it..."
        $firefoxProcess | Stop-Process -Force
        Start-Sleep -Seconds 5  # Wait a few seconds to ensure Firefox has fully closed
        Write-Host "Firefox closed."
    } else {
        Write-Host "Firefox is not running."
    }
}

# Check if Firefox is installed
$firefoxInstalled = Test-Path $firefoxExePath

if (-not $firefoxInstalled) {
    Write-Host "Firefox is not installed."
    # Open Firefox download page
    Start-Process "https://www.mozilla.org/en-US/firefox/all/#product-desktop-release"
} else {
    Write-Host "Firefox is installed."

    # Close Firefox if it's running
    Close-FirefoxIfRunning

    # Find the Firefox profile directory
    $profilePath = Get-FirefoxProfilePath

    if ($profilePath) {
        # Download the user.js file and put it in the profile folder
        $userJsPath = Join-Path -Path $profilePath -ChildPath "user.js"
        Download-UserJsFile -url $userJsUrl -outputPath $userJsPath

        Write-Host "The user.js file was downloaded and saved in the profile folder."

        # Download the uBlock Origin XPI file
        Download-XPIFile -url $ublockXpiUrl -outputPath $ublockXpiPath

        # XPI file manual installation
        Open-FirefoxForManualInstall -firefoxPath $firefoxExePath -xpiPath $ublockXpiPath
    } else {
        Write-Host "Firefox profile folder not found."
    }
}

# Wait for any key press before closing
Write-Host "Press any key to close the window..."
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
