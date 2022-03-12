Repro project for intermittent build error when analysing with Sonar analyzers
------------------------------------------------------------------------------

See community thread: https://community.sonarsource.com/t/timespan-is-an-ambiguous-reference-between-system-timespan-and-system-timespan/59245/4

NOTE: see the "logs" folder for MSBuild binary logs for failing and non-failing builds.


Repro:
* run a Sonar scanner analysis repeatedly, pushing the results to SonarCloud.
See the docs for more info: https://docs.sonarqube.org/latest/analysis/scan/sonarscanner-for-msbuild/
The scripts below give an idea how to script this.

Expected: analysis is successfully.

Actual: build fails intermittently with "ambiguous reference" errors e.g.
       (CoreCompile target) ->
         d:\support\S4MSB\AmbiguousTypesNet6\Class2.cs(13,32): error CS0104: 'TimeSpan' is an ambiguous reference between 'System.TimeSpan' and 'System.TimeSpan' [d:\support\S4MSB\AmbiguousTypesNet6\AmbiguousTypesNet6.csproj]
         d:\support\S4MSB\AmbiguousTypesNet6\Entities.cs(14,16): error CS0104: 'DateTime' is an ambiguous reference between 'System.DateTime' and 'System.DateTime' [d:\support\S4MSB\AmbiguousTypesNet6\AmbiguousTypesNet6.csproj]
         d:\support\S4MSB\AmbiguousTypesNet6\Entities.cs(19,16): error CS0104: 'DateTime' is an ambiguous reference between 'System.DateTime' and 'System.DateTime' [d:\support\S4MSB\AmbiguousTypesNet6\AmbiguousTypesNet6.csproj]

About 20% of the builds are failing.


Note on scripts:
----------------
The scripts below have hard-coded paths and account details which would need to be tweaked.
I repro-ed the issue locally by repeatedly running netfxSCAnalyze.bat".

* netfxSCAnalyze.bat : analyses using the NetFX version for the SonarScanner for MSBuild.
* coreSCAnalyze.bat: analyses using the dotnet version of the scanner.



