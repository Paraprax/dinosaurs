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
6. #Find Shortest Dinosaur
   SELECT name, length FROM dinos ORDER BY length ASC LIMIT 1;
  #Find the shortest dinosaur, and rename it
   UPDATE dinos SET name = 'Shortie' WHERE name = 'Liaoxiornis';

#Find the alphabetically first dinosaur, so we can make sure they're present for class.
7. SELECT name FROM dinos ORDER BY name ASC LIMIT 1;

#Rename the five longest dinosaurs The Famous Five.
8.
  #initial crude method
  SELECT name, length, species FROM dinos WHERE length>0 ORDER BY length DESC LIMIT 5;
   #read returns, then
   UPDATE dinos SET SPECIES='The Famous Five'
   WHERE name='Seismosaurus'
   OR name='Supersaurus'
   OR name='Argentinosaurus'
   OR name='Brachiosaurus'
   OR name='Paralititan';

   #subsquent more elegant method
   UPDATE dinos SET SPECIES='The Famous Fiveosaurs' WHERE name IN (SELECT name FROM dinos WHERE length>0 ORDER BY length DESC LIMIT 5);
