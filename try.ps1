$uname_m = $env:UserName
$source = "C:\Users\$uname_m\Documents"
$destination = "c:\upl.zip"
Add-Type -assembly "system.io.compression.filesystem"
If(Test-path $destination) {Remove-item $destination}
Add-Type -assembly "system.io.compression.filesystem"
[io.compression.zipfile]::CreateFromDirectory($Source, $destination) 
