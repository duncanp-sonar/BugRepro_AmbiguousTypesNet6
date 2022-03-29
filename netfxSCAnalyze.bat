cls

D:\tools\scanner\5.5.3\net46\SonarScanner.MSBuild.exe begin /k:dp_incidents_ambig1 /d:sonar.login=%SC% /o:duncanp-sonar-test /d:sonar.host.url=https://sonarcloud.io

msbuild.exe -t:rebuild -bl -p:configuration=release -v:normal -nr:false

::D:\tools\scanner\5.5.3\net46\SonarScanner.MSBuild.exe end /d:sonar.login=%SC%
