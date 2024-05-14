SELECT * FROM books;

SELECT 
    book.*
FROM books AS book
JOIN books_categories AS book_cat ON book.id = book_cat."bookId"
JOIN categories AS category ON book_cat."categoryId" = category.id
WHERE category.name = 'Fantasia';

SELECT 
    book.id AS "Book ID", 
    book.name AS "Book Title", 
    category.id AS "Category ID", 
    category.name AS "Category Name"
FROM books AS book
JOIN books_categories AS book_cat ON book.id = book_cat."bookId"
JOIN categories AS category ON book_cat."categoryId" = category.id;

SELECT 
    book.name AS "Book Title", 
    book.pages AS "Number of Pages", 
    author.name AS "Author Name", 
    author.bio AS "Author Biography"
FROM books AS book
JOIN authors AS author ON book."authorId" = author.id
WHERE book.name = 'Harry Potter';