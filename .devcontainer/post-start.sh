#!/usr/bin/env bash
# Attend que le démon Docker soit prêt au démarrage du Codespace
echo "⏳ Attente du démon Docker..."
for i in $(seq 1 30); do
  if docker info > /dev/null 2>&1; then
    echo "✅ Docker est prêt : $(docker --version)"
    echo "✅ Compose : $(docker compose version --short)"
    echo "👉 Lancez la stack avec : docker compose up -d --build"
    exit 0
  fi
  sleep 2
done
echo "❌ Docker n'a pas démarré après 60 s. Essayez : sudo /usr/local/share/docker-init.sh"
exit 1
