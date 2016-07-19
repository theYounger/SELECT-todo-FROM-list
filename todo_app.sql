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
  id  integer CONSTRAINT NOT NULL DEFAULT PRIMARY KEY,
  title varchar(255) CONSTRAINT NOT NULL,
  description text,
  created_at timestamp without time zone CONSTRAINT NOT NULL DEFAULT now(),
  updated_at timestamp without time zone,
  completed boolean CONSTRAINT NOT NULL DEFAULT false
  );
--8 Write queries to accomplish the following
--i remove the column named completed
-- ALTER TABLE tasks DROP COLUMN completed;
-- --ii add a column to tasks named completed_at:timestamp, that may be NULL, and has a default value of NULL
-- ALTER TABLE tasks ADD COLUMN completed_at :timestamp;
-- --iii change the updated_at column to not allow NULL values, and have a default value of now()
-- ALTER TABLE tasks ALTER COLUMN completed_at SET DEFAULT NULL;
-- ALTER TABLE tasks ALTER COLUMN updated_at SET NOT NULL;
-- ALTER TABLE tasks ALTER COLUMN updated_at SET DEFAULT now();
---iv

SELECT * FROM tasks;
--end
\c kyle;