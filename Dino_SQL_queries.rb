#Let's start by figuring out how many dinosaurs we have. Count the number of dinosaurs.

1. SELECT COUNT (*) FROM dinos;

#Find all the dinosaurs from the Jurassic period.

2. SELECT * FROM dinos WHERE period='Jurassic';

#Find the total sum length of all the dinosaurs from the Cretaceous period.

3. SELECT SUM(length) FROM dinos WHERE period='Cretaceous';

#Find all the dinosaurs from either the Jurassic OR Cretaceous periods, and order them by their species name alphabetically.

4. SELECT * FROM dinos WHERE period='Jurassic' OR period='Cretaceous' ORDER BY name;

#Find all the dinosaurs from the t_order Saurischia that are Herbivorous.

5. SELECT * FROM dinos WHERE t_order='Saurischia' and diet='Herbivorous';

#Dinosaur names are hard to remember. Find the shortest dinosaur, and rename it Shortie.

6.
