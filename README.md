# Mirèlha

## Description

Dans ce dossier, vous trouverez la version bilingue de Mireille en graphie classique.

Pour le lire sur ordinateur, vous avez le fichier './tex/parallelfiles.pdf'.
Pour l'imprimez et en faire un livre, utilisez le fichier './tex/parallelfiles.pdf'.

## Comment ce bouquin a été compiler ?

1. Les textes ont été téléchargés en format PDF sur [Ciel d'Òc](https://www.cieldoc.com);
2. Les fichiers ont été convertis en TXT avec le script './scripts/process_text.sh';
3. Les paragraphes ont été alignés manuellement.;
4. Finalement, le bouquin est compilé en PDF avec './scripts/compile_latex.sh'. Ce dernier script appelle différents fichiers Latex:

    - `./tex/parallelfiles.tex`: place les textes côte à côte;
    - `./tex/addcover.tex`: ajoute la première et quatrième de couverture;
    - `./tex/mirelha.tex`: place les pages dans un ordre permettant d'en faire un livre.

## À faire

- Aligner les vers français avec les vers occitan
- Relire et corriger les fautes
- Plus de langues?
