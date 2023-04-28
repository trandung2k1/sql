SELECT *
FROM customers

SELECT *
FROM customers
WHERE hoTen LIKE 't%'
-- =
SELECT *
FROM customers
WHERE hoTen LIKE 'T%'

UPDATE customers
SET hoTen = N'trần văn dũng'
WHERE maKhachHang = 10

SELECT *
FROM customers
WHERE hoTen NOT LIKE 'T%'

SELECT *
FROM customers
WHERE hoTen LIKE '%ng'
-- =
SELECT *
FROM customers
WHERE hoTen LIKE '%NG'

SELECT *
FROM customers
WHERE hoTen LIKE 'q%h'
-- =
SELECT *
FROM customers
WHERE hoTen LIKE 'Q%H'

SELECT *
FROM customers
WHERE hoTen LIKE '_r%'
-- =
SELECT *
FROM customers
WHERE hoTen LIKE '_R%'

SELECT *
FROM customers
WHERE hoTen LIKE '[ABC]%'
-- =
SELECT *
FROM customers
WHERE hoTen LIKE '[A-C]%'

SELECT *
FROM customers
WHERE hoTen NOT LIKE '[ABC]%'
-- =
SELECT *
FROM customers
WHERE hoTen LIKE '[^A-C]%'


CREATE TABLE feedbacks
(
    id INT IDENTITY(1, 1) PRIMARY KEY,
    comment nvarchar(100) NOT NULL
)
INSERT INTO feedbacks
VALUES('Can you give me 30% discount?'),
    ('May I get me 30USD off?'),
    ('Is this having 20% discount today?');

SELECT *
FROM feedbacks
--issues 30% and 30USD
SELECT *
FROM feedbacks
WHERE comment LIKE '%30%'

--fix issues
SELECT *
FROM feedbacks
WHERE comment LIKE '%30!%%' ESCAPE '!'