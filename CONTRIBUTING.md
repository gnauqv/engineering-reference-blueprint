<!--
MỤC ĐÍCH FILE:

- Hướng dẫn cách đóng góp vào repository.
- Thống nhất workflow và các yêu cầu cơ bản.
- Giữ quy trình đủ đơn giản để có thể áp dụng cho cả cá nhân và team nhỏ.
-->

# Contributing

Cảm ơn bạn đã đóng góp cho repository.

Repository ưu tiên các contribution có tính thực tế, dễ hiểu và có thể tái sử dụng cho các project Software Engineering khác.

---

## 1. Các loại contribution

Có thể đóng góp:

* Documentation.
* Bug fixes.
* Feature / template improvements.
* Code examples.
* Architecture / engineering references.
* CI/CD hoặc developer tooling.

---

## 2. Trước khi thay đổi

Trước khi tạo Pull Request:

* Đọc `README.md`.
* Kiểm tra convention trong `docs/convention/`.
* Kiểm tra issue hiện có để tránh duplicate.
* Đảm bảo thay đổi phù hợp với mục đích của repository.

<!--
Không phải mọi feature đều cần được thêm vào blueprint.
Một thay đổi nên có giá trị cho nhiều project hoặc cải thiện rõ ràng reference hiện tại.
-->

---

## 3. Workflow

```text
Issue
  ↓
Create Branch
  ↓
Make Changes
  ↓
Test / Check
  ↓
Commit
  ↓
Pull Request
  ↓
Review
  ↓
Merge
```

Branch nên tuân theo quy ước trong:

```text
docs/convention/git-convention.md
```

---

## 4. Code & Documentation

Khi đóng góp:

* Giữ code đơn giản và dễ đọc.
* Ưu tiên cấu trúc rõ ràng hơn abstraction không cần thiết.
* Không thêm dependency nếu chưa thực sự cần.
* Cập nhật documentation khi behavior thay đổi.
* Không commit secret hoặc thông tin nhạy cảm.
* Không phá vỡ các phần đang hoạt động nếu không có lý do rõ ràng.

---

## 5. Pull Request Checklist

Trước khi tạo PR:

* [ ] Thay đổi có mục đích rõ ràng.
* [ ] Code / documentation đã được kiểm tra.
* [ ] Không chứa secret.
* [ ] Không có file không cần thiết.
* [ ] README / documentation đã được cập nhật nếu cần.
* [ ] Commit message đúng convention.
* [ ] PR description mô tả rõ thay đổi.

---

## 6. Review

Review nên tập trung vào:

1. **Correctness** — Thay đổi có đúng không?
2. **Clarity** — Có dễ hiểu và bảo trì không?
3. **Consistency** — Có phù hợp convention hiện tại không?
4. **Necessity** — Có thực sự cần thiết không?

> **Professional contribution không có nghĩa là contribution phải phức tạp.**
