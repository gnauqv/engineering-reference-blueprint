<!--
MỤC ĐÍCH FILE:

- Hướng dẫn chuyển engineering-reference-blueprint thành một project thực tế.
- Giúp xác định thành phần nào nên giữ, điều chỉnh hoặc loại bỏ.
- Blueprint là điểm bắt đầu, không phải architecture bắt buộc.
-->

# Migration Guide

## 1. Nguyên tắc

<!--
Không nên copy toàn bộ repository một cách máy móc.
Chỉ lấy những thành phần phù hợp với project hiện tại.
-->

> Hiểu → Chọn → Điều chỉnh → Loại bỏ → Kiểm tra → Sử dụng

Một project thực tế **không cần giống blueprint 100%**.

---

## 2. Xử lý các thành phần

| Thành phần            | Khuyến nghị              |
| --------------------- | ------------------------ |
| `.editorconfig`       | Giữ / điều chỉnh         |
| `.gitignore`          | Điều chỉnh theo stack    |
| `.github/`            | Giữ phần cần thiết       |
| `docs/`               | Giữ / điều chỉnh         |
| `templates/frontend/` | Điều chỉnh               |
| `templates/backend/`  | Điều chỉnh               |
| `templates/devops/`   | Chỉ dùng khi cần         |
| `CONTRIBUTING.md`     | Điều chỉnh theo team     |
| `MIGRATION_GUIDE.md`  | Có thể xóa sau migration |
| `README.md`           | Viết lại cho project     |

---

## 3. Frontend

Kiểm tra và điều chỉnh:

* Framework / library.
* Package manager.
* Cấu trúc `src/`.
* API client.
* Routing.
* State management.
* Environment variables.
* Testing và build configuration.

<!--
Không giữ các thư mục chỉ vì chúng tồn tại trong blueprint.
Nếu project chưa cần một layer, có thể bỏ qua.
-->

---

## 4. Backend

Kiểm tra và điều chỉnh:

* Framework.
* Database và ORM.
* Authentication / Authorization.
* API structure.
* Controllers / Services / Models.
* Middleware.
* Environment variables.
* Validation và testing.

<!--
Cấu trúc backend hiện tại là một baseline.
Có thể thay đổi theo framework và độ phức tạp của project.
-->

---

## 5. DevOps

Chỉ giữ những thành phần project thực sự sử dụng:

* Docker / Docker Compose.
* CI/CD.
* Reverse proxy.
* Environment configuration.
* Deployment configuration.

<!--
Project nhỏ hoặc chạy local chưa nhất thiết phải có toàn bộ DevOps setup.
-->

---

## 6. Documentation

Có thể bắt đầu với:

```text
docs/
├── architecture/
└── convention/
```

Chỉ thêm các nhóm tài liệu khác khi project thực sự cần:

```text
docs/
├── api/
├── database/
├── deployment/
└── testing/
```

---

## 7. Checklist

* [ ] Tạo repository cho project.
* [ ] Chọn frontend / backend / database.
* [ ] Điều chỉnh `.gitignore`.
* [ ] Tạo `.env.example`.
* [ ] Điều chỉnh `.github/`.
* [ ] Điều chỉnh frontend template.
* [ ] Điều chỉnh backend template.
* [ ] Thêm DevOps nếu cần.
* [ ] Viết lại `README.md`.
* [ ] Xóa các thành phần không sử dụng.
* [ ] Kiểm tra build / test / CI.

<!--
Sau khi migration hoàn tất, repository thực tế có thể khác blueprint đáng kể.
Điều đó là bình thường và được khuyến khích nếu phù hợp với project.
-->

> **Blueprint là điểm bắt đầu, không phải khuôn mẫu bắt buộc.**
