-- 1. Найти автора с самым большим числом книг и вывести его имя
SELECT authors.name FROM authors_books
LEFT JOIN authors ON authors.id = authors_books.authors_id
GROUP BY authors_id
ORDER BY count(authors_books.books_id) DESC
LIMIT 1;
-- 2. Вывести пять самых старых книг у которых указан год издания
SELECT title FROM books WHERE year IS NOT NULL
ORDER BY year ASC
LIMIT 5;
-- 3. Вывести общее количество книг на полке в кабинете
SELECT count(books.id) AS amount_of_books FROM books
LEFT JOIN shelves ON books.shelves_id = shelves.id
WHERE shelves.title = 'Полка в кабинете';
-- 4. Вывести названия, имена авторов и годы издания книг, которые находятся на полке в спальне
SELECT books.title, authors.name, books.year FROM books
LEFT JOIN authors_books ON books.id = authors_books.books_id
LEFT JOIN shelves ON books.shelves_id = shelves.id
LEFT JOIN authors ON authors_books.authors_id = authors.id
WHERE shelves.title = 'Полка в спальне';
-- 5. Вывести названия и годы издания книг, написанных автором 'Лев Толстой'
SELECT books.title, books.year FROM books
LEFT JOIN authors_books ON books.id = authors_books.books_id
LEFT JOIN authors ON authors_books.authors_id = authors.id
WHERE authors.name = 'Лев Толстой';
-- 6. Вывести название книг, которые написали авторы, чьи имена начинаются на букву "А"
SELECT books.title FROM books
LEFT JOIN authors_books ON books.id = authors_books.books_id
LEFT JOIN authors ON authors_books.authors_id = authors.id
WHERE authors.name LIKE 'А%';
-- 7. Вывести название книг и имена авторов для книг, которые находятся на полках, названия которых включают слова «верхняя» или «нижняя»
SELECT books.title, authors.name FROM books
LEFT JOIN authors_books ON books.id = authors_books.books_id
LEFT JOIN authors ON authors_books.authors_id = authors.id
LEFT JOIN shelves ON books.shelves_id = shelves.id
WHERE shelves.title LIKE '%верхняя%' OR shelves.title LIKE '%нижняя%';
-- 8. Книгу «Божественная комедия» автора «Данте Алигьери» одолжили почитать другу Ивану Иванову, необходимо написать запрос который отразит это событие в БД
UPDATE books SET books.friends_id = (
	SELECT id FROM friends WHERE friends.name = 'Иванов Иван' LIMIT 1
)
WHERE id = (
	SELECT id FROM (
		SELECT books.id FROM books
		LEFT JOIN authors_books ON books.id = authors_books.books_id
		LEFT JOIN authors ON authors_books.authors_id = authors.id
		WHERE books.title = 'Божественная комедия' AND authors.name = 'Данте Алигьери'
		LIMIT 1
    ) as x
);
-- 9. Добавить в базу книгу «Краткие ответы на большие вопросы», год издания 2020, автор «Стивен Хокинг», положить ее на полку в кабинете
INSERT INTO authors (name) VALUES ('Стивен Хокинг');
INSERT INTO books (title, year, shelves_id) VALUES ('Краткие ответы на большие вопросы', 2020, (SELECT id FROM shelves WHERE title = 'Полка в кабинете'));
INSERT INTO authors_books (authors_id, books_id) VALUES ((SELECT id FROM authors WHERE name = 'Стивен Хокинг'), (SELECT id FROM books WHERE title = 'Краткие ответы на большие вопросы'));
