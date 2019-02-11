USE adlister_db;

INSERT INTO users (username, email, password)
VALUES ("Alfie", "alfie@email.com", "SRLAB.moore5"),
       ("Rob", "rob@email.com", "password");

INSERT INTO ads(user_id, title, description)
VALUES (1,"playstation for sale","This is a slightly used playstation"),
       (1,"Super Nintendo","Get your game on with this old-school classic!"),
       (2,"Junior Java Developer Position","Minimum 7 years of experience required. You will be working in the scripting language for Java, JavaScript"),
       (2,"JavaScript Developer needed","Must have strong Java skills");

SELECT * FROM users
JOIN ads a on users.id = a.user_id;