@echo off
chcp 65001 >nul
title Ứng Dụng Ôn Tập & Video Thí Nghiệm Hóa Học 8

echo =====================================================================
echo    ỨNG DỤNG ÔN TẬP VÀ VIDEO THÍ NGHIỆM HÓA HỌC 8 (KHTN 8)
echo =====================================================================
echo.
echo [*] Đang khởi động máy chủ Web nội bộ để khắc phục lỗi YouTube Error 153...
echo.

:: Mở trình duyệt sau khi máy chủ bắt đầu chạy
start "" http://localhost:8080

:: Kiểm tra Node.js trước
where node >nul 2>nul
if %errorlevel% equ 0 (
    echo [*] Đã phát hiện Node.js. Đang chạy server tại http://localhost:8080
    echo [*] Vui lòng KHÔNG đóng cửa sổ này trong khi học tập!
    echo.
    node "%~dp0server.js"
    goto end
)

:: Nếu không có Node.js, kiểm tra Python
where python >nul 2>nul
if %errorlevel% equ 0 (
    echo [*] Đã phát hiện Python. Đang phục vụ tại http://localhost:8080
    echo [*] Vui lòng KHÔNG đóng cửa sổ này trong khi học tập!
    echo.
    cd /d "%~dp0"
    python -m http.server 8080
    goto end
)

echo [!] Máy tính của bạn chưa cài sẵn Node.js hoặc Python.
echo [*] Đang mở tệp index.html trực tiếp...
echo [*] Lưu ý: Do YouTube chặn phát nhúng trên file://, bạn có thể bấm nút
echo     "Xem trên YouTube" bên dưới mỗi video để xem bình thường.
echo.
start "" "%~dp0index.html"

:end
pause
