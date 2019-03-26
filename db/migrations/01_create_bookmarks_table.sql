CREATE DATABASE "bookmark_manager";
\c bookmark_manager
CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));
INSERT INTO bookmarks (url) VALUES ('http://guardian.co.uk');
INSERT INTO bookmarks (url) VALUES ('http://www.google.com');
