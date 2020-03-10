CREATE TABLE  IF NOT EXISTS TOPIC (
	topic_id	INTEGER NOT NULL PRIMARY KEY,
	name	TEXT NOT NULL
);

INSERT INTO TOPIC(topic_id, name) VALUES (1, 'Introduction / Getting Started'), (2, 'C++ Basics'),  (3, 'C++ Basics: Functions and Files'), (4, 'Debugging C++ Programs'), (5, 'Debugging C++ Programs'),
(6, 'Fundamental Data Types'), (7, 'Operators'),  (8, 'Bit Manipulation (9,　optional chapter)'), (10, 'Object Scope and Conversions'),  (11, 'Compound Types - originally chapter 4'),  (12, 'Control Flow - originally chapter 5'),
(13, 'Arrays, Strings, Pointers, and References - originally chapter 6'), (14, 'Functions - originally chapter 7'), (15, 'Basic object-oriented programming'),  (16, 'Operator overloading'), (17, 'An introduction to object relationships'),
(18, 'Inheritance'),  (19, 'Virtual Functions'), (20, 'Templates'),  (21, 'Exceptions'),  (22, 'Move semantics and smart pointers'), (23, 'The Standard Template Library'),  (24, 'std::string'),
 (25, 'Input and output (I/O)'), (26, 'Miscellaneous Subjects'),  (27, 'The end') ;


 CREATE TABLE IF NOT EXISTS 'LESSON' (
	'lesson_id'	INTEGER NOT NULL PRIMARY KEY,    
	'topic_id' INTEGER NOT NULL ,
		'title' 	TEXT  NOT NULL ,
	'content'	TEXT  NOT NULL ,
    FOREIGN KEY (topic_id) REFERENCES TOPIC(topic_id)

);

INSERT INTO LESSON VALUES(1, 1, 'Bài học 1 -1 ', 'Nội dung bài học');

 CREATE TABLE IF NOT EXISTS 'QUESTION' (
	'question_id'	INTEGER NOT NULL PRIMARY KEY,    
	'lesson_id' INTEGER NOT NULL ,
	'title' 	TEXT  NOT NULL ,
	'content'	TEXT  NOT NULL ,
    FOREIGN KEY (lesson_id) REFERENCES LESSON(lesson_id)
);

INSERT INTO QUESTION VALUES(1, 1, 'Câu hỏi bài học 1 -1 ', 'Nội dung câu hỏi 1 - 1');

 CREATE TABLE IF NOT EXISTS 'ANSWER' (
	'answer_id'	INTEGER NOT NULL PRIMARY KEY,    
	'lesson_id' INTEGER NOT NULL ,
    'question_id' INTEGER NOT NULL ,   
	'title' 	TEXT  NOT NULL ,
	'content'	TEXT  NOT NULL ,
	 FOREIGN KEY (lesson_id) REFERENCES LESSON(lesson_id),
    FOREIGN KEY (question_id) REFERENCES QUESTION(question_id)
);

INSERT INTO ANSWER VALUES(1, 1, 1, 'Câu trả lời bài học 1 -1 ', 'Nội dung câu trả lời 1 - 1');
