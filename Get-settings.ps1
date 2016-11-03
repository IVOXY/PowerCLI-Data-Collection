

#Quick and dirty script to get cluster settings from a vCenter server that RVTools misses

$viserver = "seadc1vc01.ldthost.pvt"

#modify this line!!!
Connect-VIServer -server $viserver

get-cluster | format-list -property * |  out-file -FilePath "C:\git\PowerCLI-Data-Collection\results.txt"

Get-AdvancedSetting -Entity $viserver  | format-wide -property Id |  out-file -Append -FilePath "C:\git\PowerCLI-Data-Collection\results.txt"


Disconnect-VIServer