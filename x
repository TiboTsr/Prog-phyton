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
