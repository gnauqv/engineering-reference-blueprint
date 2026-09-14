# ============================================================

# Engineering Reference Blueprint - Makefile

#

# MỤC ĐÍCH:

# - Cung cấp các command phổ biến cho project sau khi migration.

# - Đây là baseline để copy và điều chỉnh, không phải cấu hình

# bắt buộc cho mọi project.

# ============================================================

.PHONY: help install dev build test lint format
docker-up docker-down docker-logs
git-status clean

# ------------------------------------------------------------

# Project configuration

# ------------------------------------------------------------

# Có thể thay đổi sau khi migrate blueprint.

FRONTEND_DIR ?= frontend
BACKEND_DIR ?= backend

# Package manager mặc định cho frontend.

# Có thể đổi thành pnpm hoặc yarn.

FRONTEND_PM ?= npm

# ------------------------------------------------------------

# Help

# ------------------------------------------------------------

help:
@echo "Available commands:"
@echo ""
@echo "  make install       Install project dependencies"
@echo "  make dev           Start development environment"
@echo "  make build         Build project"
@echo "  make test          Run tests"
@echo "  make lint          Run lint"
@echo "  make format        Format code"
@echo ""
@echo "  make docker-up     Start Docker services"
@echo "  make docker-down   Stop Docker services"
@echo "  make docker-logs   Show Docker logs"
@echo ""
@echo "  make git-status    Show Git status"
@echo "  make clean         Remove common generated files"

# ------------------------------------------------------------

# Development

# ------------------------------------------------------------

install:
@echo "Install dependencies according to the project stack."
@echo "Customize this target after migration."

dev:
@echo "Start the frontend/backend development servers."
@echo "Customize this target after migration."

build:
@echo "Build the project."
@echo "Customize this target after migration."

test:
@echo "Run project tests."
@echo "Customize this target after migration."

lint:
@echo "Run linting tools."
@echo "Customize this target after migration."

format:
@echo "Run formatting tools."
@echo "Customize this target after migration."

# ------------------------------------------------------------

# Docker

# ------------------------------------------------------------

docker-up:
docker compose -f templates/devops/docker-compose.yml up -d

docker-down:
docker compose -f templates/devops/docker-compose.yml down

docker-logs:
docker compose -f templates/devops/docker-compose.yml logs -f

# ------------------------------------------------------------

# Git

# ------------------------------------------------------------

git-status:
git status

# ------------------------------------------------------------

# Cleanup

# ------------------------------------------------------------

clean:
@echo "Remove generated files according to the project stack."
@echo "Do not add destructive commands here without project-specific need."
