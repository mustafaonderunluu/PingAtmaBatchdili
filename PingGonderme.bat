@echo off
cls
color 0b
setlocal enabledelayedexpansion

set /a sayac=0

:parola
set /p pass= Lutfen Parolayi Giriniz: 
if "%pass%"=="1881" (goto true) else (goto false)

:false
cls 
color 0c
mode con cols=50 lines=10
echo Parola Yanlis !!
set /a sayac+=1
set /a Kalan=3-%sayac%
if %sayac%==3 goto Cikis
echo %Kalan% Deneme Hakkiniz Kaldi !!
goto parola

:true
cls 
color 0a
echo Giris Basarili. Hosgeldiniz. 
pause
echo Silinen Veriler Yok Ediliyor...
ping 1.1.1.1
msg * Tamamlandi
exit

:Cikis
cls 
color 0c
mode con cols=50 lines=10
echo Cikis Yapiliyor
msg * Kilitlendi
exit
