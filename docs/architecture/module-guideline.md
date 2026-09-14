<!--
MỤC ĐÍCH FILE:

- Nhắc khi nào nên tách project thành các module / feature rõ ràng.
- Tránh tình trạng một module hoặc một thư mục phát triển quá lớn.
- Không ép project phải sử dụng Microservices hoặc Clean Architecture.
- Đây là guideline để nhận biết thời điểm cần tăng mức độ tổ chức code.
-->

# Module Guideline

## 1. Nguyên tắc

> **Start simple. Split when complexity appears.**

Không cần chia module ngay từ đầu chỉ để architecture trông chuyên nghiệp.

Chỉ nên tách khi việc tách giúp:

* Code dễ hiểu hơn.
* Trách nhiệm rõ ràng hơn.
* Giảm dependency giữa các phần.
* Dễ test và bảo trì hơn.
* Nhiều người có thể phát triển song song.

---

## 2. Khi nào cần tách module?

Cân nhắc tách khi xuất hiện một hoặc nhiều dấu hiệu:

* Một thư mục có quá nhiều file.
* Một feature có nhiều business rules riêng.
* Một phần code được sử dụng bởi nhiều module.
* Các phần code có vòng đời hoặc domain khác nhau.
* Một module thường xuyên được sửa độc lập với phần còn lại.
* Controller / Service bắt đầu quá dài.
* Một file bắt đầu chịu quá nhiều trách nhiệm.
* Việc tìm code liên quan đến một chức năng trở nên khó khăn.

<!--
Không sử dụng số lượng file như một quy tắc tuyệt đối.
Độ phức tạp của domain quan trọng hơn số lượng file.
-->

---

## 3. Frontend

Có thể bắt đầu:

```text
src/
├── components/
├── features/
├── hooks/
├── services/
└── types/
```

Khi project phát triển:

```text
src/
├── components/
│   └── common/
├── features/
│   ├── auth/
│   ├── users/
│   ├── products/
│   └── orders/
├── hooks/
├── services/
└── types/
```

Nếu một feature trở nên lớn:

```text
features/
└── orders/
    ├── components/
    ├── hooks/
    ├── services/
    ├── types/
    └── index.ts
```

---

## 4. Backend

Có thể bắt đầu:

```text
src/
├── config/
├── controllers/
├── middlewares/
├── models/
├── routes/
└── services/
```

Khi domain phát triển:

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

Một module có thể được tổ chức:

```text
modules/
└── orders/
    ├── controllers/
    ├── routes/
    ├── services/
    ├── models/
    └── types/
```

<!--
Không nhất thiết phải sử dụng cấu trúc modules ngay từ project đầu tiên.
Có thể chuyển từ Layered Architecture sang module-based structure khi cần.
-->

---

## 5. Khi nào KHÔNG nên tách?

Không nên tách chỉ vì:

* Có vài file trong một thư mục.
* Muốn architecture trông "enterprise".
* Thấy project khác có nhiều layer hơn.
* Muốn áp dụng Clean Architecture / DDD dù chưa có nhu cầu.
* Một abstraction chưa giải quyết vấn đề thực tế nào.

> **Abstraction should solve a problem, not create one.**

---

## 6. Module Checklist

Khi project bắt đầu lớn, hãy tự hỏi:

* [ ] Module này có domain / responsibility riêng chưa?
* [ ] Code trong module có thường xuyên thay đổi cùng nhau không?
* [ ] Module có dependency quá nhiều vào module khác không?
* [ ] Việc tách có làm code dễ hiểu hơn không?
* [ ] Có thể test module tương đối độc lập không?
* [ ] Việc tách có giảm complexity thực sự không?

Nếu phần lớn câu trả lời là **Có**, hãy cân nhắc tách module.

---

## 7. Escalation

Không cần nhảy trực tiếp:

```text
Simple
  ↓
Modules
  ↓
Layered Modules
  ↓
Clean Architecture / DDD
  ↓
Microservices
```

Có thể dừng ở bất kỳ mức nào phù hợp với project.

> **Tăng complexity chỉ khi complexity hiện tại bắt đầu trở thành vấn đề.**
