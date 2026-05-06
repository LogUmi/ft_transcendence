# ---- Build stage ----
FROM node:22-alpine AS builder

WORKDIR /app

# dépendances
COPY package.json package-lock.json ./
RUN npm ci

# code
COPY . .

# build statique (génère /app/dist)
RUN npm run build

# ---- Runtime stage ----
FROM caddy:alpine

# copie les fichiers buildés dans caddy
COPY --from=builder /app/dist /srv

# configuration Caddy pour React Router (SPA)
COPY Caddyfile /etc/caddy/Caddyfile

EXPOSE 80
