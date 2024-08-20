#!/run/current-system/sw/bin/bash

# Remplacez ces variables avec vos informations
NTFY_TOPIC="HLoGiwtvZo9sCHTLGd3PgRYo963R8"  # Utiliser un topic sans caractères spéciaux ou les encoder
NTFY_SERVER="https://ntfy.sh"
MESSAGE="Ceci est un message de test."

# Optionnel: Ajouter un titre au message
TITLE="MS-01 setup"

# Envoyer le message avec des informations de débogage
curl -v \
     -H "Title: $TITLE" \
     -d "$MESSAGE" \
     "$NTFY_SERVER/$NTFY_TOPIC"