# Frontend Template

<!--
MỤC ĐÍCH:

- Baseline cho Frontend application.
- Tổ chức code theo shared components và features.
- Giữ cấu trúc đơn giản để có thể mở rộng khi project phát triển.
-->

## Structure

```text
src/
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

## Responsibilities

| Directory            | Responsibility          |
| -------------------- | ----------------------- |
| `assets/`            | Static assets           |
| `components/common/` | Shared UI components    |
| `features/`          | Feature-specific code   |
| `hooks/`             | Reusable React hooks    |
| `services/`          | API / external services |
| `types/`             | Shared TypeScript types |

## Feature Structure

Một feature có thể bắt đầu đơn giản:

```text
features/
└── auth/
    └── ...
```

Khi feature phát triển:

```text
features/
└── auth/
    ├── components/
    ├── hooks/
    ├── services/
    ├── types/
    └── index.ts
```

## Migration

Không cần tạo sẵn:

```text
pages/
layouts/
stores/
contexts/
utils/
constants/
```

Chỉ thêm khi project có nhu cầu thực tế.

> **Organize by responsibility, not by the number of folders.**
