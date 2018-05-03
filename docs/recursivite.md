# POO2

Benjamin Delacombaz

03.05.2018

## Recursivité

* Une fonction qui s'appelle elle même
* Le langage doit pouvoir gérer la pile des appels avec contexte
* La fonction doit avoir une condition de sortie pour eviter le stack overflow (surcharge mémoire)
* On respect la profondeur des appelles c'est à dire (0-1-2-3-4-5-4-3-2-1-0) Ref doc prof

## Stack trace

* Une partie de la pile (qui à lancé qui...)
* La taille de la pile est choisi par le système d'exploitation et un petit peu du compileur

## Code Smell

* S'il y a plus de 10 (variables et/ou paramètres) il faut exploser la fonction.
* Outils static code analysis permette de nous avertir s'il y notre code est merdique

