SELECT accession_no,book_title FROM books;
SELECT COUNT(*) FROM books;

SELECT accession_no,book_title FROM books
WHERE book_title LIKE "%java%";

CREATE table book2 as (
    SELECT * FROM books
    WHERE accession_no IS NULL
);
 
SELECT accession_no,book_title FROM book2;
