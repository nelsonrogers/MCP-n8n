FROM python:3.11-slim

WORKDIR /app

RUN pip install uv

COPY requirements.txt .
#RUN pip install --no-cache-dir -r requirements.txt

RUN  uv venv
RUN uv pip install -r requirements.txt --system

COPY . /app

EXPOSE 8000
CMD ["uv", "run", "server.py"]