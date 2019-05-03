::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:::                                                    :::
:::           This Tool has coded by Barish            :::
:::                 GSMTURKEY.NET                      :::
:::                                                    :::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
@echo off
:START
chcp 857 
cls
title FastBoot Rom Yukleyici Acik Kaynak Kodlu Proje [TR]
cd "%~dp0"
if exist "%~dp0\bin" SET PATH=%PATH%;"%~dp0\bin"
::------------------------------------------------------------------------------------------------------------------
::Colors
set "[LGREEN]=\033[92m"
set "[LCYAN]=\033[96m"
set "[LRED]=\033[91m"
set "[LMAGENTA]=\033[95m"
set "[LYELLOW]=\033[93m"
set "[WHITE]=\033[0m"
::------------------------------------------------------------------------------------------------------------------
:MAIN_TR
chcp 857 
cls
echo( 
echo ******************************************************************
echo *  %[LRED]%                           TR Editions                      %[WHITE]%  * | cmdcolor
echo *            %[LYELLOW]%FastBoot Rom Yukleyici Acik Kaynak Kodlu Proje%[WHITE]%      * | cmdcolor
echo ****************************************************************** 
echo %[LRED]%  __________________   ________________________     %[WHITE]% | cmdcolor
echo %[LRED]%  [__)[__][__) ! (__   !\/! !   _/ [__)[__]!_/ !    ! %[WHITE]% | cmdcolor
echo %[LRED]%  [__)!  !!  \_!____)  !  !_!__/___!  \!  !!  \!__  ! %[WHITE]% | cmdcolor
echo.
echo %[LGREEN]%Acik Kaynak Kodlu Diger Projeler : www.github.com/barismizrakli%[WHITE]% | cmdcolor
echo(
echo  TURKCE VERSIYON
echo(	

echo  %[LYELLOW]%1. FULL ROM KURULUMU%[LRED]%%[WHITE]% | cmdcolor 

echo  %[LRED]%2. PARTITION TEMIZLIGI%[LRED]%%[WHITE]% | cmdcolor 


echo ******************************************************************
echo                          %[LCYAN]%github.com/barismizrakli%[WHITE]%                     | cmdcolor
echo   %[LRED]%                            BARIS MIZRAKLI                   %[WHITE]%   | cmdcolor
set /p option=[1-2] Arasinda Secim Yapiniz: || set option="0"
if /I %option%==1 goto installer
if /I %option%==2 goto erase


goto MAIN_TR
:installer
@echo off
cls
echo  %[LMAGENTA]%FULL ROM%[LRED]%| cmdcolor
echo  %[LCYAN]%Yuklemek icin bir tus'a basmaniz bekleniyor...%[LRED]%%[WHITE]% | cmdcolor 
pause
echo Aboot Flashlaniyor.
fastboot flash aboot aboot.img
echo Bazi Dosyalar Flashlaniyor.
fastboot flash abootbak abootbak
echo Bir Kac Dosya Daha Flashlaniyor.

fastboot flash apdp apdp
echo Boot Flashlaniyor.
fastboot flash boot boot.img
echo Cache Flashlaniyor.
fastboot flash cache cache.img
echo Bir Kac Dosya Daha Flashlaniyor.
fastboot flash cmnlib cmnlib
echo Bir Kac Dosya Daha Flashlaniyor.

fastboot flash cmnlib64 cmnlib64

echo Bir Kac Dosya Daha Flashlaniyor.
fastboot flash cmnlib64bak cmnlib64bak
echo Bir Kac Dosya Daha Flashlaniyor.

fastboot flash cmnlibbak cmnlibbak
echo Bir Kac Dosya Daha Flashlaniyor.

fastboot flash config config
echo Bir Kac Dosya Daha Flashlaniyor.

fastboot flash ddr ddr
echo Bir Kac Dosya Daha Flashlaniyor.

echo Bir Kac Dosya Daha Flashlaniyor.

fastboot flash devcfg devcfg
echo Bir Kac Dosya Daha Flashlaniyor.



fastboot flash devinfo devinfo
echo Bir Kac Dosya Daha Flashlaniyor.

fastboot flash dip dip
echo Bir Kac Dosya Daha Flashlaniyor.

fastboot flash dpo dpo
echo Bir Kac Dosya Daha Flashlaniyor.

fastboot flash dsp dsp
echo Bir Kac Dosya Daha Flashlaniyor.

fastboot flash fsc fsc
echo Bir Kac Dosya Daha Flashlaniyor.

fastboot flash fsg fsg
echo Bir Kac Dosya Daha Flashlaniyor.

fastboot flash keymaster keymaster
echo Bir Kac Dosya Daha Flashlaniyor.

fastboot flash keymasterbak keymasterbak
echo Bir Kac Dosya Daha Flashlaniyor.

fastboot flash keystore keystore
echo Bir Kac Dosya Daha Flashlaniyor.

fastboot flash limits limits
echo Bir Kac Dosya Daha Flashlaniyor.

fastboot flash mcfg mcfg
echo Bir Kac Dosya Daha Flashlaniyor.

fastboot flash mdtp mdtp
echo Bir Kac Dosya Daha Flashlaniyor.

fastboot flash misc misc
echo Modemler Flashlaniyor.
fastboot flash modem modem
fastboot flash modemst1 modemst1
fastboot flash modemst2 modemst2
echo Bir Kac Dosya Daha Flashlaniyor.

fastboot flash mota mota
fastboot flash msadp msadp
echo Bir Kac Dosya Daha Flashlaniyor.

echo OEM Flashlaniyor.
fastboot flash oem oem
echo Persist Flashlaniyor.
fastboot flash persist persist.img
echo Recovery Flashlaniyor.
fastboot flash recovery recovery.img
echo Bir Kac Dosya Daha Flashlaniyor.

fastboot flash rpm rpm
echo Bir Kac Dosya Daha Flashlaniyor.

fastboot flash rpmbak rpmbak
echo Bir Kac Dosya Daha Flashlaniyor.

fastboot flash sbl1 sbl1
echo Bir Kac Dosya Daha Flashlaniyor.

fastboot flash sbl1bak sbl1bak
echo Bir Kac Dosya Daha Flashlaniyor.

fastboot flash sec sec
echo Logo Flashlaniyor...

fastboot flash splash splash
fastboot flash ssd ssd
fastboot flash syscfg syscfg
echo System Flashlaniyor.
fastboot flash system system.img
echo Bir Kac Dosya Daha Flashlaniyor.

fastboot flash tz tz
fastboot flash tzbak tzbak
echo %[LRED]%Islev Tamamlandi.%[WHITE]% | cmdcolor
pause
goto MAIN_TR
:erase
@echo off
cls
echo  %[LMAGENTA]%FULL ERASE%[LRED]%| cmdcolor
echo  %[LCYAN]%ERASE icin bir tus'a basmaniz bekleniyor...%[LRED]%%[WHITE]% | cmdcolor 
pause
fastboot erase aboot
fastboot erase abootbak
fastboot erase apdp
fastboot erase boot
fastboot erase cache
fastboot erase cmnlib
fastboot erase cmnlib64
fastboot erase cmnlib64bak
fastboot erase cmnlibbak
fastboot erase config
fastboot erase ddr
fastboot erase devcfg
fastboot erase devinfo
fastboot erase dip
fastboot erase dpo
fastboot erase dsp
fastboot erase fsc
fastboot erase fsg
fastboot erase keymaster
fastboot erase keymasterbak
fastboot erase keystore
fastboot erase limits
fastboot erase mcfg
fastboot erase mdtp
fastboot erase misc
fastboot erase modem
fastboot erase modemst1
fastboot erase modemst2
fastboot erase mota
fastboot erase msadp
fastboot erase oem
fastboot erase persist
fastboot erase recovery
fastboot erase rpm
fastboot erase rpmbak
fastboot erase sbl1
fastboot erase sbl1bak
fastboot erase sec
fastboot erase splash
fastboot erase ssd
fastboot erase syscfg
fastboot erase system
fastboot erase tz
fastboot erase tzbak
echo %[LRED]%Islemler Tamamlandi.%[WHITE]% | cmdcolor
pause
goto MAIN_TR





