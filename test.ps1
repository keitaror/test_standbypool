# IIS のインストール
Install-WindowsFeature -name Web-Server -IncludeManagementTools

# ホスト名を取得して index.html ファイルを作成
$hostname = $env:COMPUTERNAME
$htmlContent = "Hello, you are connected to $hostname"
New-Item -Path "C:\inetpub\wwwroot\index.html" -ItemType File -Force
Set-Content -Path "C:\inetpub\wwwroot\index.html" -Value $htmlContent