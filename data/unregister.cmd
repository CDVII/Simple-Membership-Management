@echo off
for /f "tokens=1-4 delims=," %%i in (data\member.txt) do (
	if %1==%%i (echo 아이디가 삭제되었습니다.
	)else (echo %%i,%%j,%%k,%%l >> data\temp.txt)
)
del data\member.txt
ren data\temp.txt member.txt
start.cmd