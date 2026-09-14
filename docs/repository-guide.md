<!--
MỤC ĐÍCH FILE:

- Giải thích nhanh ý nghĩa và công dụng của từng thư mục / file trong repository.
- Dùng như "bảng chú giải" khi quay lại repository sau một thời gian dài.
- Không đi sâu vào cách sử dụng chi tiết.
- Khi cần tìm hiểu sâu, chuyển sang documentation tương ứng.

Đây là file TRA CỨU NHANH, không phải tài liệu Software Engineering toàn diện.
-->

# Repository Guide

## 1. Mục đích

File này giúp trả lời nhanh ba câu hỏi:

1. File / thư mục này là gì?
2. Nó dùng để làm gì?
3. Khi nào tôi cần quan tâm đến nó?

> Nếu không nhớ repository hoạt động như thế nào, hãy đọc file này trước.

---

# 2. Root Files

| File                 | Ý nghĩa                    | Khi nào cần dùng?                     |
| -------------------- | -------------------------- | ------------------------------------- |
| `README.md`          | Giới thiệu repository      | Đọc đầu tiên                          |
| `.editorconfig`      | Quy tắc formatting cơ bản  | Khi setup project / editor            |
| `.gitattributes`     | Quy tắc Git xử lý file     | Khi có vấn đề line ending / file type |
| `.gitignore`         | File không commit vào Git  | Khi tạo project thực tế               |
| `LICENSE`            | License của repository     | Khi sử dụng / phân phối repository    |
| `Makefile`           | Shortcut cho command       | Khi project có nhiều command lặp lại  |
| `CONTRIBUTING.md`    | Quy tắc đóng góp           | Khi đóng góp vào repository           |
| `MIGRATION_GUIDE.md` | Hướng dẫn chuyển blueprint | Khi tạo project thực tế               |

---

# 3. `.github/`

```text
.github/

├── ISSUE_TEMPLATE/
├── workflows/
├── PULL_REQUEST_TEMPLATE.md
└── dependabot.yml
```

| Thành phần                 | Công dụng                           |
| -------------------------- | ----------------------------------- |
| `ISSUE_TEMPLATE/`          | Template tạo Issue                  |
| `bug_report.md`            | Chuẩn hóa Bug Report                |
| `feature_request.md`       | Chuẩn hóa Feature Request           |
| `workflows/`               | GitHub Actions                      |
| `ci.yml`                   | Continuous Integration              |
| `PULL_REQUEST_TEMPLATE.md` | Checklist / format cho Pull Request |
| `dependabot.yml`           | Dependency update automation        |

### Nhớ nhanh

```text
.github/
    ↓
GitHub collaboration + automation
```

Không phải project nào cũng cần giữ toàn bộ.

---

# 4. `docs/`

```text
docs/

├── architecture/
├── convention/
├── project-structure.md
└── repository-guide.md
```

Đây là nơi chứa **documentation của chính blueprint**.

---

## `docs/architecture/`

### `adr-template.md`

Dùng để ghi lại:

```text
Problem
   ↓
Decision
   ↓
Consequences
```

Dùng khi có Architecture Decision quan trọng.

---

### `module-guideline.md`

Giải thích khi nào nên:

```text
Simple structure
      ↓
Split modules
      ↓
Increase architecture complexity
```

Mục tiêu là tránh việc project phát triển lớn nhưng vẫn để tất cả code trong một structure đơn giản.

---

## `docs/convention/`

### `git-convention.md`

Chứa Git conventions:

* Branch.
* Commit.
* Pull Request.
* Git workflow cơ bản.

---

## `project-structure.md`

Là **bản đồ cấu trúc repository**.

Nó trả lời:

> "Repository có những thành phần nào và thành phần đó thuộc loại Required, Recommended hay Optional?"

---

## `repository-guide.md`

Chính là file bạn đang đọc.

Nó trả lời:

> "File / folder này dùng để làm gì?"

---

# 5. `templates/`

```text
templates/

├── frontend/
├── backend/
└── devops/
```

Đây là phần có thể được **copy / điều chỉnh khi bắt đầu project thực tế**.

---

# 6. `templates/frontend/`

Baseline cho Frontend application.

```text
frontend/

├── src/
├── .env.example
└── README.md
```

## `src/`

```text
src/

├── assets/
├── components/
├── features/
├── hooks/
├── services/
└── types/
```

| Folder               | Công dụng                      |
| -------------------- | ------------------------------ |
| `assets/`            | Images, fonts và static assets |
| `components/`        | UI components dùng chung       |
| `components/common/` | Shared/common components       |
| `features/`          | Các business feature           |
| `features/auth/`     | Ví dụ feature Authentication   |
| `hooks/`             | Reusable React hooks           |
| `services/`          | API / external service         |
| `types/`             | Shared TypeScript types        |

### Lưu ý

Frontend template hiện tại định hướng:

> **React + TypeScript**

Không cần tạo sẵn:

```text
pages/
layouts/
stores/
contexts/
utils/
constants/
providers/
```

Chỉ thêm khi project thực sự cần.

---

## `.env.example`

Danh sách environment variables cần thiết.

Ví dụ:

```text
VITE_API_URL
VITE_APP_NAME
VITE_APP_ENV
```

Không chứa secret thật.

---

## `README.md`

Giải thích cách sử dụng frontend template.

---

# 7. `templates/backend/`

Baseline cho Backend application.

```text
backend/

├── src/
├── .env.example
└── README.md
```

## `src/`

```text
src/

├── config/
├── controllers/
├── middlewares/
├── models/
├── routes/
└── services/
```

| Folder         | Công dụng                 |
| -------------- | ------------------------- |
| `config/`      | Application configuration |
| `controllers/` | HTTP request / response   |
| `middlewares/` | Middleware                |
| `models/`      | Data / database models    |
| `routes/`      | API routes                |
| `services/`    | Business logic            |

Request flow:

```text
Request
   ↓
Route
   ↓
Controller
   ↓
Service
   ↓
Model / Data Access
   ↓
Database
```

### Lưu ý

Đây là **simple Layered Architecture**.

Không mặc định tạo:

```text
repositories/
use-cases/
domains/
entities/
validators/
```

Nếu complexity tăng, xem:

`docs/architecture/module-guideline.md`

---

## `.env.example`

Document các backend configuration cần thiết.

Có thể chứa:

```text
DATABASE_URL
JWT_SECRET
CORS_ORIGIN
```

Nhưng chỉ dùng placeholder.

**Không commit secret thật.**

---

## `README.md`

Giải thích baseline và cách điều chỉnh backend template.

---

# 8. `templates/devops/`

Chứa các DevOps template:

```text
devops/

├── Dockerfile.backend
├── Dockerfile.frontend
├── Dockerfile.example
├── docker-compose.yml
└── README.md
```

| File                  | Công dụng                       |
| --------------------- | ------------------------------- |
| `Dockerfile.backend`  | Build backend container         |
| `Dockerfile.frontend` | Build frontend container        |
| `Dockerfile.example`  | Generic Docker reference        |
| `docker-compose.yml`  | Chạy nhiều service local        |
| `README.md`           | Hướng dẫn nhanh DevOps template |

### Nhớ nhanh

```text
devops/
    ↓
Container + local infrastructure
```

Không sử dụng nếu project không cần Docker / containerization.

---

# 9. File nào thường được copy sang project?

### Thường nên giữ

```text
.editorconfig
.gitignore
README.md
```

Tùy project:

```text
.github/
docs/
CONTRIBUTING.md
Makefile
templates/frontend/
templates/backend/
templates/devops/
```

Chỉ dùng khi có nhu cầu:

```text
dependabot.yml
Dockerfile.*
docker-compose.yml
```

---

# 10. File nào chỉ là Reference?

Một số file tồn tại chủ yếu để tham khảo:

```text
adr-template.md
module-guideline.md
Dockerfile.example
```

Chúng không nhất thiết phải được copy nguyên vẹn sang project thực tế.

---

# 11. Nếu quên sau một thời gian

Không cần đọc lại toàn bộ repository.

### Không nhớ repository là gì?

Đọc:

```text
README.md
```

### Không nhớ từng file dùng làm gì?

Đọc:

```text
docs/repository-guide.md
```

### Không nhớ cấu trúc đầy đủ?

Đọc:

```text
docs/project-structure.md
```

### Không biết nên copy cái gì sang project?

Đọc:

```text
MIGRATION_GUIDE.md
```

### Không biết khi nào nên tách module?

Đọc:

```text
docs/architecture/module-guideline.md
```

### Không nhớ Git convention?

Đọc:

```text
docs/convention/git-convention.md
```

---

# 12. Mental Model

Có thể nhớ repository bằng 5 nhóm:

```text
.github/
    ↓
Collaboration & Automation

docs/
    ↓
Knowledge & Documentation

templates/
    ↓
Project Starting Point

Root configuration
    ↓
Development Environment

MIGRATION_GUIDE.md
    ↓
How to turn blueprint into a real project
```

> **README = Tổng quan**

> **Repository Guide = Giải thích nhanh**

> **Project Structure = Bản đồ**

> **Migration Guide = Cách áp dụng**

> **Templates = Điểm bắt đầu**

> **Architecture / Convention docs = Quy tắc và hướng dẫn chuyên sâu**
