@echo off
echo 안녕하세요. %1님! 당신의 레벨은 %3, 소지금은 %4 입니다.
:start
echo 8:로그아웃 9:회원탈퇴 0:종료
set /p select=선택:

if %select%==8 echo 정상적으로 로그아웃 되었습니다. & start.cmd

if %select%==9 data\unregister.cmd %1 %2 %3 %4

if %select%==0 exit

echo 없는 선택입니다.
goto :start