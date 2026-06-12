IF "%ATSTUDIO_HOME%"=="" set "ATSTUDIO_HOME=C:\Program Files (x86)\Atmel\Studio\7.0"

call "%ATSTUDIO_HOME%\AtmelStudio.exe" EMD-Core\EMD-Core-IAM20680-selftest.cproj /rebuild Release /out scripts\IAM20680-EMDCore-selftest.txt || exit /b 1
call "%ATSTUDIO_HOME%\AtmelStudio.exe" EMD-App\EMD-App-IAM20680-selftest.cproj /rebuild Release /out scripts\IAM20680-EMDApp-selftest.txt || exit /b 1

call "%ATSTUDIO_HOME%\AtmelStudio.exe" EMD-Core\EMD-Core-IAM20680-raw-ag.cproj /rebuild Release /out scripts\IAM20680-EMDCore-raw-ag.txt || exit /b 1
call "%ATSTUDIO_HOME%\AtmelStudio.exe" EMD-App\EMD-App-IAM20680-raw-ag.cproj /rebuild Release /out scripts\IAM20680-EMDApp-raw-ag.txt || exit /b 1

call "%ATSTUDIO_HOME%\AtmelStudio.exe" EMD-Core\EMD-Core-IAM20680-wom.cproj /rebuild Release /out scripts\IAM20680-EMDCore-wom.txt || exit /b 1
call "%ATSTUDIO_HOME%\AtmelStudio.exe" EMD-App\EMD-App-IAM20680-wom.cproj /rebuild Release /out scripts\IAM20680-EMDApp-wom.txt || exit /b 1

mkdir release\IAM20680

copy EMD-App\Release\EMD-App-IAM20680-selftest.bin release\IAM20680
copy EMD-App\Release\EMD-App-IAM20680-selftest.elf release\IAM20680

copy EMD-App\Release\EMD-App-IAM20680-raw-ag.bin release\IAM20680
copy EMD-App\Release\EMD-App-IAM20680-raw-ag.elf release\IAM20680

copy EMD-App\Release\EMD-App-IAM20680-wom.bin release\IAM20680
copy EMD-App\Release\EMD-App-IAM20680-wom.elf release\IAM20680


