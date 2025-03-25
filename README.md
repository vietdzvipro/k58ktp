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
 
![image](https://github.com/user-attachments/assets/e574e49f-3d59-4921-a063-8edaafcd95cf)

4. BẢNG LOPSV:

![image](https://github.com/user-attachments/assets/0ea4a20d-4d47-4611-9996-44a0e91b6e39)

5. BẢNG GIAOVIEN:

![image](https://github.com/user-attachments/assets/bba8d512-d8a9-425f-a021-e747bdb86416)

6.BẢNG BOMON:

![image](https://github.com/user-attachments/assets/3e11f141-27ea-43cf-8fc7-523abbf60a4d)

7. BẢNG KHOA:

![image](https://github.com/user-attachments/assets/f0d05897-3e25-4253-9840-7ccf1174b88d)

8. BẢNG MONHOC:

![image](https://github.com/user-attachments/assets/287602e0-ab68-469c-b6ff-ebd917d16700)

9. BẢNG LOPHP:

![image](https://github.com/user-attachments/assets/c677aa13-c733-4501-88b2-932041b8174c)

10. BẢNG DKMH:

![image](https://github.com/user-attachments/assets/538bf40f-6ad5-4d0b-90a2-d4e0d3460b38)

## TẠO KHÓA NGOẠI:

1. BẢNG GVCN:

- BƯỚC 1: CHỌN DESIGN, SAU ĐÓ ẤN CHUỘT PHẢI CHỌN RELATIONSHIP ĐỂ THIẾT LẬP KHÓA NGOẠI

![image](https://github.com/user-attachments/assets/fbb2bf91-8d01-4deb-8bcb-b3696f2f9bc2)

- BƯỚC 2: CÁCH ĐỂ THIẾT LẬP KHÓA NGOẠI

![image](https://github.com/user-attachments/assets/539b9afb-f023-45c6-b362-0da20090152c)

- BƯỚC 3: SAU KHI THIẾT LẬP TA SẼ ĐƯỢC NHƯ SAU:

![image](https://github.com/user-attachments/assets/593ffb6f-49cd-4409-8e8d-0359ed12cb02)

 - Giaovien(#magv,hoten,NgaySinh,@maBM)
 - magv là khóa chính của bảng GiaoVien, đảm bảo mỗi giáo viên có một mã duy nhất
 - GVCN(#@maLop,#@magv,HK)
 - maLop và magv cùng tạp thành khóa chính (PK) của bảng GVCN
 - maGV trong GVCN là khóa phụ (FK) thám chiến đến magv trong bảng GiaoVien, đảm bảo rằng một giáo viên được phân công làm GVCN phải tồn tại trong danh sách GiaoVien
- TƯƠNG TỰ CÁC BẢNG KHÁC:
2. BẢNG LopSV:

![image](https://github.com/user-attachments/assets/649d8bea-a265-41f4-a8dc-2f7ddec6925b)

3. BẢNG GiaoVien:

![image](https://github.com/user-attachments/assets/0134f149-a029-4523-aaaf-c3550c5f4f47)

4.BẢNG BOMON:

![image](https://github.com/user-attachments/assets/1319d8a8-1572-4c7a-aef7-61add83ad9fd)

5. BẢNG KHOA:

![image](https://github.com/user-attachments/assets/e228bc35-c352-4684-9b50-ca0105eba3ed)

6. BẢNG MONHOC:

![image](https://github.com/user-attachments/assets/f2547c7a-46ff-4cea-b319-b3dd38c02ecf)

7. BẢNG LOPHP:

![image](https://github.com/user-attachments/assets/a2cb00de-5af0-4684-9369-91e4551bc066)

8. BẢNG KHOA:

![image](https://github.com/user-attachments/assets/7e09fe99-df94-4cc0-b53c-0c000ca55326)

9. BẢNG DKMH: 

![image](https://github.com/user-attachments/assets/39ec634e-6006-413c-82b3-88bf969a8bfc)

## THIẾT LẬP RẰNG BUỘC (CK)

- CÁC BƯỚC ĐỂ TẠO RẰNG BUỘC:
- CHỌN DESIGN SAU ĐÓ ẤN CHUỘT PHẢI RỒI SẼ HIỆN RA NHƯ SAU:

![image](https://github.com/user-attachments/assets/84828b72-32bd-4fb1-9c8b-bf819ed1002b)

- ĐÂY LÀ CÁC BƯỚC THIẾT LẬP RẰNG BUỘC:

![image](https://github.com/user-attachments/assets/0fb46757-3569-4168-8eaf-5cb2e29f3d6f)


VD: TA RẰNG BUỘC THUỘC TÍNH CỦA BẢNG SINH VIÊN LÀ NGAYSINH < 2010-12-31 TỨC LÀ SẼ KHÔNG THỂ NHẬP ĐƯỢC DỮ LIỆU TỪ 2011-01-01

- ĐÂY LÀ SAU KHI NHẬP SAI DỮ LIỆU THÌ NÓ SẼ HIỆN NHƯ NÀY:

![image](https://github.com/user-attachments/assets/256afb0b-39b4-4742-8768-84199f1e0aab)

- CÁC BẢNG KHÁC CÓ THỂ THIẾT LẬP RẰNG BUỘC TƯƠNG TỰ NHƯ THẾ (NẾU CẦN).

## ĐÂY LÀ CÁCH ĐỂ MỞ RA XEM CODE:

![image](https://github.com/user-attachments/assets/3be0dd1e-b03f-4274-8aa1-ad63f174b328)

- ĐÂY LÀ CODE CỦA DATABASE:

![image](https://github.com/user-attachments/assets/7e8d70bb-bbfa-4a0c-9902-b68fc7d3288e)

- MUỐN XEM CODE CỦA CÁC BẢNG KHÁC THÌ LÀM TƯƠNG TỰ.








