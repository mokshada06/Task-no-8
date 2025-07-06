CREATE DATABASE Task8;
USE Task8;

CREATE TABLE Books(
book_id INT PRIMARY KEY,
title VARCHAR(100),
author VARCHAR(100),
genre VARCHAR(100),
total_copies INT,
issued_copies INT);

INSERT INTO Books VALUES
(1, 'The Silent Patient', 'Alex Michaelides', 'Thriller', 10, 6),
(2, 'Atomic Habits', 'James Clear', 'Self-help', 12, 12),
(3, 'Becoming', 'Michelle Obama', 'Biography', 8, 4),
(4, 'The Psychology of Money', 'Morgan Housel', 'Finance', 7, 2),
(5, 'Ikigai', 'Francesc Miralles', 'Self-help', 5, 0),
(6, 'Deep Work', 'Cal Newport', 'Productivity', 6, 5);

DELIMITER //

CREATE PROCEDURE GetAvailableBooksByGenre (IN genre_input VARCHAR(50))
BEGIN
	SELECT title, total_copies - issued_copies AS available_copies
    FROM Books
    WHERE genre = genre_input
    AND total_copies > issued_copies;
END //

DELIMITER ;

CALL GetAvailableBooksByGenre ('Self-help');


DELIMITER //

CREATE PROCEDURE GetAvailableBooksByAuthor (IN author_name VARCHAR(100))
BEGIN
	SELECT title, total_copies - issued_copies AS available_copies
    FROM Books
    WHERE Books.author = author_name
		AND total_copies > issued_copies;
END //

DELIMITER ;

CALL GetAvailableBooksByAuthor ('Michelle Obama');

DELIMITER //

CREATE FUNCTION check_availability_status(total INT, issued INT)
RETURNS VARCHAR (80)
DETERMINISTIC
BEGIN 
	DECLARE status VARCHAR(80);
    
    IF total = issued THEN 
		SET status = 'Not Available';
	ELSEIF issued = 0 THEN
		SET status = 'Fully Available';
	ELSE
		SET status = 'Partially Available';
	END IF;
    RETURN status;
    
END //

DELIMITER ;

SELECT title, check_availability_status(total_copies, issued_copies) AS status
FROM Books;


DELIMITER //

CREATE FUNCTION is_high_demand_book(total INT, issued INT)
RETURNS VARCHAR (30)
DETERMINISTIC
BEGIN 
	DECLARE result VARCHAR(30);
    
    IF issued >= total * 0.75 THEN
		SET result = 'Yes';
	ELSE 
		SET result = 'No';
	END IF;
    
    RETURN result;
        
END //

DELIMITER ;


SELECT title, is_high_demand_book(total_copies, issued_copies) AS high_deamnd
FROM Books;
