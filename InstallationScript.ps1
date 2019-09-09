$servers = "", ""
$source = "\\sourcelocation\Software\PatchLink\PatchLink Agent v8_2_0_10 - 2015\8.2.0.10 ()\lmsetup_8.2.0.10x64.exe"
#$arguments = "/Install /S /SERVERIPADDRESS=192.168.10.223 /serial=A3038A2E-99122227"


Foreach ($server in $servers) {

Start $source  -ArgumentList 'INSTALL /S /HOST=192.168.10.223 /SERIAL=A3038A2E-99122227' -Wait
}
