# 🏛️ Engineering Reference Blueprint

<!--
MỤC ĐÍCH FILE:

- Là trang giới thiệu chính của repository.
- Giải thích repository dùng để làm gì.
- Giúp người dùng nhanh chóng hiểu cấu trúc và cách sử dụng.
- Không biến README thành tài liệu Software Engineering toàn diện.

Nếu quay lại repository sau một thời gian dài:
1. Đọc README này để hiểu tổng quan.
2. Đọc docs/repository-guide.md để nhớ nhanh từng thành phần.
3. Đọc docs/project-structure.md khi cần xem toàn bộ cấu trúc.
4. Đọc MIGRATION_GUIDE.md khi bắt đầu project thực tế.
-->

> **A practical Software Engineering reference and project blueprint for Full-Stack development.**

`Engineering Reference Blueprint` là repository tham khảo dành cho việc xây dựng và khởi tạo các dự án Software Engineering thực tế.

Repository tập trung vào:

* Project structure.
* Software architecture.
* Coding conventions.
* Git workflow.
* Documentation.
* Frontend / Backend baseline.
* DevOps và CI/CD.
* Các template có thể điều chỉnh cho project thực tế.

---

## 🎯 Mục tiêu

Repository có hai vai trò chính:

### 1. Engineering Reference

Lưu trữ các quy ước và tài liệu có thể tái sử dụng:

* Architecture Decision Records (ADR).
* Git conventions.
* Contribution guidelines.
* Project documentation.
* Development conventions.
* Module organization guidelines.

### 2. Project Blueprint

Cung cấp baseline để bắt đầu một project mới:

```text
Frontend
    +
Backend
    +
Database
    +
DevOps
    +
Documentation
```

> **Blueprint không phải architecture bắt buộc.**

Mỗi project nên chọn và điều chỉnh những thành phần thực sự cần thiết.

---

## 🗺️ Repository Structure

```text
engineering-reference-blueprint/

│
├── .github/
│   ├── ISSUE_TEMPLATE/
│   ├── workflows/
│   ├── PULL_REQUEST_TEMPLATE.md
│   └── dependabot.yml
│
├── docs/
│   ├── architecture/
│   │   ├── adr-template.md
│   │   └── module-guideline.md
│   ├── convention/
│   │   └── git-convention.md
│   ├── project-structure.md
│   └── repository-guide.md
│
├── templates/
│   ├── frontend/
│   ├── backend/
│   └── devops/
│
├── .editorconfig
├── .gitattributes
├── .gitignore
├── CONTRIBUTING.md
├── LICENSE
├── MIGRATION_GUIDE.md
├── Makefile
└── README.md
```

---

## 🧭 Muốn hiểu repository nhanh?

Nếu bạn quay lại repository sau một thời gian không sử dụng, **không cần đọc toàn bộ repository**.

Đọc theo thứ tự:

```text
README.md
   ↓
docs/repository-guide.md
   ↓
docs/project-structure.md
   ↓
MIGRATION_GUIDE.md
   ↓
Các template / convention cần sử dụng
```

### `repository-guide.md`

Giải thích nhanh:

* Từng thư mục dùng để làm gì.
* Từng file quan trọng dùng để làm gì.
* Khi nào cần sử dụng.
* File nào chỉ để tham khảo.
* File nào thường được copy sang project thực tế.

→ Đây là **file tra cứu nhanh** khi bạn quên repository hoạt động như thế nào.

### `project-structure.md`

Mô tả toàn bộ cấu trúc repository và phân loại:

* 🔴 Required.
* 🟡 Recommended.
* 🔵 Optional / Reference.
* ⚪ Placeholder.

→ Đây là **bản đồ cấu trúc** của blueprint.

---

## 📂 Thành phần chính

| Thành phần            | Vai trò                                               |
| --------------------- | ----------------------------------------------------- |
| `.github/`            | GitHub workflow, Issue, Pull Request và automation    |
| `docs/`               | Architecture, conventions và repository documentation |
| `templates/frontend/` | Baseline cho Frontend application                     |
| `templates/backend/`  | Baseline cho Backend application                      |
| `templates/devops/`   | Docker và local infrastructure                        |
| `.editorconfig`       | Thống nhất coding style giữa các editor               |
| `.gitattributes`      | Chuẩn hóa cách Git xử lý file                         |
| `.gitignore`          | Loại bỏ file không cần commit                         |
| `Makefile`            | Các command thường dùng trong development             |
| `CONTRIBUTING.md`     | Quy trình đóng góp                                    |
| `MIGRATION_GUIDE.md`  | Hướng dẫn chuyển blueprint thành project thực tế      |
| `LICENSE`             | License của repository                                |
| `README.md`           | Documentation chính của repository                    |

Chi tiết từng thành phần:

→ `docs/repository-guide.md`

---

# 🧱 Template Architecture

## Frontend

Frontend template sử dụng cấu trúc hướng theo feature và shared components:

```text
templates/frontend/

└── src/

    ├── assets/
    ├── components/
    │   └── common/
    ├── features/
    │   └── auth/
    ├── hooks/
    ├── services/
    │   └── apiClient.ts
    └── types/
```

Baseline hiện tại hướng đến **React + TypeScript**.

Cấu trúc có thể thay đổi tùy framework và quy mô project.

Không cần tạo sẵn mọi thư mục có thể có.

Ví dụ:

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

## Backend

Backend template sử dụng Layered Architecture đơn giản:

```text
templates/backend/

└── src/

    ├── config/
    ├── controllers/
    ├── middlewares/
    ├── models/
    ├── routes/
    └── services/
```

Request flow cơ bản:

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

Đây là **baseline**, không phải architecture cố định.

Khi domain trở nên phức tạp, có thể chuyển sang module-based structure:

```text
src/
├── modules/
│   ├── auth/
│   ├── users/
│   ├── products/
│   └── orders/
├── config/
└── middlewares/
```

Xem:

`docs/architecture/module-guideline.md`

> Không thêm Repository, Use Case, Domain hoặc các abstraction khác chỉ vì muốn architecture trông "chuyên nghiệp".

---

## DevOps

DevOps template cung cấp các cấu hình nền tảng cho containerization và local development:

```text
templates/devops/

├── Dockerfile.backend
├── Dockerfile.frontend
├── Dockerfile.example
├── docker-compose.yml
└── README.md
```

Chỉ sử dụng những thành phần thực sự cần cho project.

`Dockerfile.example` là file tham khảo generic và có thể được loại bỏ nếu project không cần.

---

# 🚀 Sử dụng Blueprint

Blueprint không được thiết kế để clone và giữ nguyên toàn bộ.

Quy trình đề xuất:

```text
Understand
    ↓
Select
    ↓
Customize
    ↓
Remove unnecessary parts
    ↓
Test
    ↓
Use
```

Chi tiết xem:

`MIGRATION_GUIDE.md`

---

# 🛠️ Quick Start

Repository này chủ yếu là **reference và template**, vì vậy không có một lệnh:

```bash
npm install
```

hoặc:

```bash
docker compose up
```

bắt buộc cho toàn bộ repository.

Để bắt đầu một project mới:

### 1. Chọn template

```text
templates/

├── frontend/
├── backend/
└── devops/
```

### 2. Copy phần cần thiết

Ví dụ:

```text
MyProject/

├── frontend/
├── backend/
├── docs/
└── .github/
```

### 3. Điều chỉnh configuration

Kiểm tra và cập nhật:

* `.env.example`.
* `.gitignore`.
* `.editorconfig`.
* Package configuration.
* Database configuration.
* API configuration.
* Docker configuration.
* CI/CD configuration.

### 4. Viết lại README

README của project thực tế nên mô tả:

* Project làm gì.
* Tech stack.
* Architecture.
* Installation.
* Environment variables.
* Development commands.
* Testing.
* Deployment.

---

# 📚 Documentation

## 🧭 Repository Guide

`docs/repository-guide.md`

Giải thích nhanh ý nghĩa và công dụng của từng thư mục, file và template.

**Đọc file này khi bạn không còn nhớ repository dùng để làm gì hoặc một file cụ thể có vai trò gì.**

---

## 🗺️ Project Structure

`docs/project-structure.md`

Bản đồ đầy đủ của repository, bao gồm phân loại:

* 🔴 Required.
* 🟡 Recommended.
* 🔵 Optional / Reference.
* ⚪ Placeholder.

**Đọc file này khi cần quyết định thành phần nào nên đưa vào project thực tế.**

---

## 🏗️ Architecture

`docs/architecture/`

### `adr-template.md`

Template để ghi lại các Architecture Decision Records.

Dùng khi project có một quyết định kỹ thuật quan trọng cần lưu lại lý do và trade-off.

### `module-guideline.md`

Guideline giúp nhận biết khi nào nên tách module / feature.

Nguyên tắc:

> **Start simple. Split when complexity appears.**

---

## 📐 Convention

`docs/convention/`

### `git-convention.md`

Quy ước:

* Branch naming.
* Commit message.
* Pull Request.
* Một số nguyên tắc Git cơ bản.

---

## 🔄 Migration

`MIGRATION_GUIDE.md`

Hướng dẫn chuyển `Engineering Reference Blueprint` thành một project thực tế.

---

# 🤝 Contributing

Nếu muốn đóng góp vào repository, xem:

`CONTRIBUTING.md`

Pull Request sử dụng template:

`.github/PULL_REQUEST_TEMPLATE.md`

---

# 📌 Philosophy

Repository này tuân theo một số nguyên tắc:

> **Simple before complex.**

> **Consistency before cleverness.**

> **Document important decisions.**

> **Use abstractions when they solve a real problem.**

> **Split modules when complexity requires it.**

> **A blueprint is a starting point, not a restriction.**

Professional Software Engineering không có nghĩa là tạo ra càng nhiều folder, layer hoặc abstraction càng tốt.

Mục tiêu là tạo ra **đủ structure để project dễ hiểu, dễ phát triển và dễ bảo trì**.

---

# 📄 License

Xem file:

`LICENSE`
