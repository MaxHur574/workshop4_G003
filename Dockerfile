# Etapa 1: Builder
FROM python:3.12-alpine AS builder
WORKDIR /app

COPY docker_with_problems/src/requirements.txt .

RUN pip install --no-cache-dir uv \
    && uv venv \
    && uv pip install --no-cache-dir -r requirements.txt

COPY docker_with_problems/src/ .

# Etapa 2: Imagen final
FROM python:3.12-alpine
WORKDIR /app

# Copiar todo desde builder (incluye venv y código)
COPY --from=builder /app /app

# Instalar uv en el sistema global para que esté en PATH
RUN pip install --no-cache-dir uv

EXPOSE 5001

CMD ["uv", "run", "python", "app.py"]





