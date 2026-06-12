"C:\Program Files (x86)\Atmel\Studio\7.0\AtmelStudio.exe" ..\EMD-Core\EMD-Core-IAM20680-selftest.cproj /rebuild Release /out IAM20680-EMDCore-selftest.txt
"C:\Program Files (x86)\Atmel\Studio\7.0\AtmelStudio.exe" ..\EMD-App\EMD-App-IAM20680-selftest.cproj /rebuild Release /out IAM20680-EMDApp-selftest.txt

mkdir ..\release\IAM20680

copy ..\EMD-App\Release\EMD-App-IAM20680-selftest.bin ..\release\IAM20680
copy ..\EMD-App\Release\EMD-App-IAM20680-selftest.elf ..\release\IAM20680