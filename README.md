# Ôn Tập & Video Thí Nghiệm Thực Hành Hóa Học 8

Ứng dụng web tương tác hỗ trợ ôn tập lý thuyết, trắc nghiệm, bài tập tự luận và hệ thống video thí nghiệm thực hành YouTube chuẩn SGK cho chương trình Khoa học tự nhiên 8 (Phân môn Hóa học - Bài 2 đến Bài 12).

---

## 📱 Hỗ trợ đa nền tảng (Android, iOS, macOS, Windows Laptop)

Ứng dụng được xây dựng theo chuẩn **Progressive Web App (PWA)** và Responsive UI hoàn chỉnh, chạy mượt mà trên mọi thiết bị:

### 1. Trên Điện thoại Android (Samsung, Xiaomi, Oppo, v.v.):
- Mở link ứng dụng (hoặc địa chỉ IP mạng nội bộ) bằng **Google Chrome** hoặc **Samsung Internet**.
- Bấm vào biểu tượng menu (⋮) -> Chọn **"Cài đặt ứng dụng"** hoặc **"Thêm vào Màn hình chính"**.
- Ứng dụng sẽ xuất hiện như một App độc lập trên màn hình điện thoại với đầy đủ icon và mở toàn màn hình (không có thanh địa chỉ web).

### 2. Trên iPhone / iPad (iOS & iPadOS):
- Mở liên kết ứng dụng bằng trình duyệt **Safari**.
- Nhấn vào nút **Chia sẻ** (biểu tượng hình vuông có mũi tên hướng lên ở dưới cùng màn hình).
- Chọn **"Thêm vào MH chính"** (Add to Home Screen).
- Ứng dụng sẽ được cài đặt với icon huy hiệu tròn chính thức, tối ưu vùng tai thỏ / Dynamic Island và cho phép xem video trực tiếp mà không bị giật lag.

### 3. Trên Máy tính Mac (macOS - MacBook, iMac, Mac mini):
- Mở Terminal tại thư mục dự án và chạy:
  ```bash
  bash chay-ung-dung.sh
  # Hoặc dùng Node.js:
  node server.js
  ```
- Hoặc mở liên kết web trên Google Chrome / Safari -> Bấm biểu tượng Cài đặt trên thanh địa chỉ để cài đặt làm ứng dụng máy tính.

### 4. Trên Laptop / Máy tính Windows:
- Nhấp đúp chuột trực tiếp vào tệp **`CHAY-UNG-DUNG.bat`**.
- Ứng dụng sẽ tự động mở trên trình duyệt tại `http://localhost:8080`.

---

## 🚀 Tính năng nổi bật

- **Cổng đăng nhập học sinh**: Nhập Họ tên và Lớp, tự động lưu thông tin và hiển thị trên kết quả bài thi. Có nút đăng xuất tiện lợi.
- **Hệ thống 11 Video Thí nghiệm YouTube chuẩn SGK**: Bấm vào bất kỳ bài học nào để xem video thí nghiệm chất lượng cao trực tiếp.
- **Lý thuyết trọng tâm & Ảnh SGK sắc nét**: Tóm tắt kiến thức cốt lõi và 27 trang ảnh chụp bài học phóng to rõ nét.
- **110+ Bài tập tương tác & Thi thử bấm giờ**: Trắc nghiệm 4 lựa chọn, bài tập điền khuyết có chấm điểm và lời giải chi tiết từng bước.
- **Công cụ tương tác & Bảng tính tan**: Máy tính số mol, nồng độ dung dịch, thang đo pH và bảng tính tan thông minh.

---

## 🛠️ Triển khai lên Vercel (Truy cập từ mọi nơi)

1. Đăng nhập vào [Vercel](https://vercel.com).
2. Chọn **"Add New..."** > **"Project"**.
3. Kết nối với kho lưu trữ `on-tap-chuong1-chuong2-khtn8`.
4. Nhấn **Deploy**.
5. Gửi đường link `https://...vercel.app` cho học sinh, tất cả các thiết bị (Android, iOS, Mac, Laptop) đều vào học ngay lập tức!
