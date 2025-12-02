# Use the official Debezium image as base
FROM debezium/postgres:17

# Image maintainer
LABEL maintainer="jadesonbruno.a@outlook.com"

# Copy SQL script to the Docker entrypoint directory
COPY sql/script.sql /docker-entrypoint-initdb.d/01-init.sql
