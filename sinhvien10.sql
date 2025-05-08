-- Tạo cơ sở dữ liệu
CREATE DATABASE QuanLySinhVien;

USE QuanLySinhVien;

-- Bảng nguoidung
CREATE TABLE nguoidung (
    MaSinhVien NVARCHAR(30) PRIMARY KEY,
    MatKhau NVARCHAR(30) NOT NULL,
    VaiTro INT NOT NULL
);

-- Chèn dữ liệu vào bảng nguoidung
INSERT INTO nguoidung (MaSinhVien, MatKhau, VaiTro) VALUES
('SV001', 'password1', 1),
('SV002', 'password2', 1),
('SV003', 'password3', 1),
('SV004', 'password4', 1),
('SV005', 'password5', 1),
('SV006', 'password6', 1),
('SV007', 'password7', 1),
('SV008', 'password8', 1),
('SV009', 'password9', 1),
('SV010', 'password10', 1),
('SV011', 'password11', 1),
('SV012', 'password12', 1),
('SV013', 'password13', 1),
('SV014', 'password14', 1),
('SV015', 'password15', 1),
('SV016', 'password16', 1),
('SV017', 'password17', 1),
('SV018', 'password18', 1),
('SV019', 'password19', 1),
('SV020', 'password20', 1);

-- Bảng thongtincanhan
CREATE TABLE thongtincanhan (
    MaSinhVien NVARCHAR(30) PRIMARY KEY,
    HoTen NVARCHAR(50),
    GioiTinh NVARCHAR(50),
    DanToc NVARCHAR(50),
    SoCCCD INT,
    Email NVARCHAR(50),
    TinhThanhPho NVARCHAR(50),
    QuanHuyen NVARCHAR(50),
    QuocGia NVARCHAR(50),
    DiaChiThuongTru NVARCHAR(50),
    TrinhDoNgoaiNgu NVARCHAR(50),
    TinhTrangHoc NVARCHAR(50),
    MaNganh NVARCHAR(30),
    NienKhoa NVARCHAR(50),
    LoaiHinhDaoTao NVARCHAR(50),
    LopSinhVien NVARCHAR(50),
    ChucVu NVARCHAR(50),
    CoVanHocTap NVARCHAR(50),
    LH_CVHT NVARCHAR(50),
    TenNganHang NVARCHAR(50),
    SoTaiKhoan NVARCHAR(50),
    EmailNganHang NVARCHAR(50),
    TenNguoiThan NVARCHAR(50),
    QuanHe NVARCHAR(50),
    SDTNguoiThan NVARCHAR(30),
    DiaChiNguoiThan NVARCHAR(50),
    FOREIGN KEY (MaSinhVien) REFERENCES nguoidung(MaSinhVien)
);

-- Chèn dữ liệu vào bảng thongtincanhan
INSERT INTO thongtincanhan (MaSinhVien, HoTen, GioiTinh, DanToc, SoCCCD, Email, TinhThanhPho, QuanHuyen, QuocGia, DiaChiThuongTru, TrinhDoNgoaiNgu, TinhTrangHoc, MaNganh, NienKhoa, LoaiHinhDaoTao, LopSinhVien, ChucVu, CoVanHocTap, LH_CVHT, TenNganHang, SoTaiKhoan, EmailNganHang, TenNguoiThan, QuanHe, SDTNguoiThan, DiaChiNguoiThan) VALUES
('SV001', 'Nguyen Van A', 'Nam', 'Kinh', 123456789, 'sv001@example.com', 'Hanoi', 'Ba Dinh', 'Vietnam', '123 Nguyen Trai', 'B1', 'Dang hoc', 'NG001', '2020-2024', 'Chinh quy', 'Lop A', 'Sinh vien', 'Co Van 1', 'LH001', 'Vietcombank', '1234567890', 'bank@example.com', 'Nguyen Thi B', 'Me', '0987654321', '456 Le Loi'),
('SV002', 'Tran Thi B', 'Nu', 'Kinh', 987654321, 'sv002@example.com', 'HCMC', 'Quan 1', 'Vietnam', '789 Tran Hung Dao', 'B2', 'Dang hoc', 'NG002', '2020-2024', 'Chinh quy', 'Lop B', 'Sinh vien', 'Co Van 2', 'LH002', 'Techcombank', '0987654321', 'bank2@example.com', 'Tran Van C', 'Cha', '0123456789', '321 Nguyen Hue'),
('SV003', 'Le Van C', 'Nam', 'Kinh', 135792468, 'sv003@example.com', 'Da Nang', 'Hai Chau', 'Vietnam', '456 Le Duan', 'C1', 'Dang hoc', 'NG003', '2020-2024', 'Chinh quy', 'Lop C', 'Sinh vien', 'Co Van 3', 'LH003', 'Agribank', '1357924680', 'bank3@example.com', 'Le Thi D', 'Me', '0369852147', '789 Pham Ngu Lao'),
('SV004', 'Pham Thi D', 'Nu', 'Kinh', 246813579, 'sv004@example.com', 'Hue', 'Phu Nhuan', 'Vietnam', '123 Hai Ba Trung', 'A2', 'Dang hoc', 'NG004', '2020-2024', 'Chinh quy', 'Lop D', 'Sinh vien', 'Co Van 4', 'LH004', 'BIDV', '2468135790', 'bank4@example.com', 'Pham Van E', 'Cha', '0987123456', '456 Nguyen Thi Minh Khai'),
('SV005', 'Hoang Van E', 'Nam', 'Kinh', 369258147, 'sv005@example.com', 'Can Tho', 'Ninh Kieu', 'Vietnam', '789 Tran Phu', 'B1', 'Dang hoc', 'NG005', '2020-2024', 'Chinh quy', 'Lop E', 'Sinh vien', 'Co Van 5', 'LH005', 'Vietinbank', '3692581470', 'bank5@example.com', 'Hoang Thi F', 'Me', '0123987654', '321 Le Lai'),
('SV006', 'Nguyen Thi F', 'Nu', 'Kinh', 258147369, 'sv006@example.com', 'Nha Trang', 'Loc Tho', 'Vietnam', '456 Nguyen Van Troi', 'C2', 'Dang hoc', 'NG006', '2020-2024', 'Chinh quy', 'Lop F', 'Sinh vien', 'Co Van 6', 'LH006', 'Sacombank', '2581473690', 'bank6@example.com', 'Nguyen Van G', 'Cha', '0369123456', '789 Tran Quang Khai'),
('SV007', 'Tran Van G', 'Nam', 'Kinh', 147258369, 'sv007@example.com', 'Vung Tau', 'Phuong 1', 'Vietnam', '123 Le Hong Phong', 'A1', 'Dang hoc', 'NG007', '2020-2024', 'Chinh quy', 'Lop G', 'Sinh vien', 'Co Van 7', 'LH007', 'MBBank', '1472583690', 'bank7@example.com', 'Tran Thi H', 'Me', '0987234567', '456 Nguyen An Ninh'),
('SV008', 'Le Thi H', 'Nu', 'Kinh', 369147258, 'sv008@example.com', 'Quy Nhon', 'Ngo May', 'Vietnam', '789 Hai Ba Trung', 'B2', 'Dang hoc', 'NG008', '2020-2024', 'Chinh quy', 'Lop H', 'Sinh vien', 'Co Van 8', 'LH008', 'VPBank', '3691472580', 'bank8@example.com', 'Le Van I', 'Cha', '0123876543', '321 Tran Hung Dao'),
('SV009', 'Pham Van I', 'Nam', 'Kinh', 258369147, 'sv009@example.com', 'Bien Hoa', 'Tan Mai', 'Vietnam', '456 Nguyen Hue', 'C1', 'Dang hoc', 'NG009', '2020-2024', 'Chinh quy', 'Lop I', 'Sinh vien', 'Co Van 9', 'LH009', 'Techcombank', '2583691470', 'bank9@example.com', 'Pham Thi K', 'Me', '0369789456', '789 Le Loi'),
('SV010', 'Hoang Thi K', 'Nu', 'Kinh', 147369258, 'sv010@example.com', 'Buon Ma Thuot', 'Tan Loi', 'Vietnam', '123 Tran Phu', 'A2', 'Dang hoc', 'NG010', '2020-2024', 'Chinh quy', 'Lop K', 'Sinh vien', 'Co Van 10', 'LH010', 'Agribank', '1473692580', 'bank10@example.com', 'Hoang Van L', 'Cha', '0987345678', '456 Nguyen Trai'),
('SV011', 'Nguyen Van L', 'Nam', 'Kinh', 369258147, 'sv011@example.com', 'Pleiku', 'Yen Do', 'Vietnam', '789 Le Duan', 'B1', 'Dang hoc', 'NG011', '2020-2024', 'Chinh quy', 'Lop L', 'Sinh vien', 'Co Van 11', 'LH011', 'Vietcombank', '3692581470', 'bank11@example.com', 'Nguyen Thi M', 'Me', '0123456789', '321 Hai Ba Trung'),
('SV012', 'Tran Thi M', 'Nu', 'Kinh', 258147369, 'sv012@example.com', 'Tuy Hoa', 'Phuong 1', 'Vietnam', '456 Nguyen Thi Minh Khai', 'C2', 'Dang hoc', 'NG012', '2020-2024', 'Chinh quy', 'Lop M', 'Sinh vien', 'Co Van 12', 'LH012', 'BIDV', '2581473690', 'bank12@example.com', 'Tran Van N', 'Cha', '0369123456', '789 Le Hong Phong'),
('SV013', 'Le Van N', 'Nam', 'Kinh', 147258369, 'sv013@example.com', 'Dong Ha', 'Phuong 1', 'Vietnam', '123 Tran Hung Dao', 'A1', 'Dang hoc', 'NG013', '2020-2024', 'Chinh quy', 'Lop N', 'Sinh vien', 'Co Van 13', 'LH013', 'Vietinbank', '1472583690', 'bank13@example.com', 'Le Thi O', 'Me', '0987234567', '456 Nguyen Van Troi'),
('SV014', 'Pham Thi O', 'Nu', 'Kinh', 369147258, 'sv014@example.com', 'Tam Ky', 'An Xuan', 'Vietnam', '789 Le Loi', 'B2', 'Dang hoc', 'NG014', '2020-2024', 'Chinh quy', 'Lop O', 'Sinh vien', 'Co Van 14', 'LH014', 'Sacombank', '3691472580', 'bank14@example.com', 'Pham Van P', 'Cha', '0123876543', '321 Tran Phu'),
('SV015', 'Hoang Van P', 'Nam', 'Kinh', 258369147, 'sv015@example.com', 'Quang Ngai', 'Tran Hung Dao', 'Vietnam', '456 Hai Ba Trung', 'C1', 'Dang hoc', 'NG015', '2020-2024', 'Chinh quy', 'Lop P', 'Sinh vien', 'Co Van 15', 'LH015', 'MBBank', '2583691470', 'bank15@example.com', 'Hoang Thi Q', 'Me', '0369789456', '789 Nguyen Hue'),
('SV016', 'Nguyen Thi Q', 'Nu', 'Kinh', 147369258, 'sv016@example.com', 'Kon Tum', 'Thang Loi', 'Vietnam', '123 Le Duan', 'A2', 'Dang hoc', 'NG016', '2020-2024', 'Chinh quy', 'Lop Q', 'Sinh vien', 'Co Van 16', 'LH016', 'VPBank', '1473692580', 'bank16@example.com', 'Nguyen Van R', 'Cha', '0987345678', '456 Tran Hung Dao'),
('SV017', 'Tran Van R', 'Nam', 'Kinh', 369258147, 'sv017@example.com', 'Phan Thiet', 'Duc Nghia', 'Vietnam', '789 Nguyen Thi Minh Khai', 'B1', 'Dang hoc', 'NG017', '2020-2024', 'Chinh quy', 'Lop R', 'Sinh vien', 'Co Van 17', 'LH017', 'Techcombank', '3692581470', 'bank17@example.com', 'Tran Thi S', 'Me', '0123456789', '321 Le Hong Phong'),
('SV018', 'Le Thi S', 'Nu', 'Kinh', 258147369, 'sv018@example.com', 'Long Xuyen', 'My Long', 'Vietnam', '456 Tran Phu', 'C2', 'Dang hoc', 'NG018', '2020-2024', 'Chinh quy', 'Lop S', 'Sinh vien', 'Co Van 18', 'LH018', 'Agribank', '2581473690', 'bank18@example.com', 'Le Van T', 'Cha', '0369123456', '789 Nguyen Van Troi'),
('SV019', 'Pham Van T', 'Nam', 'Kinh', 147258369, 'sv019@example.com', 'Ca Mau', 'Phuong 5', 'Vietnam', '123 Le Loi', 'A1', 'Dang hoc', 'NG019', '2020-2024', 'Chinh quy', 'Lop T', 'Sinh vien', 'Co Van 19', 'LH019', 'Vietcombank', '1472583690', 'bank19@example.com', 'Pham Thi U', 'Me', '0987234567', '456 Hai Ba Trung'),
('SV020', 'Hoang Thi U', 'Nu', 'Kinh', 369147258, 'sv020@example.com', 'Soc Trang', 'Phuong 1', 'Vietnam', '789 Nguyen Hue', 'B2', 'Dang hoc', 'NG020', '2020-2024', 'Chinh quy', 'Lop U', 'Sinh vien', 'Co Van 20', 'LH020', 'BIDV', '3691472580', 'bank20@example.com', 'Hoang Van V', 'Cha', '0123876543', '321 Tran Hung Dao');

-- Bảng Nganh
CREATE TABLE Nganh (
    MaNganh NVARCHAR(30) PRIMARY KEY,
    TenNganh NVARCHAR(50) NOT NULL,
    MaSinhVien NVARCHAR(30),
    FOREIGN KEY (MaSinhVien) REFERENCES thongtincanhan(MaSinhVien)
);

-- Chèn dữ liệu vào bảng Nganh
INSERT INTO Nganh (MaNganh, TenNganh, MaSinhVien) VALUES
('NG001', 'Cong Nghe Thong Tin', 'SV001'),
('NG002', 'Kinh Te', 'SV002'),
('NG003', 'Dien Tu', 'SV003'),
('NG004', 'Co Khi', 'SV004'),
('NG005', 'Xay Dung', 'SV005'),
('NG006', 'Hoa Hoc', 'SV006'),
('NG007', 'Sinh Hoc', 'SV007'),
('NG008', 'Van Hoc', 'SV008'),
('NG009', 'Lich Su', 'SV009'),
('NG010', 'Dia Ly', 'SV010'),
('NG011', 'Toan Hoc', 'SV011'),
('NG012', 'Vat Ly', 'SV012'),
('NG013', 'Hoa Hoc', 'SV013'),
('NG014', 'Sinh Hoc', 'SV014'),
('NG015', 'Van Hoc', 'SV015'),
('NG016', 'Lich Su', 'SV016'),
('NG017', 'Dia Ly', 'SV017'),
('NG018', 'Toan Hoc', 'SV018'),
('NG019', 'Vat Ly', 'SV019'),
('NG020', 'Hoa Hoc', 'SV020');

-- Bảng ChuongTrinhDaoTao
CREATE TABLE ChuongTrinhDaoTao (
    MaHocPhan NVARCHAR(30) PRIMARY KEY,
    TenHocPhan NVARCHAR(50) NOT NULL,
    SoTinChi INT NOT NULL,
    LyThuyet INT,
    ThucHanh INT,
    TuLuan INT,
    ThucTap INT,
    HocPhanHocTruoc NVARCHAR(50),
    HocPhanThayThe NVARCHAR(50),
    MaNganh NVARCHAR(30),
    HocKy INT,
    FOREIGN KEY (MaNganh) REFERENCES Nganh(MaNganh)
);

-- Chèn dữ liệu vào bảng ChuongTrinhDaoTao
INSERT INTO ChuongTrinhDaoTao (MaHocPhan, TenHocPhan, SoTinChi, LyThuyet, ThucHanh, TuLuan, ThucTap, HocPhanHocTruoc, HocPhanThayThe, MaNganh, HocKy) VALUES
('HP001', 'Lap Trinh Co Ban', 3, 30, 15, 0, 0, NULL, NULL, 'NG001', 1),
('HP002', 'Kinh Te Vi Mo', 3, 45, 0, 0, 0, NULL, NULL, 'NG002', 1),
('HP003', 'Dien Tu Co Ban', 3, 30, 15, 0, 0, NULL, NULL, 'NG003', 1),
('HP004', 'Co Khi Che Tao', 3, 30, 15, 0, 0, NULL, NULL, 'NG004', 1),
('HP005', 'Xay Dung Dan Dung', 3, 30, 15, 0, 0, NULL, NULL, 'NG005', 1),
('HP006', 'Hoa Hoc Dai Cuong', 3, 45, 0, 0, 0, NULL, NULL, 'NG006', 1),
('HP007', 'Sinh Hoc Dai Cuong', 3, 45, 0, 0, 0, NULL, NULL, 'NG007', 1),
('HP008', 'Van Hoc Viet Nam', 3, 45, 0, 0, 0, NULL, NULL, 'NG008', 1),
('HP009', 'Lich Su The Gioi', 3, 45, 0, 0, 0, NULL, NULL, 'NG009', 1),
('HP010', 'Dia Ly Kinh Te', 3, 45, 0, 0, 0, NULL, NULL, 'NG010', 1),
('HP011', 'Toan Cao Cap', 3, 45, 0, 0, 0, NULL, NULL, 'NG011', 1),
('HP012', 'Vat Ly Dai Cuong', 3, 45, 0, 0, 0, NULL, NULL, 'NG012', 1),
('HP013', 'Hoa Hoc Huu Co', 3, 30, 15, 0, 0, 'HP006', NULL, 'NG006', 2),
('HP014', 'Sinh Hoc Te Bao', 3, 30, 15, 0, 0, 'HP007', NULL, 'NG007', 2),
('HP015', 'Van Hoc Co Dien', 3, 45, 0, 0, 0, 'HP008', NULL, 'NG008', 2),
('HP016', 'Lich Su Viet Nam', 3, 45, 0, 0, 0, 'HP009', NULL, 'NG009', 2),
('HP017', 'Dia Ly Tu Nhien', 3, 45, 0, 0, 0, 'HP010', NULL, 'NG010', 2),
('HP018', 'Toan Ung Dung', 3, 30, 15, 0, 0, 'HP011', NULL, 'NG011', 2),
('HP019', 'Vat Ly Hat Nhan', 3, 30, 15, 0, 0, 'HP012', NULL, 'NG012', 2),
('HP020', 'Hoa Hoc Vo Co', 3, 30, 15, 0, 0, 'HP006', NULL, 'NG006', 2);

-- Bảng DangKyHocPhan
CREATE TABLE DangKyHocPhan (
    MaLopHocPhan NVARCHAR(30) PRIMARY KEY,
    MaHocPhan NVARCHAR(30),
    NgayBatDau DATETIME,
    NgayKetThuc DATETIME,
    Giangvien NVARCHAR(50),
    Lichhoc NVARCHAR(50),
    STC INT,
    TenLopHocPhan NVARCHAR(50),
    FOREIGN KEY (MaHocPhan) REFERENCES ChuongTrinhDaoTao(MaHocPhan)
);

-- Chèn dữ liệu vào bảng DangKyHocPhan
INSERT INTO DangKyHocPhan (MaLopHocPhan, MaHocPhan, NgayBatDau, NgayKetThuc, Giangvien, Lichhoc, STC, TenLopHocPhan) VALUES
('LHP001', 'HP001', '2023-09-01', '2023-12-15', 'GV001', 'T2 7-9', 3, 'Lop Hoc Phan 001'),
('LHP002', 'HP002', '2023-09-01', '2023-12-15', 'GV002', 'T3 7-9', 3, 'Lop Hoc Phan 002'),
('LHP003', 'HP003', '2023-09-01', '2023-12-15', 'GV003', 'T4 7-9', 3, 'Lop Hoc Phan 003'),
('LHP004', 'HP004', '2023-09-01', '2023-12-15', 'GV004', 'T5 7-9', 3, 'Lop Hoc Phan 004'),
('LHP005', 'HP005', '2023-09-01', '2023-12-15', 'GV005', 'T6 7-9', 3, 'Lop Hoc Phan 005'),
('LHP006', 'HP006', '2023-09-01', '2023-12-15', 'GV006', 'T2 10-12', 3, 'Lop Hoc Phan 006'),
('LHP007', 'HP007', '2023-09-01', '2023-12-15', 'GV007', 'T3 10-12', 3, 'Lop Hoc Phan 007'),
('LHP008', 'HP008', '2023-09-01', '2023-12-15', 'GV008', 'T4 10-12', 3, 'Lop Hoc Phan 008'),
('LHP009', 'HP009', '2023-09-01', '2023-12-15', 'GV009', 'T5 10-12', 3, 'Lop Hoc Phan 009'),
('LHP010', 'HP010', '2023-09-01', '2023-12-15', 'GV010', 'T6 10-12', 3, 'Lop Hoc Phan 010'),
('LHP011', 'HP011', '2023-09-01', '2023-12-15', 'GV011', 'T2 13-15', 3, 'Lop Hoc Phan 011'),
('LHP012', 'HP012', '2023-09-01', '2023-12-15', 'GV012', 'T3 13-15', 3, 'Lop Hoc Phan 012'),
('LHP013', 'HP013', '2023-09-01', '2023-12-15', 'GV013', 'T4 13-15', 3, 'Lop Hoc Phan 013'),
('LHP014', 'HP014', '2023-09-01', '2023-12-15', 'GV014', 'T5 13-15', 3, 'Lop Hoc Phan 014'),
('LHP015', 'HP015', '2023-09-01', '2023-12-15', 'GV015', 'T6 13-15', 3, 'Lop Hoc Phan 015'),
('LHP016', 'HP016', '2023-09-01', '2023-12-15', 'GV016', 'T2 16-18', 3, 'Lop Hoc Phan 016'),
('LHP017', 'HP017', '2023-09-01', '2023-12-15', 'GV017', 'T3 16-18', 3, 'Lop Hoc Phan 017'),
('LHP018', 'HP018', '2023-09-01', '2023-12-15', 'GV018', 'T4 16-18', 3, 'Lop Hoc Phan 018'),
('LHP019', 'HP019', '2023-09-01', '2023-12-15', 'GV019', 'T5 16-18', 3, 'Lop Hoc Phan 019'),
('LHP020', 'HP020', '2023-09-01', '2023-12-15', 'GV020', 'T6 16-18', 3, 'Lop Hoc Phan 020');

-- Bảng Ketquadangkyhocphan
CREATE TABLE Ketquadangkyhocphan (
    Stt INT,
    Mahocphan NVARCHAR(30),
    MaLophocphan NVARCHAR(30),
    STC INT,
    Ngaydangky DATETIME NOT NULL,
    Tenhocphan NVARCHAR(50),
    PRIMARY KEY (Mahocphan),
    FOREIGN KEY (MaLophocphan) REFERENCES DangKyHocPhan(MaLopHocPhan)
);

-- Chèn dữ liệu vào bảng Ketquadangkyhocphan
INSERT INTO Ketquadangkyhocphan (Stt, Mahocphan, MaLophocphan, STC, Ngaydangky, Tenhocphan) VALUES
(1, 'HP001', 'LHP001', 3, '2023-08-01', 'Lap Trinh Co Ban'),
(2, 'HP002', 'LHP002', 3, '2023-08-01', 'Kinh Te Vi Mo'),
(3, 'HP003', 'LHP003', 3, '2023-08-01', 'Dien Tu Co Ban'),
(4, 'HP004', 'LHP004', 3, '2023-08-01', 'Co Khi Che Tao'),
(5, 'HP005', 'LHP005', 3, '2023-08-01', 'Xay Dung Dan Dung'),
(6, 'HP006', 'LHP006', 3, '2023-08-01', 'Hoa Hoc Dai Cuong'),
(7, 'HP007', 'LHP007', 3, '2023-08-01', 'Sinh Hoc Dai Cuong'),
(8, 'HP008', 'LHP008', 3, '2023-08-01', 'Van Hoc Viet Nam'),
(9, 'HP009', 'LHP009', 3, '2023-08-01', 'Lich Su The Gioi'),
(10, 'HP010', 'LHP010', 3, '2023-08-01', 'Dia Ly Kinh Te'),
(11, 'HP011', 'LHP011', 3, '2023-08-01', 'Toan Cao Cap'),
(12, 'HP012', 'LHP012', 3, '2023-08-01', 'Vat Ly Dai Cuong'),
(13, 'HP013', 'LHP013', 3, '2023-08-01', 'Hoa Hoc Huu Co'),
(14, 'HP014', 'LHP014', 3, '2023-08-01', 'Sinh Hoc Te Bao'),
(15, 'HP015', 'LHP015', 3, '2023-08-01', 'Van Hoc Co Dien'),
(16, 'HP016', 'LHP016', 3, '2023-08-01', 'Lich Su Viet Nam'),
(17, 'HP017', 'LHP017', 3, '2023-08-01', 'Dia Ly Tu Nhien'),
(18, 'HP018', 'LHP018', 3, '2023-08-01', 'Toan Ung Dung'),
(19, 'HP019', 'LHP019', 3, '2023-08-01', 'Vat Ly Hat Nhan'),
(20, 'HP020', 'LHP020', 3, '2023-08-01', 'Hoa Hoc Vo Co');

-- Bảng LichThi
CREATE TABLE LichThi (
    TenHocPhan NVARCHAR(50),
    STC INT,
    NgayThi DATE,
    GioThi TIME,
    ThoiLuong INT,
    PhongThi NVARCHAR(50),
    LinkPhongThi NVARCHAR(50),
    LinkNopBai NVARCHAR(50),
    DiaDiem NVARCHAR(50),
    GhiChu NVARCHAR(50),
    Mahocphan NVARCHAR(30) PRIMARY KEY,
    FOREIGN KEY (Mahocphan) REFERENCES Ketquadangkyhocphan(Mahocphan)
);

-- Chèn dữ liệu vào bảng LichThi
INSERT INTO LichThi (TenHocPhan, STC, NgayThi, GioThi, ThoiLuong, PhongThi, LinkPhongThi, LinkNopBai, DiaDiem, GhiChu, Mahocphan) VALUES
('Lap Trinh Co Ban', 3, '2023-12-20', '08:00:00', 90, 'P101', 'link1', 'linknop1', 'Truong A', 'Ghi chu 1', 'HP001'),
('Kinh Te Vi Mo', 3, '2023-12-21', '08:00:00', 90, 'P102', 'link2', 'linknop2', 'Truong B', 'Ghi chu 2', 'HP002'),
('Dien Tu Co Ban', 3, '2023-12-22', '08:00:00', 90, 'P103', 'link3', 'linknop3', 'Truong C', 'Ghi chu 3', 'HP003'),
('Co Khi Che Tao', 3, '2023-12-23', '08:00:00', 90, 'P104', 'link4', 'linknop4', 'Truong D', 'Ghi chu 4', 'HP004'),
('Xay Dung Dan Dung', 3, '2023-12-24', '08:00:00', 90, 'P105', 'link5', 'linknop5', 'Truong E', 'Ghi chu 5', 'HP005'),
('Hoa Hoc Dai Cuong', 3, '2023-12-25', '08:00:00', 90, 'P106', 'link6', 'linknop6', 'Truong F', 'Ghi chu 6', 'HP006'),
('Sinh Hoc Dai Cuong', 3, '2023-12-26', '08:00:00', 90, 'P107', 'link7', 'linknop7', 'Truong G', 'Ghi chu 7', 'HP007'),
('Van Hoc Viet Nam', 3, '2023-12-27', '08:00:00', 90, 'P108', 'link8', 'linknop8', 'Truong H', 'Ghi chu 8', 'HP008'),
('Lich Su The Gioi', 3, '2023-12-28', '08:00:00', 90, 'P109', 'link9', 'linknop9', 'Truong I', 'Ghi chu 9', 'HP009'),
('Dia Ly Kinh Te', 3, '2023-12-29', '08:00:00', 90, 'P110', 'link10', 'linknop10', 'Truong K', 'Ghi chu 10', 'HP010'),
('Toan Cao Cap', 3, '2023-12-30', '08:00:00', 90, 'P111', 'link11', 'linknop11', 'Truong L', 'Ghi chu 11', 'HP011'),
('Vat Ly Dai Cuong', 3, '2023-12-31', '08:00:00', 90, 'P112', 'link12', 'linknop12', 'Truong M', 'Ghi chu 12', 'HP012'),
('Hoa Hoc Huu Co', 3, '2024-01-01', '08:00:00', 90, 'P113', 'link13', 'linknop13', 'Truong N', 'Ghi chu 13', 'HP013'),
('Sinh Hoc Te Bao', 3, '2024-01-02', '08:00:00', 90, 'P114', 'link14', 'linknop14', 'Truong O', 'Ghi chu 14', 'HP014'),
('Van Hoc Co Dien', 3, '2024-01-03', '08:00:00', 90, 'P115', 'link15', 'linknop15', 'Truong P', 'Ghi chu 15', 'HP015'),
('Lich Su Viet Nam', 3, '2024-01-04', '08:00:00', 90, 'P116', 'link16', 'linknop16', 'Truong Q', 'Ghi chu 16', 'HP016'),
('Dia Ly Tu Nhien', 3, '2024-01-05', '08:00:00', 90, 'P117', 'link17', 'linknop17', 'Truong R', 'Ghi chu 17', 'HP017'),
('Toan Ung Dung', 3, '2024-01-06', '08:00:00', 90, 'P118', 'link18', 'linknop18', 'Truong S', 'Ghi chu 18', 'HP018'),
('Vat Ly Hat Nhan', 3, '2024-01-07', '08:00:00', 90, 'P119', 'link19', 'linknop19', 'Truong T', 'Ghi chu 19', 'HP019'),
('Hoa Hoc Vo Co', 3, '2024-01-08', '08:00:00', 90, 'P120', 'link20', 'linknop20', 'Truong U', 'Ghi chu 20', 'HP020');

-- Bảng Diem
CREATE TABLE Diem (
    Mahocphan NVARCHAR(30) PRIMARY KEY,
    SoTinChi INT,
    Diem10 DECIMAL(4,2),
    Diem4 DECIMAL(4,2),
    DiemChu NVARCHAR(50),
    KetQua NVARCHAR(50),
    FOREIGN KEY (Mahocphan) REFERENCES LichThi(Mahocphan)
);

-- Chèn dữ liệu vào bảng Diem
INSERT INTO Diem (Mahocphan, SoTinChi, Diem10, Diem4, DiemChu, KetQua) VALUES
('HP001', 3, 8.5, 3.5, 'B+', 'Dat'),
('HP002', 3, 7.0, 3.0, 'B', 'Dat'),
('HP003', 3, 9.0, 4.0, 'A', 'Dat'),
('HP004', 3, 6.5, 2.5, 'C+', 'Dat'),
('HP005', 3, 5.0, 2.0, 'C', 'Dat'),
('HP006', 3, 4.0, 1.5, 'D+', 'Khong dat'),
('HP007', 3, 3.5, 1.0, 'D', 'Khong dat'),
('HP008', 3, 8.0, 3.5, 'B+', 'Dat'),
('HP009', 3, 7.5, 3.0, 'B', 'Dat'),
('HP010', 3, 9.5, 4.0, 'A', 'Dat'),
('HP011', 3, 6.0, 2.5, 'C+', 'Dat'),
('HP012', 3, 5.5, 2.0, 'C', 'Dat'),
('HP013', 3, 4.5, 1.5, 'D+', 'Khong dat'),
('HP014', 3, 3.0, 1.0, 'D', 'Khong dat'),
('HP015', 3, 8.5, 3.5, 'B+', 'Dat'),
('HP016', 3, 7.0, 3.0, 'B', 'Dat'),
('HP017', 3, 9.0, 4.0, 'A', 'Dat'),
('HP018', 3, 6.5, 2.5, 'C+', 'Dat'),
('HP019', 3, 5.0, 2.0, 'C', 'Dat'),
('HP020', 3, 4.0, 1.5, 'D+', 'Khong dat');

-- Bảng ChungChi
CREATE TABLE ChungChi (
    STT INT,
    MaSinhVien NVARCHAR(30),
    ChuongTrinhDaoTao NVARCHAR(50),
    TenChungChi NVARCHAR(50),
    SoHieuBang NVARCHAR(50),
    SoVaoSo NVARCHAR(50),
    SoQuyetDinh NVARCHAR(50),
    NgayCap DATE,
    NoiCap NVARCHAR(50),
    PRIMARY KEY (MaSinhVien),
    FOREIGN KEY (MaSinhVien) REFERENCES thongtincanhan(MaSinhVien)
);

-- Chèn dữ liệu vào bảng ChungChi
INSERT INTO ChungChi (STT, MaSinhVien, ChuongTrinhDaoTao, TenChungChi, SoHieuBang, SoVaoSo, SoQuyetDinh, NgayCap, NoiCap) VALUES
(1, 'SV001', 'CTDT001', 'Chung Chi A', 'SHB001', 'SVS001', 'SQD001', '2023-01-01', 'Truong A'),
(2, 'SV002', 'CTDT002', 'Chung Chi B', 'SHB002', 'SVS002', 'SQD002', '2023-01-02', 'Truong B'),
(3, 'SV003', 'CTDT003', 'Chung Chi C', 'SHB003', 'SVS003', 'SQD003', '2023-01-03', 'Truong C'),
(4, 'SV004', 'CTDT004', 'Chung Chi D', 'SHB004', 'SVS004', 'SQD004', '2023-01-04', 'Truong D'),
(5, 'SV005', 'CTDT005', 'Chung Chi E', 'SHB005', 'SVS005', 'SQD005', '2023-01-05', 'Truong E'),
(6, 'SV006', 'CTDT006', 'Chung Chi F', 'SHB006', 'SVS006', 'SQD006', '2023-01-06', 'Truong F'),
(7, 'SV007', 'CTDT007', 'Chung Chi G', 'SHB007', 'SVS007', 'SQD007', '2023-01-07', 'Truong G'),
(8, 'SV008', 'CTDT008', 'Chung Chi H', 'SHB008', 'SVS008', 'SQD008', '2023-01-08', 'Truong H'),
(9, 'SV009', 'CTDT009', 'Chung Chi I', 'SHB009', 'SVS009', 'SQD009', '2023-01-09', 'Truong I'),
(10, 'SV010', 'CTDT010', 'Chung Chi K', 'SHB010', 'SVS010', 'SQD010', '2023-01-10', 'Truong K'),
(11, 'SV011', 'CTDT011', 'Chung Chi L', 'SHB011', 'SVS011', 'SQD011', '2023-01-11', 'Truong L'),
(12, 'SV012', 'CTDT012', 'Chung Chi M', 'SHB012', 'SVS012', 'SQD012', '2023-01-12', 'Truong M'),
(13, 'SV013', 'CTDT013', 'Chung Chi N', 'SHB013', 'SVS013', 'SQD013', '2023-01-13', 'Truong N'),
(14, 'SV014', 'CTDT014', 'Chung Chi O', 'SHB014', 'SVS014', 'SQD014', '2023-01-14', 'Truong O'),
(15, 'SV015', 'CTDT015', 'Chung Chi P', 'SHB015', 'SVS015', 'SQD015', '2023-01-15', 'Truong P'),
(16, 'SV016', 'CTDT016', 'Chung Chi Q', 'SHB016', 'SVS016', 'SQD016', '2023-01-16', 'Truong Q'),
(17, 'SV017', 'CTDT017', 'Chung Chi R', 'SHB017', 'SVS017', 'SQD017', '2023-01-17', 'Truong R'),
(18, 'SV018', 'CTDT018', 'Chung Chi S', 'SHB018', 'SVS018', 'SQD018', '2023-01-18', 'Truong S'),
(19, 'SV019', 'CTDT019', 'Chung Chi T', 'SHB019', 'SVS019', 'SQD019', '2023-01-19', 'Truong T'),
(20, 'SV020', 'CTDT020', 'Chung Chi U', 'SHB020', 'SVS020', 'SQD020', '2023-01-20', 'Truong U');

-- Bảng KetQuaXetTotNghiep
CREATE TABLE KetQuaXetTotNghiep (
    TenDot NVARCHAR(50),
    TenChuongTrinhDaoTao NVARCHAR(50),
    NgayXet DATETIME,
    KetQua NVARCHAR(50),
    GhiChu NVARCHAR(50),
    TongSoTinChi INT,
    TBCTichLuy INT,
    XepLoai NVARCHAR(50),
    Mahocphan NVARCHAR(30),
    PRIMARY KEY (Mahocphan),
    FOREIGN KEY (Mahocphan) REFERENCES Diem(Mahocphan)
);

-- Chèn dữ liệu vào bảng KetQuaXetTotNghiep
INSERT INTO KetQuaXetTotNghiep (TenDot, TenChuongTrinhDaoTao, NgayXet, KetQua, GhiChu, TongSoTinChi, TBCTichLuy, XepLoai, Mahocphan) VALUES
('Dot 1', 'CTDT001', '2024-06-01', 'Dat', 'Ghi chu 1', 120, 3.5, 'Kha', 'HP001'),
('Dot 2', 'CTDT002', '2024-06-02', 'Dat', 'Ghi chu 2', 120, 3.0, 'Trung binh', 'HP002'),
('Dot 3', 'CTDT003', '2024-06-03', 'Dat', 'Ghi chu 3', 120, 3.8, 'Gioi', 'HP003'),
('Dot 4', 'CTDT004', '2024-06-04', 'Dat', 'Ghi chu 4', 120, 2.5, 'Trung binh', 'HP004'),
('Dot 5', 'CTDT005', '2024-06-05', 'Dat', 'Ghi chu 5', 120, 2.0, 'Yeu', 'HP005'),
('Dot 6', 'CTDT006', '2024-06-06', 'Khong dat', 'Ghi chu 6', 120, 1.5, 'Kem', 'HP006'),
('Dot 7', 'CTDT007', '2024-06-07', 'Khong dat', 'Ghi chu 7', 120, 1.0, 'Kem', 'HP007'),
('Dot 8', 'CTDT008', '2024-06-08', 'Dat', 'Ghi chu 8', 120, 3.5, 'Kha', 'HP008'),
('Dot 9', 'CTDT009', '2024-06-09', 'Dat', 'Ghi chu 9', 120, 3.0, 'Trung binh', 'HP009'),
('Dot 10', 'CTDT010', '2024-06-10', 'Dat', 'Ghi chu 10', 120, 3.8, 'Gioi', 'HP010'),
('Dot 11', 'CTDT011', '2024-06-11', 'Dat', 'Ghi chu 11', 120, 2.5, 'Trung binh', 'HP011'),
('Dot 12', 'CTDT012', '2024-06-12', 'Dat', 'Ghi chu 12', 120, 2.0, 'Yeu', 'HP012'),
('Dot 13', 'CTDT013', '2024-06-13', 'Khong dat', 'Ghi chu 13', 120, 1.5, 'Kem', 'HP013'),
('Dot 14', 'CTDT014', '2024-06-14', 'Khong dat', 'Ghi chu 14', 120, 1.0, 'Kem', 'HP014'),
('Dot 15', 'CTDT015', '2024-06-15', 'Dat', 'Ghi chu 15', 120, 3.5, 'Kha', 'HP015'),
('Dot 16', 'CTDT016', '2024-06-16', 'Dat', 'Ghi chu 16', 120, 3.0, 'Trung binh', 'HP016'),
('Dot 17', 'CTDT017', '2024-06-17', 'Dat', 'Ghi chu 17', 120, 3.8, 'Gioi', 'HP017'),
('Dot 18', 'CTDT018', '2024-06-18', 'Dat', 'Ghi chu 18', 120, 2.5, 'Trung binh', 'HP018'),
('Dot 19', 'CTDT019', '2024-06-19', 'Dat', 'Ghi chu 19', 120, 2.0, 'Yeu', 'HP019'),
('Dot 20', 'CTDT020', '2024-06-20', 'Khong dat', 'Ghi chu 20', 120, 1.5, 'Kem', 'HP020');