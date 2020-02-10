-- S�lectionner une table enti�re (*)

SELECT * FROM nomTable

-- S�lectionner les colonnes adequats (liste colonnes)

SELECT col1, col2, ..., colFin FROM nomTable

/* S�lectionner plusieurs lignes en fonction d'une condition (WHERE)

SELECT * FROM nomTable WHERE condition */

-- Quelques exemples de WHERE
SELECT * FROM nomTable
WHERE 
	col1 = 'test'								-- toutes les lignes dont la valeur de col1 = 'test'

SELECT * FROM nomTable
WHERE
	col1 = 3									-- toutes les lignes dont la valeur de col1 = 3

-- De mani�re g�n�rale, on peut utiliser tous les op�rateurs !=, <, >, <=, >= comme =

SELECT * FROM nomTable
WHERE 
	col1 = 'test' OR col1 = 'truc'				-- toutes les lignes dont la valeur de col1 = 'test' OU 'truc'

SELECT * FROM nomTable
WHERE
	col1 = 'test' AND col2 = 'truc'				-- toutes les lignes dont la valeur de col1 = 'test' ET col2 = 'truc'       /!\ Avec AND, on ne peut pas avoir une colonne avec 2 �galit�s

SELECT * FROM nomTable
WHERE 
	col1 = (SELECT colAutre FROM uneAutreTable) -- toutes les lignes dont la valeur de col1 est �gal au r�sultat de la requ�te "SELECT colAutre FROM uneAutreTable" Cette requ�te ne renvoie qu'un seul r�sultat

SELECT * FROM nomTable
WHERE 
	col1 IN ('test', 'truc')					-- toutes les lignes dont la valeur de col1 est �gal aux expressions dans la parenth�se

SELECT * FROM nomTable
WHERE 
	col1 IN (SELECT colAutre FROM uneAutreTable)-- toutes les lignes dont la valeur de col1 est �gal au r�sultat de la requ�te "SELECT colAutre FROM uneAutreTable" Cette requ�te peut renvoyer plusieurs r�sultats

-- On peut �galement demander l'inverse avec l'op�rateur NOT IN

SELECT * FROM nomTable
WHERE 
	col1 LIKE 'chaine%'							-- toutes les lignes dont la valeur de col1 commence par 'chaine'

SELECT * FROM nomTable
WHERE 
	col1 LIKE '%chaine'							-- toutes les lignes dont la valeur de col1 fini par 'chaine'

SELECT * FROM nomTable
WHERE 
	col1 LIKE '%chaine%'						-- toutes les lignes dont la valeur de col1 contient 'chaine'

-- On peut �galement demander l'inverse avec l'op�rateur NOT LIKE

SELECT * FROM nomTable
WHERE 
	col1 BETWEEN 'a' AND 'c'					-- toutes les lignes dont la valeur de col1 est comprise entre a et c (aa est dedans, ca est exclu), marche aussi avec les nombres




/* LES UPDATE 

Syntaxe : */

UPDATE nomTable SET col1 = 'nouvelleValeur'

-- Les conditions WHERE s'applique de la m�me fa�on que les SELECT. Ainsi, avant de passer un UPDATE, il convient de v�rifer avec un SELECT que ce qui va �tre modifi� correspond bien � ce qui est voulu.

--Exemple :
SELECT * FROM maTable WHERE col1 = 'test'  -- je veux faire un UPDATE sur toutes les lignes o� col1 = 'test', je v�rifie que ma requ�te donne bien les r�sultats que je veux modifier

UPDATE maTable SET col2 = 'coucou' WHERE col1 = 'test'  -- Une fois la v�rification fa�te, je passe mon UPDATE. NB : le "SELECT * FROM" se transforme en "UPDATE" puis on rajoute le SET pour la modification, plus besoin de toucher au WHERE





