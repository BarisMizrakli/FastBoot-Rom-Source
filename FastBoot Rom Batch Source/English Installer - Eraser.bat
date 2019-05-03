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
title FastBoot Rom Instals - Eraser [EN]
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
:MAIN_EN
chcp 857 
cls
echo( 
echo ******************************************************************
echo *  %[LRED]%                           EN Editions                      %[WHITE]%  * | cmdcolor
echo *                  %[LYELLOW]%FastBoot Rom Instals - Eraser [EN]%[WHITE]%            * | cmdcolor
echo ****************************************************************** 
echo %[LRED]%  __________________   ________________________     %[WHITE]% | cmdcolor
echo %[LRED]%  [__)[__][__) ! (__   !\/! !   _/ [__)[__]!_/ !    ! %[WHITE]% | cmdcolor
echo %[LRED]%  [__)!  !!  \_!____)  !  !_!__/___!  \!  !!  \!__  ! %[WHITE]% | cmdcolor
echo.
echo %[LGREEN]%Other Open Source Projects : www.github.com/barismizrakli%[WHITE]% | cmdcolor
echo(
echo  ENGLISH EDITIONS
echo(	

echo  %[LYELLOW]%1. FULL ROM INSTALL%[LRED]%%[WHITE]% | cmdcolor 

echo  %[LRED]%2. PARTITION ERASER%[LRED]%%[WHITE]% | cmdcolor 


echo ******************************************************************
echo                          %[LCYAN]%github.com/barismizrakli%[WHITE]%                     | cmdcolor
echo   %[LRED]%                            BARIS MIZRAKLI                   %[WHITE]%   | cmdcolor
set /p option=[1-2] Set Option: || set option="0"
if /I %option%==1 goto instals
if /I %option%==2 goto erase


goto MAIN_EN
:instals
@echo off
cls
echo  %[LMAGENTA]%FULL ROM%[LRED]%| cmdcolor
echo  %[LCYAN]%Yuklemek icin bir tus'a basmaniz bekleniyor...%[LRED]%%[WHITE]% | cmdcolor 
pause
echo Aboot Installing.
fastboot flash aboot aboot.img
echo Bazi Dosyalar Installing.
fastboot flash abootbak abootbak
echo A Litte Installing.

fastboot flash apdp apdp
echo Boot Installing.
fastboot flash boot boot.img
echo Cache Installing.
fastboot flash cache cache.img
echo A Litte Installing.
fastboot flash cmnlib cmnlib
echo A Litte Installing.

fastboot flash cmnlib64 cmnlib64

echo A Litte Installing.
fastboot flash cmnlib64bak cmnlib64bak
echo A Litte Installing.

fastboot flash cmnlibbak cmnlibbak
echo A Litte Installing.

fastboot flash config config
echo A Litte Installing.

fastboot flash ddr ddr
echo A Litte Installing.

echo A Litte Installing.

fastboot flash devcfg devcfg
echo A Litte Installing.



fastboot flash devinfo devinfo
echo A Litte Installing.

fastboot flash dip dip
echo A Litte Installing.

fastboot flash dpo dpo
echo A Litte Installing.

fastboot flash dsp dsp
echo A Litte Installing.

fastboot flash fsc fsc
echo A Litte Installing.

fastboot flash fsg fsg
echo A Litte Installing.

fastboot flash keymaster keymaster
echo A Litte Installing.

fastboot flash keymasterbak keymasterbak
echo A Litte Installing.

fastboot flash keystore keystore
echo A Litte Installing.

fastboot flash limits limits
echo A Litte Installing.

fastboot flash mcfg mcfg
echo A Litte Installing.

fastboot flash mdtp mdtp
echo A Litte Installing.

fastboot flash misc misc
echo Modems Installing.
fastboot flash modem modem
fastboot flash modemst1 modemst1
fastboot flash modemst2 modemst2
echo A Litte Installing.

fastboot flash mota mota
fastboot flash msadp msadp
echo A Litte Installing.

echo OEM Installing.
fastboot flash oem oem
echo Persist Installing.
fastboot flash persist persist.img
echo Recovery Installing.
fastboot flash recovery recovery.img
echo A Litte Installing.

fastboot flash rpm rpm
echo A Litte Installing.

fastboot flash rpmbak rpmbak
echo A Litte Installing.

fastboot flash sbl1 sbl1
echo A Litte Installing.

fastboot flash sbl1bak sbl1bak
echo A Litte Installing.

fastboot flash sec sec
echo Logo Installing...

fastboot flash splash splash
fastboot flash ssd ssd
fastboot flash syscfg syscfg
echo System Installing.
fastboot flash system system.img
echo A Litte Installing.

fastboot flash tz tz
fastboot flash tzbak tzbak
echo %[LRED]%Operatiıon Completed.%[WHITE]% | cmdcolor
pause
goto MAIN_EN
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
echo %[LRED]%Operatiıon Completed%[WHITE]% | cmdcolor
pause
goto MAIN_EN





