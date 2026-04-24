$ErrorActionPreference = "Stop"

$qt_version = '5.15.2'

New-Item -Force -ItemType Directory -Path ".\deps\"

Write-Output 'Installing aqtinstall'
pip install aqtinstall --quiet
Write-Output 'Installed aqtinstall'

Write-Output 'Installing Qt'
$Env:QT_BASE_DIR = ".\deps\Qt"
python -m aqt install-qt windows desktop $qt_version win64_msvc2019_64 -O ".\deps\Qt\Qt$qt_version"
Write-Output 'Installed Qt'
