FROM gcc:14.2 AS builder
WORKDIR /app
COPY main.c .
RUN gcc -o myapp main.c

FROM fedora:latest
WORKDIR /app
COPY --from=builder /app/myapp .
CMD ["./myapp"]
