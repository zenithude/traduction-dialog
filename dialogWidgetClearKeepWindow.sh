#!/bin/bash

# creer des boites de dialogue imbriquées qui apparaissent à la validation
# de la précédente

# Mélange d'option --clear et --keep-window

# Le code suivant laisse uniquement la 1ère et la 3ème ordre 3,1

dialog \
--clear --title "Je suis la 1ère Boite de validation" \
--begin 2 2 --yesno "(Y/N)" 0 0 \
--and-widget --clear --title "Je suis la 2ème Boite de validation" \
--begin 4 4 --yesno "(Y/N)" 0 0 \
--and-widget --title "Je suis la 3ème Boite de validation" \
--begin 6 6 --yesno "(Y/N)" 0 0
