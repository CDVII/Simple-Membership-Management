@echo off
:start
echo 1:로그인 2:회원가입 0:종료
set /p select=선택:

if %select%==1 data\login.cmd 

if %select%==2 data\register.cmd

if %select%==0 goto :EOF

echo 없는 선택입니다.
goto :start