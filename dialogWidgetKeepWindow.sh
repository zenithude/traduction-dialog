#!/bin/bash

# creer des boites de dialogue imbriquées qui apparaissent à la validation
# de la précédente

# on peut utiliser l'option --keep-window qui garde au 1er plan la fenêtre active
# elle se place au début des options et
# après la création du widget --and-widget --keep-window et effacera la fenêtre active

# Le code suivant garde toutes les widgets visibles au fil des validations,
# en cascade dans l'ordre 3,2,1:

dialog \
--keep-window --title "Je suis la 1ère Boite de validation" \
--begin 2 2 --yesno "(Y/N)" 0 0 \
--and-widget --keep-window --title "Je suis la 2ème Boite de validation" \
--begin 4 4 --yesno "(Y/N)" 0 0 \
--and-widget --title "Je suis la 3ème Boite de validation" \
--begin 6 6 --yesno "(Y/N)" 0 0
