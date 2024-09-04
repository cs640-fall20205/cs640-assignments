# Postgres JOINS

## Learning Objectives

Able to...

1. Understand JOINS

## Model 1

Table A

| a_key | a_val |
| ----- | ----- |
| a1    | 1     |
| a2    | 2     |
| a3    | 3     |
| a4    | 4     |

Table B

| b_key | b_val |
| ----- | ----- |
| b1    | 1     |
| b2    | 2     |
| b5    | 5     |
| b6    | 6     |

Questions

1. What values (a_val and b_val) do the two tables have in common?

2. What values are only in A?

3. What values are only in B?

## Model 2

Query

```sql
SELECT a_key, b_key, a_val, b_val
FROM A
INNER JOIN B ON a_val = b_val
```

Result

| a_key | b_key | a_val | b_val |
| ----- | ----- | ----- | ----- |
| a1    | b1    | 1     | 1     |
| a2    | b2    | 2     | 2     |

1. What rows in A are not included in the result?

2. Why do you think they are not in the result?

3. What rows in B are not included in the result?

4. Why do you think they are not in the result?

5. When is a row from A or B included?

6. What is the meaning of INNER JOIN?

## Model 3

Query

```sql
SELECT a_key, b_key, a_val, b_val
FROM A
LEFT OUTER JOIN B ON a_val = b_val
```

Result

| a_key | b_key | a_val | b_val |
| ----- | ----- | ----- | ----- |
| a1    | b1    | 1     | 1     |
| a2    | b2    | 2     | 2     |
| a3    |       | 3     |       |
| a4    |       | 4     |       |

1. What rows in A are not included in the result?

2. What rows in B are not included in the result?

3. When is a row included?

4. What is the meaning of LEFT OUTER JOIN?

## Model 4

Query

```sql
SELECT a_key, b_key, a_val, b_val
FROM A
RIGHT OUTER JOIN B ON a_val = b_val
```

Result

| a_key | b_key | a_val | b_val |
| ----- | ----- | ----- | ----- |
| a1    | b1    | 1     | 1     |
| a2    | b2    | 2     | 2     |
|       | b5    |       | 5     |
|       | b6    |       | 6     |

1. What rows in A are not included in the result?

2. What rows in B are not included in the result?

3. When is a row included?

4. What is the meaning of RIGHT OUTER JOIN?

## Model 5

Query

```sql
SELECT a_key, b_key, a_val, b_val
FROM A
FULL JOIN B ON a_val = b_val
```

Result

| a_key | b_key | a_val | b_val |
| ----- | ----- | ----- | ----- |
| a1    | b1    | 1     | 1     |
| a2    | b2    | 2     | 2     |
| a3    |       | 3     |       |
| a4    |       | 4     |       |
|       | b5    |       | 5     |
|       | b6    |       | 6     |

1. What rows in A are not included in the result?

2. What rows in B are not included in the result?

3. When is a row included?

4. What is the meaning of FULL JOIN?

## Model 6

Confirm the above by creating the tables in Postgres and running the
queries. Paste the SQL for creating and populating the tables below.

```sql

```
