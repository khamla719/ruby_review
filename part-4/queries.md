Paste your queries and results in this file
================================================================================

show all the books
SELECT * FROM books;
id          title                       author_id   publisher_id
----------  --------------------------  ----------  ------------
1           Rails 4 Test Prescriptions  1           1
2           Metaprogramming Ruby 2      2           1
3           Programming Ruby 1.9 & 2.0  3           1
4           Pragmatic Programmer        3           2
5           Practical Object Oriented   4           2
6           The Rails 4 Way             5           2
7           Objective-C Programming     6           3
8           iOS Programming             6           3
9           JavaScript: The Good Parts  7           4
10          JavaScript: The Definitive  8           4
11          Functional JavaScript       9           4
12          Build iOS Games with Sprit  10          1
13          Test iOS Apps with UI Auto  10          1
14          Design Patterns in Ruby     11          2
15          Eloquent Ruby               11          2
16          Web Design with HTML & CSS  12          5
17          JavaScript and jQuery       12          5
18          Well-Grounded Rubyist       13          6
19          Essential Algorithms        14          5
20          Introduction to Algorithms  15          7

show all the publishers
SELECT * FROM publishers;
id          name
----------  ---------------------
1           Pragmatic Programmers
2           Addison-Wesley
3           Big Nerd Ranch
4           O'Reilly
5           Wiley
6           Manning Publications
7           MIT Press

show all the authors
SELECT * FROM authors;
id          name
----------  -----------
1           Noel Rappin
2           Paolo Perro
3           Dave Thomas
4           Sandi Metz
5           Obie Fernan
6           Aaron Hille
7           Douglas Cro
8           David Flana
9           Michael Fog
10          Jonathan Pe
11          Russ Olsen
12          Jon Duckett
13          David A. Bl
14          Rod Stephen
15          Thomas Corm

show all the books containing "Ruby" in the title
SELECT * FROM books
WHERE title LIKE '%Ruby%';
id          title                   author_id   publisher_id
----------  ----------------------  ----------  ------------
2           Metaprogramming Ruby 2  2           1
3           Programming Ruby 1.9 &  3           1
5           Practical Object Orien  4           2
14          Design Patterns in Rub  11          2
15          Eloquent Ruby           11          2
18          Well-Grounded Rubyist   13          6

show the authors with a name starting with "Dav"
SELECT * FROM authors
WHERE name LIKE 'Dav%';
id          name
----------  -----------
3           Dave Thomas
8           David Flana
13          David A. Bl

show all the books published by "Addison-Wesley"
SELECT * FROM books
INNER JOIN publishers
ON books.publisher_id=publishers.id
WHERE publishers.name='Addison-Wesley';
id          title                 author_id   publisher_id  id          name
----------  --------------------  ----------  ------------  ----------  --------------
4           Pragmatic Programmer  3           2             2           Addison-Wesley
5           Practical Object Ori  4           2             2           Addison-Wesley
6           The Rails 4 Way       5           2             2           Addison-Wesley
14          Design Patterns in R  11          2             2           Addison-Wesley
15          Eloquent Ruby         11          2             2           Addison-Wesley

show all the books authored by "Jonathan Penn"
SELECT * FROM books
INNER JOIN authors
ON books.author_id=authors.id
WHERE authors.name='Jonathan Penn';
id          title                           author_id   publisher_id  id          name
----------  ------------------------------  ----------  ------------  ----------  -------------
12          Build iOS Games with SpriteKit  10          1             10          Jonathan Penn
13          Test iOS Apps with UI Automati  10          1             10          Jonathan Penn

show all the publishers where the book title contains "iOS"
SELECT * FROM publishers
INNER JOIN books
ON publishers.id=books.publisher_id
WHERE books.title LIKE '%iOS%';
id          name            id          title            author_id   publisher_id
----------  --------------  ----------  ---------------  ----------  ------------
3           Big Nerd Ranch  8           iOS Programming  6           3
1           Pragmatic Prog  12          Build iOS Games  10          1
1           Pragmatic Prog  13          Test iOS Apps w  10          1

show all the publishers for the author "Sandi Metz"
SELECT * FROM publishers
INNER JOIN books
ON publishers.id=books.publisher_id
INNER JOIN authors
ON books.author_id=authors.id
WHERE authors.name LIKE 'Sandi Metz';
id          name            id          title                                     author_id   publisher_id  id          name
----------  --------------  ----------  ----------------------------------------  ----------  ------------  ----------  ----------
2           Addison-Wesley  5           Practical Object Oriented Design in Ruby  4           2             4           Sandi Metz

add a new author to the authors table
INSERT INTO authors (name)
VALUES ('Khamla Phimmachack');

SELECT * FROM authors
id          name
----------  -----------
1           Noel Rappin
2           Paolo Perro
3           Dave Thomas
4           Sandi Metz
5           Obie Fernan
6           Aaron Hille
7           Douglas Cro
8           David Flana
9           Michael Fog
10          Jonathan Pe
11          Russ Olsen
12          Jon Duckett
13          David A. Bl
14          Rod Stephen
15          Thomas Corm
16          Khamla Phim

add a new publisher to the publishers table
INSERT INTO publishers (name)
VALUES ('RootsRated');

SELECT * FROM publishers;
id          name
----------  ---------------------
1           Pragmatic Programmers
2           Addison-Wesley
3           Big Nerd Ranch
4           O'Reilly
5           Wiley
6           Manning Publications
7           MIT Press
8           RootsRated

add a new book to the books table with the new author and publisher you created in release 3
INSERT INTO books (title, author_id, publisher_id)
VALUES ('Getting the Job', 16, 8);

SELECT * FROM books;
id          title                       author_id   publisher_id
----------  --------------------------  ----------  ------------
1           Rails 4 Test Prescriptions  1           1
2           Metaprogramming Ruby 2      2           1
3           Programming Ruby 1.9 & 2.0  3           1
4           Pragmatic Programmer        3           2
5           Practical Object Oriented   4           2
6           The Rails 4 Way             5           2
7           Objective-C Programming     6           3
8           iOS Programming             6           3
9           JavaScript: The Good Parts  7           4
10          JavaScript: The Definitive  8           4
11          Functional JavaScript       9           4
12          Build iOS Games with Sprit  10          1
13          Test iOS Apps with UI Auto  10          1
14          Design Patterns in Ruby     11          2
15          Eloquent Ruby               11          2
16          Web Design with HTML & CSS  12          5
17          JavaScript and jQuery       12          5
18          Well-Grounded Rubyist       13          6
19          Essential Algorithms        14          5
20          Introduction to Algorithms  15          7
21          Getting the Job             16          8



