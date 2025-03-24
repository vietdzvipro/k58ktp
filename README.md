## K58KTP
Bài tập 2 của sv: Nguyễn Hoàng Việt - k225480106074 - Môn quản trị cơ sở dữ liệu 
## BÀI TOÁN:
- Tạo csdl quan hệ với tên QLSV gồm các bảng sau:
+ SinhVien(#masv,hoten,NgaySinh)
  + Lop(#maLop)
  + Lop(#maLop,tenLop)
  + GVCN(#@maLop,#@magv,#HK)
+ LopSV(#@maLop,#@maSV,ChucVu)
+ GiaoVien(#magv,hoten,NgaySinh,@maBM)
+ BoMon(#MaBM,tenBM,@maKhoa)
+ Khoa(#maKhoa,tenKhoa)
+ MonHoc(#mamon,Tenmon,STC)
  + LopHP(#maLopHP,@maMon,@maGV)
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
        ![image](https://github.com/user-attachments/assets/b5caabb7-f51a-46b5-abb2-eb480fbf6d17)
