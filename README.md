# Ôn Tập & Video Thí Nghiệm Thực Hành Hóa Học 8 (KHTN 8 - Kết Nối Tri Thức)

Ứng dụng web tương tác hỗ trợ ôn tập lý thuyết, trắc nghiệm, bài tập tự luận và hệ thống video thí nghiệm thực hành YouTube chuẩn SGK cho chương trình Khoa học tự nhiên 8 (Phân môn Hóa học - Bài 2 đến Bài 12, Bộ sách Kết Nối Tri Thức Với Cuộc Sống).

---

## 🚀 Tính năng nổi bật

- **Lý thuyết trọng tâm & Ảnh SGK sắc nét**: Tóm tắt kiến thức cốt lõi và tích hợp đầy đủ trang sách giáo khoa minh họa.
- **Hệ thống Video Thí nghiệm YouTube chuẩn SGK (11 Bài)**: Tích hợp và nhúng video thí nghiệm thực tế độ chính xác cao từ YouTube, đầy đủ dụng cụ, hóa chất, các bước tiến hành, hiện tượng quan sát và phương trình hóa học.
- **Hệ thống trắc nghiệm & Tính điểm**: 110+ câu hỏi trắc nghiệm và bài tập điền khuyết thông minh, giải thích đáp án chi tiết.
- **Công cụ tương tác & Bảng tính tan**: Máy tính số mol, khối lượng, nồng độ dung dịch, thang đo pH và bảng tính tan tương tác.
- **Công thức & Phương trình chuẩn hóa**: Hiển thị phương trình hóa học và công thức toán học sắc nét với KaTeX.
- **Giao diện hiện đại & Thân thiện**: Tối ưu hiển thị trên cả máy tính, máy tính bảng và điện thoại (Tailwind CSS, Lucide Icons).

---

## 📺 Khắc phục lỗi YouTube "Video player configuration error - Error 153"

### Nguyên nhân:
Chính sách bảo mật của YouTube yêu cầu mọi video nhúng (iframe) phải có **HTTP Referrer / Origin hợp lệ** từ máy chủ web. Khi mở tệp HTML trực tiếp (đường dẫn `file:///...`), trình duyệt không gửi thông tin này khiến YouTube từ chối phát và hiển thị **Error 153**.

### Giải pháp:

#### 1. Cách 1 (Khuyên dùng - 1 Click trên Windows):
- Nhấp đúp chuột vào tệp **`CHAY-UNG-DUNG.bat`** trong thư mục dự án.
- Tệp sẽ tự động kích hoạt máy chủ nội bộ và mở trình duyệt tại: `http://localhost:8080`.
- Toàn bộ 11 video thí nghiệm của Bài 2 đến Bài 12 sẽ phát trực tiếp trong ứng dụng mà **không bao giờ bị lỗi Error 153**.

#### 2. Cách 2 (Chạy lệnh qua Terminal / Command Prompt):
```bash
# Lựa chọn 1: Dùng Python
python -m http.server 8080

# Lựa chọn 2: Dùng Node.js
node server.js
```
Sau đó truy cập: `http://localhost:8080`

#### 3. Cách 3 (Xem trực tiếp trên YouTube):
- Dưới mỗi video đều có nút đỏ **"Xem trực tiếp trên YouTube ↗"** giúp bạn mở và xem ngay video thí nghiệm chất lượng cao.

---

## 🛠️ Hướng dẫn triển khai lên Vercel

1. Đăng nhập vào [Vercel](https://vercel.com).
2. Chọn **"Add New..."** > **"Project"**.
3. Kết nối với tài khoản GitHub và chọn kho lưu trữ `on-tap-hoa-8`.
4. Tại phần **Framework Preset**, chọn **Other** (hoặc để mặc định). Tệp `vercel.json` đã được cấu hình sẵn `Referrer-Policy: strict-origin-when-cross-origin`.
5. Nhấn **Deploy** để hoàn tất triển khai.
