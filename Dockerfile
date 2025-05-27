FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

COPY . /app

EXPOSE 8000
CMD ["python", "server.py"]

#FROM ghcr.io/astral-sh/uv:python3.11-bookworm-slim AS uv
#
#WORKDIR /app
#
#ENV UV_COMPILE_BYTECODE=1
#
## Copy from the cache instead of linking since it's a mounted volume
#ENV UV_LINK_MODE=copy
#
#COPY uv.lock pyproject.toml /app/
#RUN --mount=type=cache,target=/root/.cache/uv \
#    uv sync --frozen --no-dev --no-editable
#
#ADD . /app
#RUN --mount=type=cache,target=/root/.cache/uv \
#    uv sync --frozen --no-dev --no-editable
#
#FROM python:3.11-slim-bookworm
#
#WORKDIR /app
#
#COPY . /app
# 
#COPY --from=uv --chown=app:app /app/.venv /app/.venv
#
## Ensure executables in the venv take precedence over system executables
#ENV PATH="/app/.venv/bin:$PATH"
#
#EXPOSE 8000
#
## when running the container, add --db-path and a bind mount to the host's db file
#RUN ls