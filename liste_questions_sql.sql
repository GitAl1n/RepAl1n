 Liste de requetes à réaliser
============================

-- 1. Combien y a t'il de femmes (F)?

SELECT COUNT(*) FROM auteurs WHERE sexe = 'F' ;

-- 2. Combien y a t'il d'auteurs qui ne sont pas des femmes (F)?

SELECT COUNT(*) nom FROM `auteurs` WHERE sexe != 'F'; -- ou <>

-- 3. Qui est l'auteur le plus agé ?

SELECT nom, YEAR( NOW()) - YEAR (date_naissance) AS age FROM auteurs ORDER BY age DESC LIMIT 1


Pierre	100	


--4. Qui est l'auteur homme le plus jeune ?

SELECT nom, YEAR( NOW()) - YEAR (date_naissance) AS age FROM auteurs WHERE sexe = 'M' ORDER BY age ASC LIMIT 1 ;


Jean	15	

-- 5. Quel est le nom de l'auteur 8 ?

SELECT id_auteur, nom FROM auteurs WHERE id_auteur = 8 ;


--6. Quel age a l'auteur le plus jeune ?


--7. Quel age a l'auteur femme la plus agé ?


--8. Quel auteur a écrit le plus de livre ?


SELECT id_auteur, COUNT(*) AS nombre_de_livre FROM livres GROUP BY id_auteur ORDER BY nombre_de_livre DESC LIMIT 1



3	3	

SELECT a.nom, l.titre FROM livres as l LEFT JOIN auteurs as a ON l.id_auteur = a.id_auteur  WHERE l.id_livre = 3 ;



-- 9. Quel est le nom de l'auteur  qui a écrit le plus de livre ? utilisation des alias


SELECT a.nom, l.titre FROM livres as l LEFT JOIN auteurs as a ON l.id_auteur = a.id_auteur  WHERE a.id_auteur = 3 ;-- en utilisant la requete précédente


nom	titre	
Charles	Elle et lui	
Charles	Et après	
Charles	zulu
	


SELECT a.nom, COUNT(*) AS nombre_de_livre FROM livres as l LEFT JOIN auteurs as a ON l.id_auteur = a.id_auteur GROUP BY l.id_auteur ORDER BY nombre_de_livre DESC LIMIT 1 ;


Charles	3	


-- 10. Liste des femmes 

  SELECT nom, YEAR (NOW(date_naissance)) AS annee , sexe FROM auteurs WHERE sexe LIKE 'F' ORDER BY date_naissance 


nom	annee	sexe	
Marie	1938	F	
Patricia	1948	F	
Muriel	1999	F	
Lili	2000	F	
Géraldine	2003	F	
Joséphine	2007	F	


-- 11. Age des femmes et tri

 SELECT nom, YEAR( NOW()) - YEAR (date_naissance) AS age , sexe FROM auteurs WHERE sexe LIKE 'F' ORDER BY age ASC
 

nom	age   1	sexe	
Joséphine	10	F	
Géraldine	14	F	
Lili	17	F	
Muriel	18	F	
Patricia	69	F	
Marie	79	F	

-- 12. Auteurs dont le nom commence par p

SELECT nom FROM auteurs WHERE nom LIKE 'p%' ;


nom	
Pierre	
Patricia	




