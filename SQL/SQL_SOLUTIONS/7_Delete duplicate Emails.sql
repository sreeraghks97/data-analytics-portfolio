CREATE TABLE mailId (id INT, NAME VARCHAR(100) , email VARCHAR(100) , phone  VARCHAR(100) );

SELECT * FROM mailId ORDER BY id ;

INSERT INTO mailId(id, NAME,email , phone)  VALUES (1,'Rahul','rahul@exmple.com','9839473902'),(2,'Rohit','rohit@example.com','9883782971'),(3,'Suresh','rahul@exmple.com','7654321098'),(4,'Manish','manish@example.com','8927394619'),(5,'Amit','amit@example.com','9399303840'),(6,'Rahul','rahul@exmple.com','9737466147');

DELETE FROM mailId WHERE id NOT IN (SELECT MIN(id)  FROM mailId  GROUP BY email);

SELECT MIN(id)  FROM mailId  GROUP BY email;