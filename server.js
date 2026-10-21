// Server tĩnh nội bộ (Local Server) cho Ứng dụng Ôn tập & Video Thí nghiệm Hóa học 8
// Giúp trình duyệt cung cấp HTTP Referer & Origin chuẩn xác, khắc phục 100% lỗi YouTube Error 153

const http = require('http');
const fs = require('fs');
const path = require('path');

const PORT = process.env.PORT || 8080;

const MIME_TYPES = {
  '.html': 'text/html; charset=utf-8',
  '.js': 'text/javascript; charset=utf-8',
  '.css': 'text/css; charset=utf-8',
  '.json': 'application/json; charset=utf-8',
  '.png': 'image/png',
  '.jpg': 'image/jpeg',
  '.jpeg': 'image/jpeg',
  '.gif': 'image/gif',
  '.svg': 'image/svg+xml',
  '.ico': 'image/x-icon'
};

const server = http.createServer((req, res) => {
  let reqPath = decodeURI(req.url.split('?')[0]);
  if (reqPath === '/' || reqPath === '') {
    reqPath = '/index.html';
  }

  const filePath = path.join(__dirname, reqPath);

  // Đảm bảo YouTube Embed nhận diện được origin hợp lệ
  res.setHeader('Referrer-Policy', 'strict-origin-when-cross-origin');
  res.setHeader('Access-Control-Allow-Origin', '*');

  fs.stat(filePath, (err, stats) => {
    if (err || !stats.isFile()) {
      res.writeHead(404, { 'Content-Type': 'text/plain; charset=utf-8' });
      res.end('404 - Không tìm thấy tệp yêu cầu: ' + reqPath);
      return;
    }

    const ext = path.extname(filePath).toLowerCase();
    const contentType = MIME_TYPES[ext] || 'application/octet-stream';

    res.writeHead(200, { 'Content-Type': contentType });
    const stream = fs.createReadStream(filePath);
    stream.pipe(res);
  });
});

server.listen(PORT, () => {
  console.log('================================================================');
  console.log('  UNG DUNG ON TAP & VIDEO THI NGHIEM HOA HOC 8 - KHTN 8');
  console.log('================================================================');
  console.log(`[*] May chu Web noi bo dang hoat dong tai: http://localhost:${PORT}`);
  console.log('[*] Truy cap tren trinh duyet: http://localhost:' + PORT);
  console.log('[*] Nhan Ctrl + C de dung may chu.');
  console.log('================================================================');
});
