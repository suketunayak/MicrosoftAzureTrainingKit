[string] $packageName = "d0464449-5b1d-400f-94f5-898e44186049"

$package = Get-AppxPackage -Name $packageName
if ($package)
{
    Remove-AppxPackage $package
}

regsvr32.exe /i:p /s AuthBroker.dll