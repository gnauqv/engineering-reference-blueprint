<!--
MỤC ĐÍCH FILE:

- Là bản đồ đầy đủ của engineering-reference-blueprint.
- Phân biệt thành phần bắt buộc, khuyến nghị, tùy chọn và placeholder.
- Giúp quyết định thành phần nào nên migrate sang project thực tế.
- File này mô tả blueprint hiện tại; cập nhật khi cấu trúc repository thay đổi.
-->

# Project Structure

## 1. Legend

| Ký hiệu | Ý nghĩa                                        |
| ------- | ---------------------------------------------- |
| 🔴      | Required — Thành phần nền tảng nên giữ         |
| 🟡      | Recommended — Nên giữ / điều chỉnh             |
| 🔵      | Optional / Reference — Chỉ dùng khi cần        |
| ⚪       | Placeholder — Giữ để duy trì thư mục trong Git |

---

## 2. Root Structure

```text
engineering-reference-blueprint/
│
├── .github/                         🟡
├── docs/                            🟡
├── templates/                       🟡
│
├── .editorconfig                    🔴
├── .gitattributes                   🟡
├── .gitignore                       🔴
├── CONTRIBUTING.md                  🟡
├── LICENSE                          🔴
├── Makefile                         🟡
├── MIGRATION_GUIDE.md               🟡
└── README.md                        🔴
```

<!--
Root files nên được xem xét khi tạo project mới.
Không phải tất cả đều phải copy nguyên trạng.
-->

---

## 3. `.github/`

```text
.github/
├── ISSUE_TEMPLATE/                  🟡
│   ├── bug_report.md                🟡
│   └── feature_request.md           🟡
├── workflows/                       🟡
│   └── ci.yml                       🟡
├── PULL_REQUEST_TEMPLATE.md         🟡
└── dependabot.yml                   🔵
```

### Migration

| Thành phần      | Áp dụng                               |
| --------------- | ------------------------------------- |
| Issue templates | 🟡 Điều chỉnh                         |
| PR template     | 🟡 Điều chỉnh                         |
| CI              | 🟡 Điều chỉnh                         |
| Dependabot      | 🔵 Khi dùng GitHub dependency updates |

---

## 4. `docs/`

```text
docs/
├── architecture/
│   ├── adr-template.md              🟡
│   └── module-guideline.md           🟡
│
├── convention/
│   └── git-convention.md            🟡
│
└── project-structure.md             🟡
```

### Migration

Không cần copy toàn bộ documentation.

Chỉ giữ tài liệu có liên quan đến project thực tế.

---

## 5. Frontend Template

```text
templates/frontend/
├── src/
│   ├── assets/                      🟡
│   │   └── .gitkeep                 ⚪
│   │
│   ├── components/                 🟡
│   │   └── common/                 🟡
│   │       └── .gitkeep             ⚪
│   │
│   ├── features/                   🟡
│   │   └── auth/                   🟡
│   │       └── .gitkeep             ⚪
│   │
│   ├── hooks/                      🟡
│   │   └── .gitkeep                 ⚪
│   │
│   ├── services/                   🟡
│   │   └── apiClient.ts             🟡
│   │
│   └── types/                      🟡
│       └── .gitkeep                 ⚪
│
├── .env.example                     🔴
└── README.md                        🔴
```

### Frontend principle

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

Chỉ thêm khi project cần.

---

## 6. Backend Template

```text
templates/backend/
├── src/
│   ├── config/                     🟡
│   │   └── .gitkeep                 ⚪
│   ├── controllers/                🟡
│   │   └── .gitkeep                 ⚪
│   ├── middlewares/                🟡
│   │   └── .gitkeep                 ⚪
│   ├── models/                     🟡
│   │   └── .gitkeep                 ⚪
│   ├── routes/                     🟡
│   │   └── .gitkeep                 ⚪
│   └── services/                   🟡
│       └── .gitkeep                 ⚪
│
├── .env.example                     🔴
└── README.md                        🔴
```

### Backend principle

Đây là baseline Layered Architecture.

Không bắt buộc phải thêm:

```text
repositories/
use-cases/
domains/
entities/
validators/
```

Nếu project phát triển và complexity tăng, tham khảo:

`docs/architecture/module-guideline.md`

---

## 7. DevOps Template

```text
templates/devops/
├── Dockerfile.backend               🔵
├── Dockerfile.frontend              🔵
├── Dockerfile.example               🔵
├── docker-compose.yml               🔵
└── README.md                        🔴
```

Các file DevOps chỉ được migrate khi project thực sự sử dụng Docker / containerization.

---

## 8. Những thành phần KHÔNG phải mặc định

Blueprint không tạo sẵn:

```text
database/
repositories/
tests/
utils/
constants/
validators/
pages/
layouts/
stores/
monitoring/
logging/
security/
```

Lý do:

> Các thành phần này phụ thuộc vào framework, domain và complexity của project.

---

## 9. Migration Rule

Khi tạo project mới:

```text
Blueprint
   ↓
Identify requirements
   ↓
Select necessary parts
   ↓
Customize
   ↓
Remove unused parts
   ↓
Build project
```

Không copy toàn bộ repository một cách máy móc.

---

## 10. Quy tắc quan trọng

> 🔴 **Required** không có nghĩa là "không được thay đổi".

> 🟡 **Recommended** không có nghĩa là "bắt buộc".

> 🔵 **Optional** không có nghĩa là "không quan trọng".

> ⚪ **Placeholder** không phải implementation.

Blueprint tồn tại để giúp bắt đầu nhanh hơn, không phải để giới hạn architecture của project.
