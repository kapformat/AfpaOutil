-- Sélectionner une table entière (*)

SELECT * FROM nomTable

-- Sélectionner les colonnes adequats (liste colonnes)

SELECT col1, col2, ..., colFin FROM nomTable

/* Sélectionner plusieurs lignes en fonction d'une condition (WHERE)

SELECT * FROM nomTable WHERE condition */

-- Quelques exemples de WHERE
SELECT * FROM nomTable
WHERE 
	col1 = 'test'								-- toutes les lignes dont la valeur de col1 = 'test'

SELECT * FROM nomTable
WHERE
	col1 = 3									-- toutes les lignes dont la valeur de col1 = 3

-- De manière générale, on peut utiliser tous les opérateurs !=, <, >, <=, >= comme =

SELECT * FROM nomTable
WHERE 
	col1 = 'test' OR col1 = 'truc'				-- toutes les lignes dont la valeur de col1 = 'test' OU 'truc'

SELECT * FROM nomTable
WHERE
	col1 = 'test' AND col2 = 'truc'				-- toutes les lignes dont la valeur de col1 = 'test' ET col2 = 'truc'       /!\ Avec AND, on ne peut pas avoir une colonne avec 2 égalités

SELECT * FROM nomTable
WHERE 
	col1 = (SELECT colAutre FROM uneAutreTable) -- toutes les lignes dont la valeur de col1 est égal au résultat de la requête "SELECT colAutre FROM uneAutreTable" Cette requête ne renvoie qu'un seul résultat

SELECT * FROM nomTable
WHERE 
	col1 IN ('test', 'truc')					-- toutes les lignes dont la valeur de col1 est égal aux expressions dans la parenthèse

SELECT * FROM nomTable
WHERE 
	col1 IN (SELECT colAutre FROM uneAutreTable)-- toutes les lignes dont la valeur de col1 est égal au résultat de la requête "SELECT colAutre FROM uneAutreTable" Cette requête peut renvoyer plusieurs résultats

-- On peut également demander l'inverse avec l'opérateur NOT IN

SELECT * FROM nomTable
WHERE 
	col1 LIKE 'chaine%'							-- toutes les lignes dont la valeur de col1 commence par 'chaine'

SELECT * FROM nomTable
WHERE 
	col1 LIKE '%chaine'							-- toutes les lignes dont la valeur de col1 fini par 'chaine'

SELECT * FROM nomTable
WHERE 
	col1 LIKE '%chaine%'						-- toutes les lignes dont la valeur de col1 contient 'chaine'

-- On peut également demander l'inverse avec l'opérateur NOT LIKE

SELECT * FROM nomTable
WHERE 
	col1 BETWEEN 'a' AND 'c'					-- toutes les lignes dont la valeur de col1 est comprise entre a et c (aa est dedans, ca est exclu), marche aussi avec les nombres




/* LES UPDATE 

Syntaxe : */

UPDATE nomTable SET col1 = 'nouvelleValeur'

-- Les conditions WHERE s'applique de la même façon que les SELECT. Ainsi, avant de passer un UPDATE, il convient de vérifer avec un SELECT que ce qui va être modifié correspond bien à ce qui est voulu.

--Exemple :
SELECT * FROM maTable WHERE col1 = 'test'  -- je veux faire un UPDATE sur toutes les lignes où col1 = 'test', je vérifie que ma requête donne bien les résultats que je veux modifier

UPDATE maTable SET col2 = 'coucou' WHERE col1 = 'test'  -- Une fois la vérification faîte, je passe mon UPDATE. NB : le "SELECT * FROM" se transforme en "UPDATE" puis on rajoute le SET pour la modification, plus besoin de toucher au WHERE





