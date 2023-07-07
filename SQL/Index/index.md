Create Index Mysql:
Cú pháp tạo Index:
                CREATE [UNIQUE | FULLTEXT | SPATIAL] INDEX index_name
                    [index_type]
                    ON tbl_name (key_part,...)
                    [index_option]
                    [algorithm_option | lock_option]
                key_part: {col_name [(length)] | (expr)} [ASC | DESC]

                index_option: {
                    KEY_BLOCK_SIZE [=] value
                | index_type
                | WITH PARSER parser_name
                | COMMENT 'string'
                | {VISIBLE | INVISIBLE}
                | ENGINE_ATTRIBUTE [=] 'string'
                | SECONDARY_ENGINE_ATTRIBUTE [=] 'string'
                }

                index_type:
                    USING {BTREE | HASH}

                algorithm_option:
                    ALGORITHM [=] {DEFAULT | INPLACE | COPY}

                lock_option:
                    LOCK [=] {DEFAULT | NONE | SHARED | EXCLUSIVE}
                    ![Alt text](image.png)
                    ![Alt text](image-1.png)

Drop Index Mysql:
Cú pháp xóa Index:
                DROP INDEX ON tbl_name
            ![Alt text](image.png)
Execution plan trong mysql:
Trong MySQL, execution plan (kế hoạch thực thi) là một tập hợp các bước và phương pháp mà truy vấn sẽ sử dụng để truy cập và trả về dữ liệu từ cơ sở dữ liệu. Execution plan được tạo ra bởi trình tối ưu truy vấn của MySQL sau khi phân tích câu truy vấn và thông tin về cấu trúc của bảng.
Để xem execution plan cho một câu truy vấn trong MySQL, chúng ta có thể sử dụng câu lệnh EXPLAIN hoặc EXPLAIN ANALYZE.
![Alt text](image.png)
![Alt text](image.png)
