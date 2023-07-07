class Thu_vien 
    def initialize(ma_tai_lieu , so_ban_phat_hanh , nha_xuat_ban , gia) 
       @ma_tai_lieu = ma_tai_lieu 
       @so_ban_phat_hanh = so_ban_phat_hanh
       @nha_xuat_ban = nha_xuat_ban
       @gia =gia
    end
   
   end 
   
   class Sach < Thu_vien 
     def xuat_thong_tin_sach
       puts "nhap ten tac gia va so trang "
       @tac_gia = gets.chomp 
       @so_trang = gets.chomp 
       puts "Tài liệu này số #{@ma_tai_lieu}"
       puts "Tài liệu này được phát hành với #{@so_ban_phat_hanh} bản"
       puts "Tài liệu này được xuất bản bởi nhà xuất bản  #{@nha_xuat_ban}"
       puts "Tài liệu này được bán với giá  #{@gia} đồng"
       puts "Tài liệu này được viết bởi  #{@tac_gia} với số trang là #{@so_trang}"
     end
   end
   
   class Tap_chi < Thu_vien
     def xuat_thong_tin_tap_chi
       puts "nhap so phat hanh va thang phat hanh  "
       @so_phat_hanh = gets.chomp 
       @thang_phat_hanh = gets.chomp 
       puts "Tài liệu này số #{@ma_tai_lieu}"
       puts "Tài liệu này được phát hành với #{@so_ban_phat_hanh} bản"
       puts "Tài liệu này được xuất bản bởi nhà xuất bản  #{@nha_xuat_ban}"
       puts "Tài liệu này được bán với giá  #{@gia} đồng"
       puts "Tài liệu này được phát hành vào tháng  #{@thang_phat_hanh} với số phát hành là #{@so_phat_hanh}"
     end
   end
   
   class Bao < Thu_vien
       attr_accessor :ngay_phat_hanh
     def ngay_phat_hanh()
           puts "Tờ báo này được bán ra vào #{:ngay_phat_hanh}"
     end
   end
   
   class TT
     def self.tt
     include Tinh_tien
     end
   end
   
   module Tinh_tien
       puts 'Nhập loại tài liệu bạn muốn thuê '
       c = gets.chomp
       puts 'Giá trị của tài liệu đó '
       e = gets.chomp
       e = e.to_i
     
     case c
   
     when  'Sach'
   
       puts "Số tiền bạn cần phải bỏ ra để thuê cuốn sách này là #{( e * 5) / 100} "
     when 'Tap chi'
       
       puts "Số tiền bạn cần phải bỏ ra để thuê cuốn tạp chí này là #{( e * 6) / 100} "
     when "Bao"
      
      puts "Số tiền bạn cần phải bỏ ra để thuê tờ báo này là #{( e * 7) / 100} "
     else
       puts 'Rất tiêc ! Tài liệu bạn chọn không có trong thư viện mời bạn chọn lại '
     end
   end
   
   p = Sach.new("001354" , 9 , "KIM ĐỒNG" , 8000)
   p.xuat_thong_tin_sach
   P = Tap_chi.new("00548" , 200 , "SGD" , 50000)
   P.xuat_thong_tin_tap_chi
   TT.tt