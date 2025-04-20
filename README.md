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
![image](https://github.com/user-attachments/assets/80e7d17d-3f27-42cb-bc66-eebda8b9740c)
# TẠO BẢNG GV(ID_GV(PK),MaGV,HoTen,ChuyeenMOn)
![image](https://github.com/user-attachments/assets/e7bfdf28-cb23-4435-8af1-329b55b5d7fc)
## BẢNG MONHOC (ID_MH(PK),MAMH,TENMH,ID_GV(FK)
![image](https://github.com/user-attachments/assets/0fc01ddd-6e52-416a-a244-7b8038264ccd)

## BẢNG LỚP (ID_LỚP(PK),TENLOP,NAMHOC,ID_GV(FK)
![image](https://github.com/user-attachments/assets/aa551e34-e8e2-492c-b001-32ff47de9c0d)
## BẢNG HK(ID_HK,TENHK,NAMHOC
## BẢNG Phân Công Dạy :ID_PCD(PK),ID_GV(FK),ID_MH(FK),ID_LOP(FK),MAGV,NAMHOC
![image](https://github.com/user-attachments/assets/176aed08-30ac-40f7-a2ba-867b4f4cbb2d)
## BẢNG ĐIỂM :ID_Diem(PK),ID_HS(FK),ID_HK(FK),ID_MH ĐIEM MIENG,DIEM 15P,ĐIỂM THI,ĐIỂMTB(TÍNH BẰNG TRIGGER)
![image](https://github.com/user-attachments/assets/e5d6bd41-f2f9-4d93-bb25-6ab755df3c31)
## BẢNG NGƯỜI DUNG:ID_ND(PK),TENND,ID_HS(FK),ID_GV(FK)
![image](https://github.com/user-attachments/assets/d07d7075-21cb-4332-bddf-affebb8f287e)
## TẠO CK CHO BẢNG ĐIÊM
### ĐIEMMIENG
![image](https://github.com/user-attachments/assets/a05afb16-f99a-499b-a151-6e5d773f5a70)
### ĐIỂM 15P
![image](https://github.com/user-attachments/assets/f3527342-da7e-4977-9b29-0e3cd2214a4b)
### DIEM THI
![image](https://github.com/user-attachments/assets/ace3caae-6042-487b-a9b0-3b8f7d26c1fa)
# 3 SỬ DỤNG TRIGGER ĐỂ TÍNH ĐIỂMTB CỦA BẢNG ĐIỂM
## TẠO TRIGGER CHO TRG_DiểmTB
![image](https://github.com/user-attachments/assets/860bdd55-4f30-47ef-9ff6-ca41cb7cba9a)
## Khi tạo xong bảng TRiGGER xong thi sẽ hiện bảng
![image](https://github.com/user-attachments/assets/8e80f2ab-9d1e-4ba2-aa53-dbaae6eccb08)
## Kiểm tra S khi tạo trigger xong, kiểm tra xem đã cập nhập
![image](https://github.com/user-attachments/assets/13b87af3-1db7-48f0-aa50-4193d72276bc)
# Việc sử dụng TRIGGER trong 
# Bảng Điểm để tính Điểm TB có thể tự động hóa 1 số thao tác
# Có thể triiger tự động cập nhập các bảng liên quan
# Tự động tính toán cập nhật các gtri có sự thay đổi
