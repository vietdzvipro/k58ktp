## K58KTP
Bài tập 2 của sv: Nguyễn Hoàng Việt - k225480106074 - Môn quản trị cơ sở dữ liệu 
## BÀI TOÁN:
- Tạo csdl quan hệ với tên QLSV gồm các bảng sau:
+ SinhVien(#masv,hoten,NgaySinh)
+ Lop(#maLop,tenLop)
+ GVCN(#@maLop,#@magv,#HK)
+ LopSV(#@maLop,#@maSV,ChucVu)
+ GiaoVien(#magv,hoten,NgaySinh,@maBM)
+ BoMon(#MaBM,tenBM,@maKhoa)
+ Khoa(#maKhoa,tenKhoa)
+ MonHoc(#mamon,Tenmon,STC)
+ LopHP(#maLopHP,TenLopHP,HK,@maMon,@maGV)
+ DKMH(#@maLopHP,#@maSV,DiemTP,DiemThi,PhanTramThi)
## YÊU CẦU:
1. Thực hiện các hành động sau trên giao diện đồ hoạ để tạo cơ sở dữ liệu cho bài toán:
+ Tạo database mới, mô tả các tham số(nếu có) trong quá trình.
+ Tạo các bảng dữ liệu với các trường như mô tả, chọn kiểu dữ liệu phù hợp với thực tế (tự tìm hiểu)
+ Mỗi bảng cần thiết lập PK, FK(s) và CK(s) nếu cần thiết. (chú ý dấu # và @: # là chỉ PK, @ chỉ FK)
2. Chuyển các thao tác đồ hoạ trên thành lệnh SQL tương đương. lưu tất cả các lệnh SQL trong file: Script_DML.sql
## BÀI LÀM:
## TẠO DATABASE:
![Screenshot 2025-03-24 204658](https://github.com/user-attachments/assets/6ad17106-6446-4a7a-b374-29f5a8e8636a)
## TẠO CƠ SỞ DỮ LIỆU QUAN HỆ VỚI TÊN QLSV GỒM CÁC BẢNG SAU:
- TẠO BẢNG:
![Screenshot 2025-03-24 205318](https://github.com/user-attachments/assets/2bb7f0d1-567a-492d-a538-fd0b42dccc97)
- SAU KHI TẠO BẢNG XONG NHỚ ẤN CLR + S ĐỂ LƯU VÀO , ĐẶT TÊN CHO BẢNG
![image](https://github.com/user-attachments/assets/7e07d592-a4e8-4d55-91fa-d063c5892159)
1. BẢNG SINH VIÊN:
 - Tạo bảng sinh viên bao gồm các thuộc tính dưới đây:
![Screenshot 2025-03-24 205710](https://github.com/user-attachments/assets/76e5440e-0574-4181-a7c2-15f2023d9a7f)
 - masv, hoten là kiểu dữ liệu nchar (Đây là kiểu dữ liệu chuỗi ký tự với độ dài cố định là n ký tự. Kích thước tối đa của n có thể là từ 1 đến 4.000. Số lượng ký tự này sẽ luôn luôn cố định, ngay cả khi chuỗi bạn lưu trữ ngắn hơn độ dài đã định)
 - ngaysinh là kiểu dữ liệu date ( Đây là kiểu dữ liệu dùng để nhập thông tin ngày, tháng, năm sinh )
   
2. BẢNG LỚP:
![image](https://github.com/user-attachments/assets/863954d6-2416-4807-8a14-ed2e2c25238f)

3. BẢNG GVCN:


   

