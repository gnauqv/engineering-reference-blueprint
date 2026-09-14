<!--
MỤC ĐÍCH FILE:

- Form mẫu xuất hiện tự động khi tạo Pull Request trên GitHub.
- Giúp người tạo PR mô tả thay đổi và tự kiểm tra trước khi review.
- Giữ quy trình Pull Request đơn giản nhưng đủ thông tin cần thiết.
-->

## 📌 Tóm tắt thay đổi (Summary)

<!--
Mô tả ngắn gọn:
- Bạn thay đổi những gì?
- Vì sao cần thay đổi?

Ví dụ:
- Thêm API đăng nhập bằng Google OAuth.
- Sửa lỗi validation form đăng ký.
-->

## 🏷️ Loại thay đổi (Type of change)

* [ ] `feat`: Tính năng mới
* [ ] `fix`: Sửa lỗi
* [ ] `refactor`: Tái cấu trúc code
* [ ] `docs`: Cập nhật documentation
* [ ] `test`: Thêm hoặc cập nhật test
* [ ] `chore`: Cấu hình, dependencies hoặc maintenance
* [ ] `ci`: Thay đổi CI/CD
* [ ] `perf`: Cải thiện performance

## 🧪 Kết quả kiểm thử (Verification)

<!--
Mô tả cách bạn đã kiểm tra thay đổi.

Ví dụ:
- npm run lint
- npm run test
- docker compose up
- Manual test: Login → Dashboard → Logout
-->

## 🖼️ UI Changes

<!--
Nếu PR thay đổi giao diện, thêm screenshot hoặc video.
Nếu không liên quan, có thể ghi "N/A".
-->

N/A

## ⚠️ Breaking Changes

<!--
Ghi rõ nếu thay đổi làm API, database, configuration hoặc behavior
không còn tương thích với phiên bản trước.

Nếu không có, ghi "None".
-->

None

## ✅ Checklist

* [ ] Code tuân thủ coding convention của project.
* [ ] Đã self-review trước khi tạo PR.
* [ ] Không còn `console.log`, debug code hoặc comment tạm thời.
* [ ] Không commit secret, password, API key hoặc token.
* [ ] Nếu có environment variable mới, đã cập nhật `.env.example`.
* [ ] Đã cập nhật documentation nếu cần.
* [ ] Đã kiểm tra build / test / lint phù hợp với thay đổi.
* [ ] CI pipeline đã chạy thành công.
