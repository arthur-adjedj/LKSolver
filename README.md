# Proof assistant

A simple experimental proof assistant, being made for academic purposes.
It is based on sequent calculus LK
The prover has basic syntax and rules, and doesn't yet work with "forall" and "exists" rules.
The main goal is to make it function on basic boolean propositions, before possibly building up to other cases such as natural numbers.

## How it currently works

### Proof file syntax

```
proof <name> <formula>
<rule 1>
.
.
.
<rule n>
```

`name` can contain a-z letters, numbers as well as `-` and `_`

The syntax of formulas is as follow:
-Variable names : `A-Z`

-And : `^`

-Or : `v` 

-Imp : `->`

-Not : `-|` or `¬`


Parenthesis are allowed and usable in formula names

There are a few rules available. In order to make things more readable, the permutation is not implemented, you can instead act on the i-th element of the left or right side of a sequent as you wish:
-Axiom : `axiom`

-Left/Right Weakening i : `wl i` / `wr i` 

-Left/Right Contraction i : `cl i` /`cr i`

-Left/Right Not i : `notl i` or `¬l i` / `notr i` or `¬r i`

-Left/Right Ant i  : `^l i` / `^r i`

-Left/Right Or i  : `vl i` / `vr i`

-Left/Right Imply i  : `->l i` / `->r i`

-Reduction i j : `reduc i j` (if A is present on both sides, it makes all the weakening/contractions in one go)

-Extern : `ext <name>` with `<name>` being the name of a previously saved, already proved proposition


### Automatic mode
  
If you want to simply verify if a proposition is correct, you can simply write `proof <name> <formula>` in a file, and check it using `th_prover <dir>` in your shell, with `<dir>` being the directory in which the formula is written. 

Otherwise, if you want to also check if your own sequence of rules work, you can add `-m true` in the command

### Exemple 

Let's try to verify if the following property is true :  `((A -> B) ^ ¬B) -> ¬A`
This property is refered to as the `Modus Tollens`, let's write in a certain file called `modus_tollens` the following:

```
proof modus_tollens ((A -> B) ^ ¬B) -> ¬A

```

by running `th_prover modus_ponens`, we get the following result:

```
tentative de résolution automatique de la propriété:
(((A)->(B))^(¬(B)))->(¬(A))

----------<- reduc 0 0
B,A ├ B
----------    ----------<- reduc 0 1
B,A ├ B        A ├ B,A
-----------------<- ->gauche 0
(A)->(B),A ├ B
----------------------<- ┐gauche 1
(A)->(B),¬(B),A ├
--------------------------<- ^gauche 0
((A)->(B))^(¬(B)),A ├
-----------------------------<- ┐droite 0
((A)->(B))^(¬(B)) ├ ¬(A)
-----------------------------------<- ->droite 0
 ├ (((A)->(B))^(¬(B)))->(¬(A))
Propriété "modus_tollens" ajoutée au répertoire avec succès !
formule modus_tollens correcte et ajouté au registre
```

The text is currently in french, sorry about that.
The command will also display the tactics used to reduce the first expression.
The proposition being right, it was saved and can now be used again for further proofs using `ext modus_tollens` 
