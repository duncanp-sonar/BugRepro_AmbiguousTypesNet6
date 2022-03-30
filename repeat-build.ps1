$i = 1
$failures = 0
for (;;$i++)
{
#	dotnet build-server shutdown

	dotnet build -t:rebuild --no-incremental /p:reportanalyzer=true /v:m -bl:build-$i.binlog
	if( !$? )
	{
		$failures++
	}
	
	$percentage = ($i-$failures)/$i*100

#	Add spacing to make the percentage easier to read when the script is running
	Write-Host
	Write-Host
	Write-Host "Build success rate: $percentage% ($failures/$i)"
	Write-Host 
	Write-Host
}