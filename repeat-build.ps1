$i = 1
$failures = 0
for (;;$i++)
{
	dotnet build --no-incremental /p:reportanalyzer=true /v:m -bl:build-$i.binlog
	if( !$? )
	{
		$failures++
	}
	
	$percentage = ($i-$failures)/$i*100
	Write-Host "Build success rate: $percentage% ($failures/$i)"
}