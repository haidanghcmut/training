class Nhanvien 
    attr_accessor :ten_nhan_vien, :tuoi, :gioi_tinh, :dia_chi, :so_dien_thoai, :email, :luong_co_ban
    def initialize(ten_nhan_vien, tuoi, gioi_tinh, dia_chi, so_dien_thoai, email, luong_co_ban)
        @ten_nhan_vien = ten_nhan_vien
        @tuoi = tuoi
        @gioi_tinh = gioi_tinh
        @dia_chi = dia_chi
        @so_dien_thoai = so_dien_thoai
        @email = email
        @luong_co_ban = luong_co_ban
    end

    def salary_up(money)
        @luong_co_ban += money
    end
end


class Manager < Nhanvien
    attr_accessor :danh_sach_nhan_vien_duoi_quyen, :he_so_phu_cap
    def initialize(ten_nhan_vien, tuoi, gioi_tinh, dia_chi, so_dien_thoai, email, luong_co_ban, danh_sach_nhan_vien_duoi_quyen, he_so_phu_cap)
        super(ten_nhan_vien, tuoi, gioi_tinh, dia_chi, so_dien_thoai, email, luong_co_ban)
        @danh_sach_nhan_vien_duoi_quyen = danh_sach_nhan_vien_duoi_quyen
        @he_so_phu_cap = he_so_phu_cap
    end
    def salary_up(money)
        super(money)
    end

    def calculate_salary()
       @luong_co_ban + @luong_co_ban * @he_so_phu_cap
    end
    def manage_employee()
        @danh_sach_nhan_vien_duoi_quyen.each do |nhan_vien|
            puts nhan_vien
        end
    end
end

class Developer < Nhanvien 
    attr_accessor :so_gio_lam_viec_trong_thang, :muc_luong_theo_gio
    def initialize(ten_nhan_vien, tuoi, gioi_tinh, dia_chi, so_dien_thoai, email, luong_co_ban, so_gio_lam_viec_trong_thang, muc_luong_theo_gio)
        super(ten_nhan_vien, tuoi, gioi_tinh, dia_chi, so_dien_thoai, email, luong_co_ban)
        @so_gio_lam_viec_trong_thang = so_gio_lam_viec_trong_thang
        @muc_luong_theo_gio = muc_luong_theo_gio
    end

    def calculate_salary()
       @luong_co_ban + @so_gio_lam_viec_trong_thang * @muc_luong_theo_gio
    end
end

class Sales < Nhanvien 
    attr_accessor :doanh_so_trong_thang, :ti_le_hoa_hong
    def initialize(ten_nhan_vien, tuoi, gioi_tinh, dia_chi, so_dien_thoai, email, luong_co_ban, doanh_so_trong_thang, ti_le_hoa_hong)
        super(ten_nhan_vien, tuoi, gioi_tinh, dia_chi, so_dien_thoai, email, luong_co_ban)
        @doanh_so_trong_thang = doanh_so_trong_thang
        @ti_le_hoa_hong = ti_le_hoa_hong
    end
    def calculate_salary()
        @luong_co_ban + @doanh_so_trong_thang * @ti_le_hoa_hong
    end

    def salary_up(money)
        super(money)
    end
end
require './dang.rb'

a = Manager.new("VoBuiHaiDang", 22, "Nam", "Ha Tinh", "0886073802", 'haidang.vobui@gmail.com', 10000000, ["Dang", "Hai", "Dung"], 0.3)
b = Developer.new("Vohaidang", 22, "Nam", "Ha Tinh", "0886073802", 'haidang.vobui@gmail123.com', 10000000, 100, 100000)
c = Developer.new("Vohaidang1", 22, "Nam", "Ha Tinh", "0886073802", 'haidang.vobui@gmail1234.com,', 10000000, 100, 100000)
d = Sales.new("Vohaidang2", 22, "Nam", "Ha Tinh", "0886073802", 'haidang.vobui@gmail12345.com', 10000000, 100, 100000)
e = Sales.new("Vohaidang3", 22, "Nam", "Ha Tinh", "0886073802", 'haidang.vobui@gmail123456.com', 11000000, 100, 100000)

A = [a, b, c, d, e].sum{|nhanvien| nhanvien.calculate_salary}
a.salary_up(1000000)
puts a.calculate_salary
puts a.manage_employee