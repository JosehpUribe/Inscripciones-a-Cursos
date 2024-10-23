INSERT INTO estudiantes (nombre, edad)
VALUES ('Natalia Osorio', '12'),
('Colin Anderson', '13'),
('Maria Colmes', '11'),
('Peppers Patel', '14'),
('Jack Mannson', '14');

INSERT INTO cursos (nombre, duracion) VALUES 
('Matemáticas', 30),
('Historia', 45),
('Ciencias', 40),
('Programación', 60);

INSERT INTO inscripciones (id_estudiante, id_curso) VALUES 
(1, 2),  
(1, 3),  
(2, 1),  
(3, 3),  
(4, 4),  
(5, 4);

SELECT e.nombre AS Estudiante, c.nombre AS Curso
FROM estudiantes e
JOIN inscripciones i ON e.id = i.id_estudiante
JOIN cursos c ON i.id_curso = c.id;  

SELECT e.nombre
FROM estudiantes e
JOIN inscripciones i ON e.id = i.id_estudiante
JOIN cursos c ON i.id_curso = c.id
WHERE c.nombre = 'Matemáticas';

SELECT c.nombre
FROM cursos c
JOIN inscripciones i ON c.id = i.id_curso
JOIN estudiantes e ON i.id_estudiante = e.id
WHERE e.nombre = 'Natalia Osorio';

SELECT c.nombre, COUNT(i.id_estudiante) AS NumeroEstudiantes
FROM cursos c
LEFT JOIN inscripciones i ON c.id = i.id_curso
GROUP BY c.id;

SELECT e.nombre
FROM estudiantes e
LEFT JOIN inscripciones i ON e.id = i.id_estudiante
WHERE i.id_estudiante IS NULL;

