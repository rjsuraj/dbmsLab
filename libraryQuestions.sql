SELECT accession_no,book_title FROM books;
SELECT COUNT(*) FROM books;

SELECT accession_no,book_title FROM books
WHERE book_title LIKE "%java%";

CREATE table book2 as (
    SELECT * FROM books
    WHERE accession_no IS NULL
);
 
SELECT accession_no,book_title FROM book2;

-- give book with no titles

SELECT *
FROM combinedlibrary
WHERE book_title IS NULL
   OR TRIM(book_title) = '';



-- give book with no publisher

SELECT *
FROM books
WHERE publisher IS NULL
   OR TRIM(publisher) = '';


-- give book with  no book shelf no.

SELECT *
FROM books
WHERE book_shelf_no IS NULL
   OR TRIM(book_shelf_no) = '';