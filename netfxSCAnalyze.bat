cls

D:\tools\scanner\5.5.3\net46\SonarScanner.MSBuild.exe begin /k:dp_incidents_ambig1 /d:sonar.login=%SC% /o:duncanp-sonar-test /d:sonar.host.url=https://sonarcloud.io

dotnet build -t:rebuild -bl -p:configuration=release -v:normal

::dotnet D:\tools\scanner\5.5.3\net5.0\SonarScanner.MSBuild.dll end /d:sonar.login=%SC%
