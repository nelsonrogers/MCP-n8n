# FastMCP Server

This project implements a Model Context Protocol (MCP) server using FastMCP, allowing AI models to interact with your application through a standardized interface.

## Features

- FastMCP integration for modern, high-performance MCP
- Docker and Docker Compose support for easy deployment
- Simple example of MCP tools

## Getting Started

### Prerequisites

- Python 3.11 or higher
- Docker and Docker Compose (optional, for containerized deployment)

### Installation
#### Docker Deployment

1. Clone the repository
2. Run with Docker Compose:
   ```bash
   docker-compose up -d
   ```

In n8n, import the `example_agent_n8n.json` workflow or create your own

## Server Endpoints

- `/sse` - Server-Sent Events endpoint for real-time communication

## MCP Tools

The server provides the following MCP tools:

- `add(a: int, b:int) -> int` - Adds a and b
- `greeting(hint: str) -> int` - Just displays a message.

## Connecting to the MCP Server

To connect to the MCP server from an AI model or client: Use the `/sse` endpoint with Server-Sent Events (SSE)
