"""
dicoProfs={}
dicoProfs["NSI"]="Turing"
dicoProfs["Maths"]="Pythagore"
dicoelse Profs["Français"]="Balzac"
print(dicoProfs)
print(dicoProfs["NSI"])
dicoProfs2={"SI":"Effel","Phys":"Einstein","Espagnol":"Dali"}
for cle in dicoProfs.keys():
    print(cle)
for valeur in dicoProfs.values():
    print(valeur)
"""
#Code 1
dicoEleves={}
dicoEleves["e2022001"]="Sophie"
dicoEleves["e2022002"]="Noé"
dicoEleves["e2022003"]="Léa"
dicoEleves["e2022004"]="Alex"
dicoEleves["e2022005"]="Manon"

#Code 2
def ajouterEleve(dicoEleves,cle,nom):
    if cle in dicoEleves.keys():
        print("Clé deja présente ")
    else:
        dicoEleves[cle]=nom
    return dicoEleves

#Code 3
def modofierEleve(dicoEleves,cle,nom):
    if cle in dicoEleves.keys():
        dicoEleves[cle]=nom
    else:
        print("Clé n'est pas présente")
    return dicoEleves
dicoEleves=modofierEleve(dicoEleves,"e2022004","Alexandre")
dicoEleves=modofierEleve(dicoEleves,"e2022009","Toto")
print(dicoEleves)

#Code 4
def supprimerEleve(dicoEleves,cle):
    if cle in dicoEleves.keys():
        print("L'eleve",dicoEleves[cle],"a été supprimer")
        del dicoEleves[cle]
    else:
        print ("la cle n'est pas presente")
    return dicoEleves
dicoEleves=supprimerEleve(dicoEleves,"e2022002")
dicoEleves=supprimerEleve(dicoEleves,"e2022009")

#Code 5
def afficherCle (dicoEleves,nom):
    for cle in dicoEleves.keys():
        if dicoEleves[cle]==nom:
            print(cle)
        else:
            print("Cle non valide")
afficherCle(dicoEleves, 'Manon')
afficherCle(dicoEleves, 'Toto')

#Code 6
def supprimerHomonymes(dicoEleves,nom):
    L_cle_supp=[]
    for cle in dicoEleves.keys():
        if dicoEleves[cle]==nom:
            L_cle_supp.append(cle)
    for i in range(1, len(L_cle_supp)):
        del dicoEleves[L_cle_supp[i]]
    return dicoEleves
dicoEleves=supprimerHomonymes(dicoEleves, "Manon")
print(dicoEleves)
