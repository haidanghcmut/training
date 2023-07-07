<!-- Class -->
Trong ngôn ngữ lập trình Ruby, một class (lớp) là một mô-đun chứa các thuộc tính (biến) và phương thức (hàm) định nghĩa các hành vi của một đối tượng. Class được sử dụng để định nghĩa các đối tượng có cùng cấu trúc và hành vi.
attr_accessor : Trong Ruby, attr_accessor là một macro (thủ tục) cho phép tự động tạo getter và setter methods cho các thuộc tính (biến) của một class. Khi sử dụng attr_accessor, không cần phải viết code thủ công để định nghĩa các methods để truy cập và gán giá trị cho các thuộc tính.
<!-- Function -->
Trong Ruby, function (hàm) được gọi là method (phương thức). Một method là một khối mã thực hiện một tác vụ cụ thể. Trong Ruby, một method có thể được định nghĩa bên trong một class hoặc ở mức độ global. Một method có thể được gọi bằng cách sử dụng tên của nó.

Trong Ruby, một method có thể có các tham số (parameters) và một giá trị trả về (return value). Một method có thể có hoặc không có tham số. Một method có thể có hoặc không có giá trị trả về. Một method có thể có nhiều tham số và có thể trả về nhiều giá trị.

Trong Ruby, có nhiều loại method khác nhau dựa trên cách chúng được sử dụng và ứng dụng trong ngữ cảnh cụ thể. Dưới đây là một số loại method phổ biến trong Ruby:

Instance Methods (Phương thức của đối tượng): Đây là những method được gắn liền với một đối tượng cụ thể. Chúng có thể truy cập các biến và phương thức instance của đối tượng đó. Để định nghĩa một instance method, bạn định nghĩa nó trong class và sử dụng self để tham chiếu đến đối tượng hiện tại.

Class Methods (Phương thức của lớp): Đây là những method được gắn liền với lớp chứ không phải với đối tượng cụ thể. Chúng có thể truy cập các biến và phương thức của lớp. Để định nghĩa một class method, bạn sử dụng từ khóa self trước tên method.Có 3 cách tạo 1 class method:
  Kế thừa từ self
  tạo class self.className
  Kế thừa từ singletonclass

Static Methods (Phương thức tĩnh): Đây là những method không liên kết với đối tượng hoặc lớp cụ thể và không thể truy cập các biến hoặc phương thức instance. Để định nghĩa một static method, bạn đặt nó bên ngoài class và sử dụng từ khóa self trước tên method.

Private Methods (Phương thức riêng tư): Đây là những method chỉ có thể được gọi bên trong class và không thể được gọi từ bên ngoài. Để định nghĩa một private method, bạn sử dụng từ khóa private trước khai báo method.

Protected Methods (Phương thức bảo vệ): Đây là những method chỉ có thể được gọi bởi các instance của lớp hoặc các instance của các lớp con. Để định nghĩa một protected method, bạn sử dụng từ khóa protected trước khai báo method.

Getter và Setter Methods: Đây là các method đặc biệt được sử dụng để đọc (getter) và gán (setter) giá trị cho các thuộc tính (biến) của đối tượng. Trong Ruby, bạn có thể tự động tạo các getter và setter methods bằng cách sử dụng macro attr_reader, attr_writer, hoặc attr_accessor.

Operator Overloading Methods (Phương thức nạp chồng toán tử): Đây là những method được sử dụng để xử lý các phép toán giữa các đối tượng. Ví dụ: +, -, *, /, ==, >, <, vv. Để nạp chồng toán tử, bạn định nghĩa các method đặc biệt như +, -, ==, vv. trong class.

<!-- Module Inheritance -->
Trong Ruby, chúng ta có thể kế thừa module từ một module khác thông qua module inheritance (kế thừa module). Điều này cho phép tái sử dụng code và chia sẻ chức năng giữa các module.
Để kế thừa module, có thể sử dụng từ khóa include trong module con. Khi module con kế thừa từ module cha, nó sẽ có tất cả các phương thức và hằng số của module cha.
Ngoài ra còn có thể sử dụng các phương thức như extend, prepend để kế thừa module.


