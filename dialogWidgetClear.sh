#!/bin/bash

# creer des boites de dialogue imbriquées qui apparaissent à la validation
# de la précédente

# on peut utiliser l'option --clear pour eviter l'empilement des fenêtre
# elle se place au début des options et
# après la création du widget --and-widget --clear et effacera la fenêtre active

# Le code suivant laisse uniquement la dernière widget visible

dialog \
--clear --title "Je suis la 1ère Boite de validation" \
--begin 2 2 --yesno "(Y/N)" 0 0 \
--and-widget --clear --title "Je suis la 2ème Boite de validation" \
--begin 4 4 --yesno "(Y/N)" 0 0 \
--and-widget --title "Je suis la 3ème Boite de validation" \
--begin 6 6 --yesno "(Y/N)" 0 0
