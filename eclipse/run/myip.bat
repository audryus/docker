@echo off
set ip_address_string="IPv4"
set gateway_string="Gateway"
for /f "usebackq tokens=2 delims=:" %%f in (`ipconfig ^| findstr /c:%gateway_string%`) do (
	if ["%%f"] NEQ [" "] (
		set var=%%f
		set "gateway=%var:~1,10%"
	)
)
for /f "usebackq tokens=2 delims=:" %%f in (`ipconfig ^| findstr /c:%ip_address_string%`) do call :Foo %%f 

:Foo
	set tmp=%1
	set "ipaddr=%tmp:~0,10%"
	if ["%ipaddr%"] EQU ["%gateway%"] (
		set myIp=%1
		goto :End
	)

:End
