# BT5
HAUTHANHHUYEN_QLY ĐIỂM HS C3
A. Trình bày lại đầu bài của đồ án PT&TKHT:
1. Mô tả bài toán của đồ án PT&TKHT, 
   đưa ra yêu cầu của bài toán đó
2. Cơ sở dữ liệu của Đồ án PT&TKHT :
   Có database với các bảng dữ liệu cần thiết (3nf),
   Các bảng này đã có PK, FK, CK cần thiết
 
B. Nội dung Bài tập 05:
1. Dựa trên cơ sở là csdl của Đồ án
2. Tìm cách bổ xung thêm 1 (hoặc vài) trường phi chuẩn
   (là trường tính toán đc, nhưng thêm vào thì ok hơn,
    ok hơn theo 1 logic nào đó, vd ok hơn về speed)
   => Nêu rõ logic này!
3. Viết trigger cho 1 bảng nào đó, 
   mà có sử dụng trường phi chuẩn này,
   nhằm đạt được 1 vài mục tiêu nào đó.
   => Nêu rõ các mục tiêu 
4. Nhập dữ liệu có kiểm soát, 
   nhằm để test sự hiệu quả của việc trigger auto run.
5. Kết luận về Trigger đã giúp gì cho đồ án của em.
# Quản lý học sinh
## Thêm, sửa, xóa thông tin học sinh.
# Quản lý giáo viên
## Cập nhật thông tin giáo viên.
## Phân công giáo viên dạy các lớp và môn tương ứng.
# Quản lý môn học
## Danh sách các môn học trong chương trình.
## Mỗi môn có mã môn, tên môn.
# Phân công giảng dạy
## Mỗi giáo viên được phân công dạy 1 cho 1, hay nhiều lớp khác nhau theo từng năm học.
# Quản lý điểm
## Nhập điểm theo từng loại: điểm miệng, điểm 15 phút, điểm thi.
## Tự động tính điểm trung bình ( dùng trigger ).
## Cập nhật, sửa điểm nếu cần.

🔹 Thống kê – Tra cứu
Tra cứu bảng điểm theo học sinh, lớp, môn, học kỳ.
Thống kê học lực (giỏi, khá, trung bình…) theo điểm trung bình.
# Phân quyền người dùng
## Tài khoản quản trị viên, giáo viên, học sinh.
## Quyền hạn khác nhau khi truy cập hệ thống.

# TẠO CÁC BẢNG CÓ LIÊN QUAN ĐẾN ĐIỂM CỦA HS CẤP 3
## TẠO BẢNG HS (ID_HS(PK),TenHS,GioiTinh,NgaySinh,ID_Lop(FK)
## TẠO BẢNG GV(ID_GV(PK),MaGV,HoTen,ChuyeenMOn)
## BẢNG MONHOC (ID_MH(PK),MAMH,TENMH,ID_GV(FK)
## BẢNG LỚP (ID_LỚP(PK),TENLOP,NAMHOC,ID_GV(FK)
## BẢNG HK(ID_HK,TENHK,NAMHOC
## BẢNG Phân Công Dạy :ID_PCD(PK),ID_GV(FK),ID_MH(FK),ID_LOP(FK),MAGV,NAMHOC
## BẢNG ĐIỂM :ID_Diem(PK),ID_HS(FK),ID_HK(FK),ID_MH ĐIEM MIENG,DIEM 15P,ĐIỂM THI,ĐIỂMTB(TÍNH BẰNG TRIGGER)
## BẢNG NGƯỜI DUNG:ID_ND(PK),TENND,ID_HS(FK),ID_GV(FK)

