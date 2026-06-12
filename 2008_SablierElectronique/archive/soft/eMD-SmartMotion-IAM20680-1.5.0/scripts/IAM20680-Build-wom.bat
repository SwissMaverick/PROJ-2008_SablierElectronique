"C:\Program Files (x86)\Atmel\Studio\7.0\AtmelStudio.exe" ..\EMD-Core\EMD-Core-IAM20680-wom.cproj /rebuild Release /out IAM20680-EMDCore-wom.txt
"C:\Program Files (x86)\Atmel\Studio\7.0\AtmelStudio.exe" ..\EMD-App\EMD-App-IAM20680-wom.cproj /rebuild Release /out IAM20680-EMDApp-wom.txt

mkdir ..\release\IAM20680

copy ..\EMD-App\Release\EMD-App-IAM20680-wom.bin ..\release\IAM20680
copy ..\EMD-App\Release\EMD-App-IAM20680-wom.elf ..\release\IAM20680