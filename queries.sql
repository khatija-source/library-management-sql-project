INSERT INTO Books VALUES
(1, 'The Alchemist', 'Paulo Coelho', 'Fiction', 5),
(2, 'Atomic Habits', 'James Clear', 'Self-help', 3),
(3, 'Clean Code', 'Robert C. Martin', 'Programming', 2);
INSERT INTO Members VALUES
(101, 'Ayesha Khan', '9876543210', '2026-06-01'),
(102, 'Rahul Mehta', '9123456780', '2026-06-03');
INSERT INTO BorrowRecords VALUES
(1, 101, 1, '2026-06-05', NULL),
(2, 102, 3, '2026-06-06', '2026-06-10');
SELECT * FROM Books;
SELECT * FROM Members;
SELECT * FROM BorrowRecords;
SELECT * FROM Books 
WHERE available_copies > 0;
SELECT m.name, b.title, br.borrow_date
FROM BorrowRecords br
JOIN Members m ON br.member_id = m.member_id
JOIN Books b ON br.book_id = b.book_id;
SELECT book_id, COUNT(*) AS times_borrowed
FROM BorrowRecords
GROUP BY book_id
ORDER BY times_borrowed DESC;
SELECT * FROM BorrowRecords
WHERE return_date IS NULL;
