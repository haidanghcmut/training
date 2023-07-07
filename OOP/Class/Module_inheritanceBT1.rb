#Một thư viện cần quản lý các tài liệu bao gồm sách, tạp chí, báo.
#Mỗi tài liệu gồm có các thuộc tính sau: Mã tài liệu, tên nhà xuất bản, số bản phát hành, đơn giá
#Các loại sách cần quản lý thêm các thuộc tính: tên tác giả, số trang
#Các tạp chí cần quản lý thêm: Số phát hành, tháng phát hành
#Các báo cần quản lý thêm: Ngày phát hành
#a. Hãy xây dựng các lớp để quản lý các loại tài liệu cho thư viện một cách hiệu quả (phải bao gồm hàm khởi tạo, getter / setter)
#b. Hãy xây dựng 1 module có tính năng tính tiền thuê tài liệu. Cho biết rằng, mỗi loại có giá thuê ứng với phần trăm của đơn giá theo bảng sau (VD: sách giá 100 ngàn → giá thuê là 5 ngàn)
# Sách = 5% , Tạp chí = 6% , Báo = 7%.

module Math 
    def tinh_tien_thue
     (@gia * self.class::PHAN_TRAM) / 100 
    end
  end
   
  class TaiLieu
    
    attr_accessor :ma_tai_lieu , :so_ban_phat_hanh , :nha_xuat_ban , :gia
    def initialize(ma_tai_lieu, so_ban_phat_hanh, nha_xuat_ban, gia) 
      @ma_tai_lieu = ma_tai_lieu 
      @so_ban_phat_hanh = so_ban_phat_hanh
      @nha_xuat_ban = nha_xuat_ban
      @gia = gia
     
    end
  end 
       
  class Sach < TaiLieu
    PHAN_TRAM = 5 
    include Math
    attr_accessor :tac_gia
    attr_accessor :so_trang
    def initialize (ma_tai_lieu, so_ban_phat_hanh, nha_xuat_ban,gia ,tac_gia, so_trang)
      super(ma_tai_lieu, so_ban_phat_hanh, nha_xuat_ban, gia)
      @tac_gia = tac_gia
      @so_trang = so_trang
    end
  end
       
  class TapChi < TaiLieu
    PHAN_TRAM = 6
    include Math
    attr_accessor :so_phat_hanh 
    attr_accessor :thang_phat_hanh
    def initialize ( ma_tai_lieu, so_ban_phat_hanh, nha_xuat_ban, gia, so_phat_hanh, thang_phat_hanh)
      super(ma_tai_lieu, so_ban_phat_hanh, nha_xuat_ban, gia)
      @so_phat_hanh = so_phat_hanh
      @thang_phat_hanh = thang_phat_hanh
    end
  end
    
  class Bao < TaiLieu 
    PHAN_TRAM = 7  
    include Math   
    attr_accessor :ngay_phat_hanh   
    def initialize (ma_tai_lieu, so_ban_phat_hanh, nha_xuat_ban, gia, ngay_phat_hanh)
      super(ma_tai_lieu, so_ban_phat_hanh, nha_xuat_ban, gia)
      @ngay_phat_hanh = ngay_phat_hanh
    end
  end
  a = Sach.new(1, 2, 3, 4, 5, 6)
  a.tinh_tien_thue