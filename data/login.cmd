@echo off
set /p id=ID:
set /p pw=PassWord:
for /f "tokens=1-4 delims=," %%i in (data\member.txt) do (
	if %id%==%%i (
		if %pw%==%%j (
			set level=%%k
			set money=%%l
			goto :success
		)
	)
)
echo �α��ν���
start.cmd

:success
echo �α��� ����
data\menu.cmd %id% %pw% %level% %money%