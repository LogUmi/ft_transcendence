FROM golang:1.25-alpine AS builder

WORKDIR /app

# nécessaire pour go mod download (modules via VCS) + HTTPS
RUN apk add --no-cache git ca-certificates tzdata

# dépendances
COPY go.mod go.sum ./
RUN go mod download

# code
COPY . .

# build binaire statique
RUN CGO_ENABLED=0 GOOS=linux go build -o api ./cmd/server

# ---- Runtime stage ----
FROM alpine:3.19

WORKDIR /app

# ffmpeg conversion audio, convertit le fichier en mp3 apres yt-dlp
RUN apk add --no-cache ffmpeg curl ca-certificates

# yt-dlp cote navigateur, lit le fichier mp3 convertis
RUN curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /usr/local/bin/yt-dlp \
    && chmod a+rx /usr/local/bin/yt-dlp

COPY --from=builder /app/api .

EXPOSE 8080
CMD ["./api"]
