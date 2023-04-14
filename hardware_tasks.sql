-- 1. Вывод суммарного количества единиц техники на складе
SELECT SUM(amount) as 'total' FROM hardware;
-- 2. Вывод каких товаров нет на складе
SELECT * FROM hardware WHERE amount = 0;
-- 3. Вывод средний цены монитора
SELECT AVG(price) AS 'avg price' FROM hardware WHERE title LIKE '%Монитор%';
-- 4. Вывод клавиатур от самой дешевой до самой дорогой
SELECT * FROM hardware WHERE title LIKE '%Клавиатура%' ORDER BY price asc;
-- 5. Вывод количества товарных позиций по каждому тегу с использованием группировки от максимального количества до минимального
SELECT tag, count(title) as 'amount' FROM hardware GROUP BY tag ORDER BY amount desc;
-- 6. Вывод количества товарных позиций со скидками на складе
SELECT count(title) as 'amount' FROM hardware WHERE tag = 'discount';
-- 7. Вывод названия и цены самой дорогой новинки
SELECT title, price FROM hardware WHERE tag = 'new' ORDER BY price desc limit 1;
-- 8. Добавление в таблицу товара Ноутбук Lenovo 2BXKQ7E9XD как новинку по цене 54500 руб. в единственном экземпляре
INSERT INTO hardware (title, price, amount, tag) VALUES ('Ноутбук Lenovo 2BXKQ7E9XD', '54500', '1', 'new');
-- 9. Нахождение и удаление по названию из базы ошибочно добавленный товар Очки PS VR 2
DELETE FROM hardware WHERE title = 'Очки PS VR 2';