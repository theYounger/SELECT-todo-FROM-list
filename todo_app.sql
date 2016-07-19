-- 1
-- DROP user IF EXISTS michael;

--3
DROP DATABASE IF EXISTS todo_app;

--4
CREATE DATABASE todo_app;

--5
\c todo_app;

--6 & 7
CREATE TABLE tasks (
  id SERIAL PRIMARY KEY,
  title varchar(255) NOT NULL,
  description text,
  created_at timestamp NOT NULL DEFAULT now(),
  updated_at timestamp,
  completed boolean NOT NULL DEFAULT false
  );
--8 Write queries to accomplish the following
--i remove the column named completed
ALTER TABLE tasks
  DROP COLUMN completed;
--ii add a column to tasks named completed_at:timestamp, that may be NULL, and has a default value of NULL
ALTER TABLE tasks
  ADD COLUMN completed_at timestamp with time zone DEFAULT NULL;
--iii change the updated_at column to not allow NULL values, and have a default value of now()
ALTER TABLE tasks
  ALTER updated_at SET DEFAULT now();
ALTER TABLE tasks
  ALTER updated_at SET NOT NULL;
--iv
INSERT INTO tasks VALUES (DEFAULT, 'Study SQL', 'Complete this exercise', now(), now(), NULL);
--v
INSERT INTO tasks VALUES (DEFAULT, 'Study PostgreSQL', 'Read all the documentation', DEFAULT, DEFAULT, DEFAULT);
--vi
SELECT title FROM tasks WHERE completed_at IS NULL;
--vii
UPDATE tasks
  SET completed_at = now()
  WHERE title = 'Study SQL';
--viii
SELECT title, description FROM tasks WHERE completed_at IS NULL;
--ix
SELECT * FROM tasks ORDER BY created_at DESC;
\d+ tasks;


SELECT * FROM tasks;
--end
\c kyle;