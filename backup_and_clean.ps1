 # Flutter clean ����
flutter clean

# lib ���丮�� �̵�
Set-Location lib

# ���� ��¥�� �ð����� ���ϸ� ���� (��: main_20240319_143022.dart)
$timestamp = Get-Date -Format "yyyyMMdd_HHmmss"
Rename-Item -Path "main.dart" -NewName "main_$timestamp.dart"

# ���ο� main.dart ���� ����
New-Item -Path "main.dart" -ItemType File

# ���� ���丮�� �̵�
Set-Location ..

# �Ϸ� �޽��� ���
Write-Host " "
Write-Host " "
Write-Host "      �۾��� ���������� �Ϸ��Ͽ����ϴ�."