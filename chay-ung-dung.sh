#!/usr/bin/env bash
# Script khởi chạy ứng dụng Ôn tập Hóa học 8 trên macOS và Linux

PORT=8080
echo "================================================================="
echo "   ỨNG DỤNG ÔN TẬP VÀ VIDEO THÍ NGHIỆM HÓA HỌC 8"
echo "================================================================="
echo "[*] Đang khởi động máy chủ Web nội bộ..."
echo "[*] Truy cập tại: http://localhost:${PORT}"
echo ""

# Tự động mở trình duyệt tương ứng trên macOS hoặc Linux
if [[ "$OSTYPE" == "darwin"* ]]; then
    sleep 1 && open "http://localhost:${PORT}" &
elif which xdg-open > /dev/null; then
    sleep 1 && xdg-open "http://localhost:${PORT}" &
fi

# Chạy server bằng Node.js nếu có, hoặc Python 3
if which node > /dev/null 2>&1; then
    echo "[*] Chạy bằng Node.js..."
    node server.js
elif which python3 > /dev/null 2>&1; then
    echo "[*] Chạy bằng Python 3..."
    python3 -m http.server ${PORT}
elif which python > /dev/null 2>&1; then
    echo "[*] Chạy bằng Python..."
    python -m http.server ${PORT}
else
    echo "[!] Không tìm thấy Node.js hoặc Python. Vui lòng mở tệp index.html trong trình duyệt."
fi
