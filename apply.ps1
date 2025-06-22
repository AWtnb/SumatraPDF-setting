$dest = $env:USERPROFILE | Join-Path -ChildPath "AppData\Local\SumatraPDF"
if (Test-Path $dest -PathType Container) {
    $PSScriptRoot | Join-Path -ChildPath "SumatraPDF-settings.txt" | Get-Item | Copy-Item -Destination $dest
    "Copied setting file to '{0}'" -f $dest | Write-Host -ForegroundColor Cyan
}
else {
    "'{0}' not found!" -f $dest | Write-Host -ForegroundColor Magenta
}
