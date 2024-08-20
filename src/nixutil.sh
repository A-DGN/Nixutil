#!/run/current-system/sw/bin/bash

# Remplacez ces variables avec vos informations
NTFY_TOPIC="Jvddmmy6CeKegzYwCqtiRxTELHgQ*vpa_YjsvMQCuDb"   # Le nom du topic ntfy
NTFY_SERVER="https://ntfy.sh"  # L'URL du serveur ntfy, par défaut c'est https://ntfy.sh
MESSAGE="I'm alive"   # Le message que vous souhaitez envoyer

# Optionnel: Ajouter un titre au message
TITLE="MS-01 setup"

# Envoyer le message via une requête POST avec curl
curl -H "Title: $TITLE" -d "$MESSAGE" "$NTFY_SERVER/$NTFY_TOPIC"