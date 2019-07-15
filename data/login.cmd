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

echo 로그인 실패
start.cmd

:success
echo 로그인 성공
data\menu.cmd %id% %pw% %level% %money%