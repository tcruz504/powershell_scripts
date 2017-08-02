#***************************************************************
#* Author: Tomas											   *
#* Location: Metairie, LA									   *
#***************************************************************

$app = Get-WmiObject -Query "SELECT * FROM Win32_Product WHERE Name = 'Software Name'"

"****Done*****"

