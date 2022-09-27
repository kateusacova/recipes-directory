# Single Table Design Recipe Template


## 1. Extract nouns from the user stories or specification


As a food lover,
So I can stay organised and decide what to cook,
I'd like to keep a list of all my recipes with their names.

As a food lover,
So I can stay organised and decide what to cook,
I'd like to keep the average cooking time (in minutes) for each recipe.

As a food lover,
So I can stay organised and decide what to cook,
I'd like to give a rating to each of the recipes (from 1 to 5).

Nouns:

recipe, name, average_cooking_time, rating

## 2. Infer the Table Name and Columns

| Record                | Properties          |
| --------------------- | ------------------  |
| recipe                | name, average_cooking_time, rating

Name of the table (always plural): `recipes` 

Column names: `name`, `average_cooking_time`, `rating`

## 3. Decide the column types.

```
id: SERIAL
name: text
average_cooking_time: interval 
rating: int
```

## 4. Write the SQL.

```sql
CREATE TABLE recipes (
  id SERIAL PRIMARY KEY,
  name text,
  average_cooking_time interval,
  rating int
);
```

## 5. Create the table.
