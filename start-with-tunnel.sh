#!/bin/bash

# Exporta el puerto desde Railway
export N8N_PORT="${PORT:-5678}"

# Arranca el túnel en segundo plano
npx tunnel --port $N8N_PORT --hostname 0.0.0.0 &

# Espera 3 segundos para que arranque el túnel
sleep 3

# Ejecuta N8N normalmente
./node_modules/.bin/n8n start
