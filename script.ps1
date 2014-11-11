$Urls = Import-Csv -Delimiter "," -Path ".\urls.csv"  
foreach ($Url in $Urls)  
{  
    $Symbol= $Url.symbol
    $Url1= $Url.url 
	$Id = $Url.id
    imacros -macro CommandLine.iim -var_url $Url1 -var_symbol $Symbol -var_id $Id
}