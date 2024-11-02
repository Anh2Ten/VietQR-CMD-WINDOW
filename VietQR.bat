@echo off
setlocal enabledelayedexpansion

set "banks=VietinBank Vietcombank BIDV Agribank OCB MBBank Techcombank ACB VPBank TPBank Sacombank HDBank VietCapitalBank SCB VIB SHB Eximbank MSB CAKE Ubank Timo ViettelMoney VNPTMoney SaigonBank BacABank PVcomBank Oceanbank NCB ShinhanBank ABBANK VietABank NamABank PGBank VietBank BaoVietBank SeABank COOPBANK LienVietPostBank KienLongBank KBank KookminHN KEBHanaHCM KEBHANAHN MAFC Citibank KookminHCM VBSP Woori VRB UnitedOverseas StandardChartered PublicBank Nonghyup IndovinaBank IBKHCM IBKHN HSBC HongLeong GPBank DongABank DBSBank CIMB CBBank"

:START
cls
echo ==============================
echo        Thanh Toan QRPay      
echo ==============================

set /p account="Nhap so tai khoan ngan hang (bat buoc): "
if "!account!"=="" (
    echo So tai khoan khong duoc de trong! Xin vui long nhap lai.
    pause
    goto START
)

set /p amount="Nhap so tien can thanh toan (khong bat buoc): "
set /p info="Nhap thong tin bo sung (hoac mo ta): "
 
echo.
echo ==============================
echo        Danh Sach Ngan Hang
echo ==============================
for %%b in (%banks%) do (
    echo %%b
)

set /p bank="Nhap ten ngan hang (bat buoc): "
if "!bank!"=="" (
    echo Ten ngan hang khong duoc de trong! Xin vui long nhap lai.
    pause
    goto START
)

set "validBank=0"
for %%b in (%banks%) do (
    if /i "!bank!"=="%%b" (
        set "validBank=1"
    )
)

if !validBank! EQU 0 (
    echo Ngan hang khong hop le! Xin vui long chon ngan hang tu danh sach.
    pause
    goto START
)

cls
echo.
echo ============================== 
 
set "qrCodeUrl=https://api.quanlybanhang.store/qrpay/?account=!account!&amount=!amount!&info=!info!&bank=!bank!"
for /f "delims=" %%i in ('curl -s "!qrCodeUrl!"') do set "qrResult=%%i"

curl -s https://qrenco.de/!qrResult!

echo.
echo     QR Thanh Toan
echo ==============================
echo !qrResult!
set /p runAgain="Ban co muon chay lai khong? (y/n): "
if /i "!runAgain!"=="y" (
    goto START
) else (
    echo Cam on ban da su dung!
    exit /b
)
