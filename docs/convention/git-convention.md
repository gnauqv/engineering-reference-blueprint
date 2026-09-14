<!--
MỤC ĐÍCH FILE:

- Quy ước branch, commit và Pull Request.
- Giúp lịch sử Git dễ đọc, dễ review và dễ bảo trì.
- Có thể điều chỉnh theo quy mô và workflow của từng project.
-->

# Git Convention

## 1. Branch Naming

Sử dụng format:

```text
<type>/<short-description>
```

Các `type` thường dùng:

| Type       | Mục đích          |
| ---------- | ----------------- |
| `feature`  | Tính năng mới     |
| `fix`      | Sửa bug           |
| `refactor` | Refactor code     |
| `docs`     | Documentation     |
| `test`     | Test              |
| `chore`    | Công việc bảo trì |
| `ci`       | CI/CD             |
| `perf`     | Performance       |

Ví dụ:

```text
feature/user-authentication
fix/login-validation
refactor/api-client
docs/setup-guide
chore/update-dependencies
```

<!--
Tên branch nên ngắn nhưng thể hiện rõ mục đích.
-->

---

## 2. Commit Message

Sử dụng format:

```text
<type>(<scope>): <description>
```

Ví dụ:

```text
feat(auth): add Google OAuth login
fix(user): validate email before update
refactor(api): simplify request handler
docs(readme): update installation guide
test(auth): add login test cases
chore(deps): update dependencies
```

`scope` có thể bỏ nếu commit không thuộc một module cụ thể:

```text
docs: update project setup
```

### Commit Type

| Type       | Mục đích                               |
| ---------- | -------------------------------------- |
| `feat`     | Thêm tính năng                         |
| `fix`      | Sửa lỗi                                |
| `refactor` | Thay đổi code nhưng không đổi behavior |
| `docs`     | Documentation                          |
| `test`     | Test                                   |
| `chore`    | Maintenance                            |
| `ci`       | CI/CD                                  |
| `perf`     | Performance                            |

---

## 3. Commit Principles

* Mỗi commit nên đại diện cho **một thay đổi logic**.
* Viết message mô tả rõ commit đang làm gì.
* Không commit password, API key, token hoặc secret.
* Tránh trộn nhiều thay đổi không liên quan trong cùng một commit.
* Không commit file generated nếu project không yêu cầu.
* Không force push vào branch chính (`main` / `master`) nếu workflow không cho phép.

<!--
Commit tốt giúp việc review, debugging và rollback dễ hơn.
Không cần tạo quá nhiều commit nhỏ nếu chúng không mang lại giá trị.
-->

---

## 4. Pull Request

Một Pull Request nên có:

* Mục đích của thay đổi.
* Những phần chính đã thực hiện.
* Cách kiểm tra / test.
* Screenshot hoặc video nếu thay đổi UI.
* Breaking changes nếu có.

Ví dụ cấu trúc:

```text
## Summary

- Thêm Google OAuth.
- Cập nhật authentication flow.

## Testing

- npm run lint
- npm run test

## Notes

- Không có breaking change.
```

---

## 5. Nguyên tắc chung

> **Readable Git history > Git history quá phức tạp.**

Quy ước có thể thay đổi theo project, nhưng nên đảm bảo:

* Dễ đọc.
* Dễ tìm kiếm.
* Dễ review.
* Dễ rollback.
* Thống nhất trong team.
