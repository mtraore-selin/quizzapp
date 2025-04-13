-- BEGIN;

-- INSERT INTO T_QUIZ (ID,TITLE,DESCRIPTION,TAGS,THUMBNAIL) VALUES ('534a8bc2-ab0a-47ba-ba31-8816deb76aed','Quiz Node.js','Testez vos connaissances sur Node.js avec ce quiz interactif ! Explorez des sujets tels que les modules intégrés, la gestion des paquets, et les frameworks populaires. Chaque question est conçue pour évaluer et renforcer vos compétences en développement Node.js.','Node.js;Runtime','https://externlabs.com/blogs/wp-content/uploads/2021/12/2400%D1%851260-rw-blog-node-js.png');
-- INSERT INTO T_QUIZ_QUESTION (ID,QUIZ_ID,QUESTION,OPTIONS,ANSWER_INDEX) VALUES ('dc4d0f5e-083d-4604-a682-14cff7fe81fb','534a8bc2-ab0a-47ba-ba31-8816deb76aed','Quel module intégré de Node.js est utilisé pour travailler avec le système de fichiers?','http;fs;path;url',1);
-- INSERT INTO T_QUIZ_QUESTION (ID,QUIZ_ID,QUESTION,OPTIONS,ANSWER_INDEX) VALUES ('3540edb2-0996-4123-a3b3-16ef21c1490f','534a8bc2-ab0a-47ba-ba31-8816deb76aed','Quelle commande permet d''initialiser un nouveau projet Node.js?','node init;npm start;npm init;node start',2);
-- INSERT INTO T_QUIZ_QUESTION (ID,QUIZ_ID,QUESTION,OPTIONS,ANSWER_INDEX) VALUES ('365dab7f-dfb8-4086-9b6d-1f8bfebe41ec','534a8bc2-ab0a-47ba-ba31-8816deb76aed','Quel est le gestionnaire de paquets par défaut pour Node.js?','npm;yarn;bower;pip',0);
-- INSERT INTO T_QUIZ_QUESTION (ID,QUIZ_ID,QUESTION,OPTIONS,ANSWER_INDEX) VALUES ('7f50487d-d13e-4735-9cec-41ce7c7720a8','534a8bc2-ab0a-47ba-ba31-8816deb76aed','Quel mot-clé est utilisé pour importer un module dans Node.js?','require;import;include;fetch',0);
-- INSERT INTO T_QUIZ_QUESTION (ID,QUIZ_ID,QUESTION,OPTIONS,ANSWER_INDEX) VALUES ('d55218d3-253e-4a6e-b963-84d473a64647','534a8bc2-ab0a-47ba-ba31-8816deb76aed','Quel framework web est couramment utilisé avec Node.js pour construire des applications web?','React;Angular;Express;Vue',2);

-- INSERT INTO T_QUIZ (ID,TITLE,DESCRIPTION,TAGS,THUMBNAIL) VALUES ('c427a057-0c50-4688-887c-32400451cc1b','Quiz Java','Testez vos connaissances en Java avec ce quiz interactif ! Abordez des sujets tels que la syntaxe de base, la programmation orientée objet, et les frameworks populaires. Chaque question est conçue pour évaluer et enrichir vos compétences en Java.','java;programmation','https://appmaster.io/api/_files/hRaLG2N4DVjRZJQzCpN2zJ/download');
-- INSERT INTO T_QUIZ_QUESTION (ID,QUIZ_ID,QUESTION,OPTIONS,ANSWER_INDEX) VALUES ('329b3d74-14b4-46f9-9c14-f2d0a275ef39','c427a057-0c50-4688-887c-32400451cc1b','Quelle méthode est appelée lorsqu''un objet est utilisé dans une déclaration try-with-resources ?','finalize();close();dispose();shutdown()',1);
-- INSERT INTO T_QUIZ_QUESTION (ID,QUIZ_ID,QUESTION,OPTIONS,ANSWER_INDEX) VALUES ('bcc0c2c4-1c7b-4312-94dc-65488a5f72d8','c427a057-0c50-4688-887c-32400451cc1b','Quel est le mot-clé utilisé pour empêcher l''héritage d''une classe ?','static;abstract;final;synchronized',2);
-- INSERT INTO T_QUIZ_QUESTION (ID,QUIZ_ID,QUESTION,OPTIONS,ANSWER_INDEX) VALUES ('c7460300-0949-49d1-b72b-82281da626eb','c427a057-0c50-4688-887c-32400451cc1b','Quel est le mot-clé utilisé pour hériter d''une classe en Java ?','inherits;implements;super;extends',3);
-- INSERT INTO T_QUIZ_QUESTION (ID,QUIZ_ID,QUESTION,OPTIONS,ANSWER_INDEX) VALUES ('9fa304c3-dbaa-4699-befe-bf612618892a','c427a057-0c50-4688-887c-32400451cc1b','Quel est le type de la valeur retournée par la méthode hashCode() dans la classe Object en Java ?','int;long;float;double',0);
-- INSERT INTO T_QUIZ_QUESTION (ID,QUIZ_ID,QUESTION,OPTIONS,ANSWER_INDEX) VALUES ('27159b89-4932-48f1-bd9f-5b08f5e359ab','c427a057-0c50-4688-887c-32400451cc1b','Quelle méthode est utilisée pour démarrer un Thread en Java ?','init();start();run();execute()',1);

-- COMMIT;

BEGIN;

INSERT INTO T_QUIZ (ID,TITLE,DESCRIPTION,TAGS,THUMBNAIL) VALUES 
('534a8bc2-ab0a-47ba-ba31-8816deb76aed','Node.js Quiz','Test your knowledge of Node.js with this interactive quiz! Explore topics like built-in modules, package management, and popular frameworks. Each question is designed to assess and reinforce your Node.js development skills.','Node.js;Runtime','https://externlabs.com/blogs/wp-content/uploads/2021/12/2400%D1%851260-rw-blog-node-js.png');
INSERT INTO T_QUIZ_QUESTION (ID,QUIZ_ID,QUESTION,OPTIONS,ANSWER_INDEX) VALUES 
('dc4d0f5e-083d-4604-a682-14cff7fe81fb','534a8bc2-ab0a-47ba-ba31-8816deb76aed','Which built-in Node.js module is used to work with the file system?','http;fs;path;url',1);
INSERT INTO T_QUIZ_QUESTION (ID,QUIZ_ID,QUESTION,OPTIONS,ANSWER_INDEX) VALUES 
('3540edb2-0996-4123-a3b3-16ef21c1490f','534a8bc2-ab0a-47ba-ba31-8816deb76aed','Which command initializes a new Node.js project?','node init;npm start;npm init;node start',2);
INSERT INTO T_QUIZ_QUESTION (ID,QUIZ_ID,QUESTION,OPTIONS,ANSWER_INDEX) VALUES 
('365dab7f-dfb8-4086-9b6d-1f8bfebe41ec','534a8bc2-ab0a-47ba-ba31-8816deb76aed','What is the default package manager for Node.js?','npm;yarn;bower;pip',0);
INSERT INTO T_QUIZ_QUESTION (ID,QUIZ_ID,QUESTION,OPTIONS,ANSWER_INDEX) VALUES 
('7f50487d-d13e-4735-9cec-41ce7c7720a8','534a8bc2-ab0a-47ba-ba31-8816deb76aed','Which keyword is used to import a module in Node.js?','require;import;include;fetch',0);
INSERT INTO T_QUIZ_QUESTION (ID,QUIZ_ID,QUESTION,OPTIONS,ANSWER_INDEX) VALUES 
('d55218d3-253e-4a6e-b963-84d473a64647','534a8bc2-ab0a-47ba-ba31-8816deb76aed','Which web framework is commonly used with Node.js to build web applications?','React;Angular;Express;Vue',2);

INSERT INTO T_QUIZ (ID,TITLE,DESCRIPTION,TAGS,THUMBNAIL) VALUES 
('c427a057-0c50-4688-887c-32400451cc1b','Java Quiz','Test your knowledge of Java with this interactive quiz! Cover topics like basic syntax, object-oriented programming, and popular frameworks. Each question is designed to assess and enhance your Java skills.','java;programming','https://appmaster.io/api/_files/hRaLG2N4DVjRZJQzCpN2zJ/download');
INSERT INTO T_QUIZ_QUESTION (ID,QUIZ_ID,QUESTION,OPTIONS,ANSWER_INDEX) VALUES 
('329b3d74-14b4-46f9-9c14-f2d0a275ef39','c427a057-0c50-4688-887c-32400451cc1b','Which method is called when an object is used in a try-with-resources statement?','finalize();close();dispose();shutdown()',1);
INSERT INTO T_QUIZ_QUESTION (ID,QUIZ_ID,QUESTION,OPTIONS,ANSWER_INDEX) VALUES 
('bcc0c2c4-1c7b-4312-94dc-65488a5f72d8','c427a057-0c50-4688-887c-32400451cc1b','Which keyword is used to prevent a class from being inherited?','static;abstract;final;synchronized',2);
INSERT INTO T_QUIZ_QUESTION (ID,QUIZ_ID,QUESTION,OPTIONS,ANSWER_INDEX) VALUES 
('c7460300-0949-49d1-b72b-82281da626eb','c427a057-0c50-4688-887c-32400451cc1b','Which keyword is used to inherit a class in Java?','inherits;implements;super;extends',3);
INSERT INTO T_QUIZ_QUESTION (ID,QUIZ_ID,QUESTION,OPTIONS,ANSWER_INDEX) VALUES 
('9fa304c3-dbaa-4699-befe-bf612618892a','c427a057-0c50-4688-887c-32400451cc1b','What is the return type of the hashCode() method in the Object class in Java?','int;long;float;double',0);
INSERT INTO T_QUIZ_QUESTION (ID,QUIZ_ID,QUESTION,OPTIONS,ANSWER_INDEX) VALUES 
('27159b89-4932-48f1-bd9f-5b08f5e359ab','c427a057-0c50-4688-887c-32400451cc1b','Which method is used to start a Thread in Java?','init();start();run();execute()',1);

COMMIT;
