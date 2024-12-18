 # Flutter clean 실행
flutter clean

# lib 디렉토리로 이동
Set-Location lib

# 현재 날짜와 시간으로 파일명 생성 (예: main_20240319_143022.dart)
$timestamp = Get-Date -Format "yyyyMMdd_HHmmss"
Rename-Item -Path "main.dart" -NewName "main_$timestamp.dart"

# 새로운 main.dart 파일 생성
New-Item -Path "main.dart" -ItemType File

# 상위 디렉토리로 이동
Set-Location ..

# 완료 메시지 출력
Write-Host " "
Write-Host " "
Write-Host "      작업을 성공적으로 완료하였습니다."