-- 1. Вывести сколько фильмов сняла кинокомпания Universal Pictures
SELECT count(movies.title) FROM movies
LEFT JOIN companies ON movies.companies_id = companies.id
WHERE companies.title = 'Universal Pictures';

-- 2. Вывести сколько всего фильмов было снято режиссером Фрэнсисом Фордом Копполой
SELECT count(movies.title) FROM movies
LEFT JOIN directors ON movies.directors_id = directors.id
WHERE directors.full_name = 'Фрэнсис Форд Коппола';

-- 3. Вывести количество снятых фильмов за последние 20 лет
SELECT count(title) FROM movies
WHERE year > year(curdate()) - 20;

-- 4. Вывести все жанры фильмов в которых снимал Стивен Спилберг в течении всей своей карьеры
SELECT DISTINCT genres.title FROM movies
LEFT JOIN directors ON directors.id = movies.directors_id
LEFT JOIN genres ON genres.id = movies.genres_id
WHERE directors.full_name = "Стивен Спилберг";

-- 5. Вывести названия, жанры и режиссеров 5 самых дорогих фильмов
SELECT movies.title, genres.title, directors.full_name FROM movies
LEFT JOIN directors ON directors.id = movies.directors_id
LEFT JOIN genres ON genres.id = movies.genres_id
ORDER BY movies.budget DESC
LIMIT 5;

-- 6. Вывести имя режиссера с самым большим количеством фильмов
SELECT directors.full_name FROM movies
LEFT JOIN directors ON movies.directors_id = directors.id
GROUP BY directors.full_name
ORDER BY count(movies.title) DESC
LIMIT 1;

-- 7. Вывести названия и жанры фильмов, снятые самой большой кинокомпанией (по сумме всех бюджетов фильмов)
SELECT movies.title, genres.title FROM movies
LEFT JOIN genres ON movies.genres_id = genres.id
LEFT JOIN companies ON movies.companies_id = companies.id
WHERE companies.title = (
	SELECT companies.title FROM movies
	LEFT JOIN companies ON companies.id = movies.companies_id
	GROUP BY companies.title
	ORDER BY sum(movies.budget) DESC
	LIMIT 1
);

-- 8. Вывести средний бюджет фильмов, снятых кинокомпанией Warner Bros.
SELECT AVG(movies.budget) FROM movies
LEFT JOIN companies ON companies.id = movies.companies_id
WHERE companies.title = "Warner Bros.";

-- 9. Вывести количество фильмов каждого жанра и средний бюджет по жанру
SELECT genres.title, COUNT(movies.title), AVG(movies.budget) FROM movies
LEFT JOIN genres ON genres.id = movies.genres_id
GROUP BY genres.title;

-- 10. Найти и удалить комедию "Дикие истории" 2014-го года
DELETE FROM movies
WHERE id = (
	SELECT id FROM (
		SELECT movies.id FROM movies
		LEFT JOIN genres ON genres.id = movies.genres_id
		WHERE movies.title = "Дикие истории" AND movies.year = 2014 AND genres.title = "комедия"
    ) as tmp
);