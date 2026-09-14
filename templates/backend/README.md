# Backend Template

<!--
MỤC ĐÍCH:

- Baseline cho Backend application.
- Sử dụng Layered Architecture đơn giản.
- Có thể chuyển sang module-based structure khi project phát triển.
-->

## Structure

```text
src/
├── config/
├── controllers/
├── middlewares/
├── models/
├── routes/
└── services/
```

## Responsibilities

| Directory      | Responsibility                |
| -------------- | ----------------------------- |
| `config/`      | Application configuration     |
| `controllers/` | Xử lý HTTP request / response |
| `middlewares/` | Middleware dùng chung         |
| `models/`      | Database / data models        |
| `routes/`      | API route definitions         |
| `services/`    | Business logic                |

## Request Flow

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

## When the project grows

Nếu một domain trở nên phức tạp, có thể chuyển sang module-based structure:

```text
src/
├── modules/
│   ├── auth/
│   ├── users/
│   └── orders/
├── config/
└── middlewares/
```

Xem:

`docs/architecture/module-guideline.md`

## Migration

Điều chỉnh theo backend framework thực tế.

Không giữ các layer không cần thiết.

> **Start simple. Introduce structure when complexity requires it.**
