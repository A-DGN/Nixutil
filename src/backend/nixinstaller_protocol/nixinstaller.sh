#!/usr/bin/env bash

# Affiche un message pour indiquer que le script s'exécute
echo "Le script s'exécute correctement !" | tee /tmp/script_test.log

# Crée un fichier pour vérifier les permissions d'écriture
echo "Fichier créé par le script à $(date)" > /tmp/test_script.txt

# Teste la connectivité réseau en téléchargeant une page web
curl -o /tmp/test_download.html https://www.example.com

# Affiche un message final
echo "Test terminé. Les résultats ont été enregistrés dans /tmp/script_test.log, /tmp/test_script.txt, et /tmp/test_download.html"
