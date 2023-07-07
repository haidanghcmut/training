Khóa chính là ràng buộc duy nhất trong mỗi bản ghi, các khóa chính phải Unique và không chứa not null values. Một bảng chỉ có thể có một khóa chính.
Cách tạo 1 khóa chính:
    ALTER TABLE Persons
    ADD PRIMARY KEY (ID);
Tạo tên ràng buộc với khóa chính và xác định ràng buộc trên nhiều cột:
    ALTER TABLE Persons
    ADD CONSTRAINT PK_Person PRIMARY KEY (ID,LastName);

Foreign key là một trường(hoặc tập hợp các trường) trong 1 bảng tham chiếu đến khóa chính của 1 bảng khác. Nó có thể được sử dụng để xác định các quan hệ giữa các bảng.
Bảng có khóa ngoại được gọi là bảng con và bảng có khóa chính được gọi là bảng được tham chiếu hoặc bảng cha.