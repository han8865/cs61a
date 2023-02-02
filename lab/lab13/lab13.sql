.read data.sql


CREATE TABLE bluedog AS
  SELECT color, pet from students where color = "blue" and pet = "dog";

CREATE TABLE bluedog_songs AS
  SELECT color, pet, song from students where color = "blue" and pet = "dog";


CREATE TABLE smallest_int_having AS
  SELECT time, smallest from students group by smallest having count(*) = 1;


CREATE TABLE matchmaker AS
  SELECT stu1.pet, stu1.song, stu1.color, stu2.color
  from students as stu1, students as stu2
  where stu1.pet = stu2.pet and stu1.song = stu2.song and stu1.time < stu2.time;


CREATE TABLE sevens AS
  SELECT students.seven from students, numbers
  where students.number = 7 and students.time = numbers.time and numbers."7" = "True";


CREATE TABLE average_prices AS
  SELECT category, avg(MSRP) as average_price from products group by category;


CREATE TABLE lowest_prices AS
  SELECT store, item, min(price) from inventory group by item;


CREATE TABLE best_items AS
  SELECT name, min(MSRP/rating) from products group by category;


CREATE TABLE shopping_list AS
  SELECT item, store from lowest_prices, best_items
  where lowest_prices.item = best_items.name;


CREATE TABLE total_bandwidth AS
  SELECT sum(Mbs) from shopping_list, stores where shopping_list.store = stores.store;

