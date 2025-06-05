# BÀI TẬP VỀ NHÀ 03 - MÔN HỆ QUẢN TRỊ CSDL:

# DEADLINE: 23H59 NGÀY 30/03/2025

# ĐIỀU KIỆN: (ĐÃ LÀM XONG BÀI 2)

# BÀI TOÁN: Sửa bài 2 để có csdl như sau:
  + SinhVien(#masv,hoten,NgaySinh)
  + Lop(#maLop,tenLop)
  + GVCN(#@maLop,#@magv,#HK)
  + LopSV(#@maLop,#@maSV,ChucVu)
  + GiaoVien(#magv,hoten,NgaySinh,@maBM)
  + BoMon(#MaBM,tenBM,@maKhoa)
  + Khoa(#maKhoa,tenKhoa)
  + MonHoc(#mamon,Tenmon,STC)
  + LopHP(#maLopHP,TenLopHP,HK,@maMon,@maGV)
  + DKMH(#id_dk, @maLopHP,@maSV,DiemThi,PhanTramThi)
  + Diem(#id, @id_dk, diem)

# YÊU CẦU:
1. Sửa bảng DKMH và bảng Điểm từ bài tập 2 để có các bảng như yêu cầu.
2. Nhập dữ liệu demo cho các bảng (nhập có kiểm soát từ tính năng Edit trên UI của mssm)
3. Viết lệnh truy vấn để: Tính được điểm thành phần của 1 sinh viên đang học tại 1 lớp học phần.

# HÌNH THỨC LÀM BÀI:
1. Tạo file bai_tap3.md trên cùng repository của bài tập 2:
   Nội dung chứa đề bài, và ảnh chụp quá trình thao tác các yêu cầu khác.
2. Chụp ảnh quá trình sửa bảng DKMH và quá trình thêm bảng Diem, chú ý @ là FK, và thêm CK cho trường điểm
3. Hình sau khi chụp paste trực tiếp vào file bai_tap3.md trên github, cần mô tả các phần trên ảnh để tỏ ra là hiểu hết!
4. dùng tính năng: Tasks -> Generate Scrips => sinh ra file: bai_tap_3_schema.sql  (chỉ chứa lệnh tạo cấu trúc của db)
5. dùng tính năng: Tasks -> Generate Scrips => advance => Check Data only => sinh ra file: bai_tap_3_data.sql  (chỉ chứa dữ liệu đã nhập demo vào db)
6. Tạo diagram mô tả các PK, FK của db. Chụp hình kết quả các bảng có các đường nối 1-->nhiều
7. upload 2 file  bai_tap_3_schema.sql và bai_tap_3_data.sql lên repository.
8. nhớ commit để save nội dung file bai_tap3.md

## DEADLINE: 23H59 NGÀY 30/03/2025

## BÀI LÀM:
## TẠO BẢNG ĐIỂM VÀ SỬA BẢNG DKMH THEO YÊU CẦU:

1. TẠO BẢNG ĐIỂM:

![image](https://github.com/user-attachments/assets/166ba1c8-4df5-4a88-8728-389c83aa2131)

- THIẾT LẬP RẰNG BUỘC CHO THUỘC TÍNH ĐIỂM (CK):

![image](https://github.com/user-attachments/assets/becb1434-66cc-443a-b77e-ed388d4f7b70)

2. SỬA BẢNG DKMH:

![image](https://github.com/user-attachments/assets/f1350379-c805-4427-a12f-60e0c8686b1e)

3. TẠO KHÓA NGOẠI (FK):

![image](https://github.com/user-attachments/assets/83c63724-009a-41f2-8cae-495b0c02bfef)

4. TẠO DIAGRAM:

![image](https://github.com/user-attachments/assets/08f03173-e482-43fc-8119-5106533c999a)

## NHẬP DỮ LIỆU DEMO CHO CÁC BẢNG:

1. BẢNG SINH VIÊN:

![image](https://github.com/user-attachments/assets/52fbbc41-1e07-4c0e-9a39-1e5576e8f08a)

2. BẢNG DKHM:

![image](https://github.com/user-attachments/assets/abf08e27-ea34-4604-a69a-8b4a09888b52)

3. BẢNG ĐIỂM:

![image](https://github.com/user-attachments/assets/35463a2c-af87-4312-94cd-ad87e8a9667e)

4. BẢNG MONHOC:

![image](https://github.com/user-attachments/assets/3c1f57dd-d7fe-4b4b-a932-8258df669291)

5. BẢNG KHOA:

![image](https://github.com/user-attachments/assets/408a02e4-dc3b-46a3-8079-c4ee15ff288c)

6. BẢNG BOMON:

![image](https://github.com/user-attachments/assets/5870efe6-c45c-4945-a3c5-540c4fb58f9f)

7. BẢNG GIAOVIEN:

![image](https://github.com/user-attachments/assets/afc4c4e7-1399-4c32-9781-229d153fd4e3)

8. BẢNG LOPHP:

![image](https://github.com/user-attachments/assets/c328180c-28af-436d-af79-5bc6c176b4c6)

## TRUY VẤN VÀ TÍNH ĐIỂM:

1. TẠO NEW QUERY SAU ĐÓ VIẾT CODE TRUY VẤN ĐỂ TÍNH ĐIỂM TP CỦA 1 SINH VIÊN ĐANG HỌC TẠI 1 LỚP HỌC PHẦN: 

![image](https://github.com/user-attachments/assets/828546e0-24b8-4ba1-bc34-c2bd5c82aae3)

2. KẾT QUẢ THU ĐƯỢC:

![image](https://github.com/user-attachments/assets/e8f128f8-82b0-4a49-b7b9-e79793bc1c32)

3. LỆNH ĐỂ TRUY VẤN:

```sql
  SELECT 
    sv.maSV, 
    sv.hoTen, 
    lhp.maLopHP, 
    lhp.TenLopHP, 
    dkmh.DiemThi, 
    dkmh.PhanTramThi, 
    dkmh.DiemThanhPhan,

    ((dkmh.DiemThi * dkmh.PhanTramThi) + dkmh.DiemThanhPhan) / 2 AS DiemTongKet

FROM 
    DKMH dkmh
JOIN 
    SinhVien sv ON dkmh.maSV = sv.maSV
JOIN 
    LopHP lhp ON dkmh.maLopHP = lhp.maLopHP
```

