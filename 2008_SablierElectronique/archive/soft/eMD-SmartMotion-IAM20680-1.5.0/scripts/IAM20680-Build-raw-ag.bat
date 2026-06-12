"C:\Program Files (x86)\Atmel\Studio\7.0\AtmelStudio.exe" ..\EMD-Core\EMD-Core-IAM20680-raw-ag.cproj /rebuild Release /out IAM20680-EMDCore-raw-ag.txt
"C:\Program Files (x86)\Atmel\Studio\7.0\AtmelStudio.exe" ..\EMD-App\EMD-App-IAM20680-raw-ag.cproj /rebuild Release /out IAM20680-EMDApp-raw-ag.txt

mkdir ..\release\IAM20680

copy ..\EMD-App\Release\EMD-App-IAM20680-raw-ag.bin ..\release\IAM20680
copy ..\EMD-App\Release\EMD-App-IAM20680-raw-ag.elf ..\release\IAM20680