# Tessier Tibo
""" Code 1
Ecrivez la fonction recup_notes() qui demande à l’utilisateur de rentrer les notes d'un élève et qui les placent dans une liste L_notes_loc.
Une note négative provoquera l'arrêt de la saisie.
Les notes seront comprises entre 0 et 20 mais le programme ne le vérifiera pas.
Cette fonction va retourner la liste de notes L_notes_loc.
A écrire dans le programme principal : L_notes=recup_notes()
"""
"""
def recup_notes():
    L_notes_loc = []
    notes = 1
    while notes >0 :
        notes=int(input("Donnez une note, si vous entrez une valeur negative le programme s'arretera : "))
        L_notes_loc.append(notes)
    return L_notes_loc
L_notes=recup_notes()
print(L_notes)
"""

""" Code 2
Ecrivez la fonction moyenne_notes(L_notes_loc) qui calcule la moyenne des notes de la liste L_notes_loc.
Cette fonction va retourner la moyenne.
A écrire dans le programme principal : moy=moyenne_notes(L_notes)
"""
"""
def moyenne_notes(L_notes_loc):
    somme_loc=0
    for i in range (len(L_notes_loc)):
        somme_loc=L_notes_loc[i]+somme_loc
    moy_loc=somme_loc/len(L_notes_loc)       
    return(moy_loc)

def recup_notes():
    L_notes_loc = []
    notes = 1
    while notes >0 :
        notes=int(input("Donnez une note, si vous entrez une valeur negative le programme s'arretera : "))
        L_notes_loc.append(notes)
    return L_notes_loc
L_notes=recup_notes()
nouvelle_notes=moyenne_notes(L_notes)
print(nouvelle_notes)
"""

"""Code 3
Ecrivez la fonction trouve_min_max(L_notes_loc) qui trouve la note minimum et la note maximum de la liste L_notes_loc.
Cette fonction va retourner le tuple suivant : (min_loc,max_loc).
Le programme principal affichera "la note min est : xx, et la note max est : yy" : xx et yy étant les notes en questions.
Vous n'avez pas le droit d'utiliser les fonctions Python min(L_notes_loc) et max(L_notes_loc).
A écrire dans le programme principal : extremes=trouve_min_max(L_notes)
"""

def trouve_min_max(L_notes_loc):
    max_loc=L_notes_loc[0]
    min_loc=L_notes_loc[1]
    for i in range(len(L_notes_loc)):
        if (i>=max_loc):
            max_loc=L_notes_loc[i]
        max_loc=L_notes_loc[0]
    for j in range(len(L_notes_loc)):
        if (j<=min_loc):
            min_loc=L_notes_loc[i]
        min_loc=L_notes_loc[i]
    return min_loc,max_loc

def recup_notes():
    L_notes_loc = []
    notes = 1
    while notes >0 :
        notes=int(input("Donnez une note, si vous entrez une valeur negative le programme s'arretera : "))
        L_notes_loc.append(notes)
    return L_notes_loc
L_notes=recup_notes()
print(L_notes)
min_max=trouve_min_max(L_notes)
print("la note minimum est :",min_max[0],"et la note max est :",min_max[1])
