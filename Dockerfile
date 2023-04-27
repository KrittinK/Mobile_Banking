FROM ghcr.io/cirruslabs/flutter as builder
WORKDIR /app
COPY pubspec.* .
RUN flutter pub get
COPY . .
RUN flutter build web --no-pub

FROM nginx:alpine
COPY --from=builder /app/build/web /usr/share/nginx/html
EXPOSE 80