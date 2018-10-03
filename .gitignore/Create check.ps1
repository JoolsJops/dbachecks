$sqlInstances = "dev1", "dev2"
 
$checks = (Get-DbcCheck).UniqueTag
$checks.ForEach{
 
Invoke-DbcCheck -SqlInstance $sqlInstances -Checks $_ -PassThru -Show Fails | Update-DbcPowerBiDataSource -Environment "DEV" -Path "C:\windows\temp\dbachecks"
 
}
