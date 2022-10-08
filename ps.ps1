Write-Host "Program Initiated"                                     <# GUI Status Indication Output #>
Write-Host "Disabling Network Interface ""Ethernet"""              <# GUI Status Indication Output #>
netsh interface set interface " YourEthernetName" disable          <# Disable Network Adapter “YourEthernetName” #>
Write-Host """ YourEthernetName"" Disabled"                        <# GUI Status Indication Output #>
Write-Host "Restarting dot3svc in 5..."                            <# GUI Status Indication Output #>
# Begin 5 Second Timer
$i = 1
for(;$i -le 5;$i++)
{
    $value = 6-$i 
	Write-Host $value
    Start-Sleep -s 1
}
# End 5 Second Timer
Restart-Service dot3svc                                           <# Restart Wired AutoConfig (dot3svc) Service #>
Write-Host "dot3svc Restarted"                                    <# GUI Status Indication Output #>
Write-Host "Restarting ""YourEthernetName"" in..."                <# GUI Status Indication Output #>
# Begin 3 Second Timer
$i = 1
for(;$i -le 3;$i++)
{
    $value = 4-$i 
	Write-Host $value
    Start-Sleep -s 1
}
# End 5 Second Timer
netsh interface set interface "YourEthernetName" enable           <# Enable Network Adapter “YourEthernetName” #>
Write-Host """YourEthernetName"" Restarted"                       <# GUI Status Indication Output #> 
