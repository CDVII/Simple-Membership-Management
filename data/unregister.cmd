@echo off
for /f "tokens=1-4 delims=," %%i in (data\member.txt) do (
	if %1==%%i (echo ���̵� �����Ǿ����ϴ�.
	)else (echo %%i,%%j,%%k,%%l >> data\temp.txt)
)
del data\member.txt
ren data\temp.txt member.txt
start.cmd