CREATE TABLE recipes (
  id SERIAL PRIMARY KEY,
  name text,
  average_cooking_time interval,
  rating int
);