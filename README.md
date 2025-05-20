# MCP FastAPI Server

This project implements a Model Context Protocol (MCP) server using FastAPI, allowing AI models to interact with your application through a standardized interface.

## Features

- FastAPI integration for modern, high-performance API endpoints
- MCP server implementation for AI model interaction
- Docker and Docker Compose support for easy deployment
- Simple calculation tools (add_one, add_two, multiply) as examples

## Getting Started

### Prerequisites

- Python 3.11 or higher
- Docker and Docker Compose (optional, for containerized deployment)

### Installation

#### Local Development

1. Clone the repository
2. Navigate to the server directory
3. Install dependencies:
   ```bash
   pip install -e .
   ```
4. Run the server:
   ```bash
   python main.py
   ```

#### Docker Deployment

1. Clone the repository
2. Run with Docker Compose:
   ```bash
   docker-compose up -d
   ```

## API Endpoints

- `/health` - Health check endpoint
- `/mcp` - MCP server endpoint for AI model interaction
- `/api/calculate` - Example API endpoint for calculations

## MCP Tools

The server provides the following MCP tools:

- `add_one(x: int) -> int` - Adds one to the input
- `add_two(x: int) -> int` - Adds two to the input
- `multiply(x: int, y: int) -> int` - Multiplies two numbers

## Connecting to the MCP Server

To connect to the MCP server from an AI model or client:

1. Use the `/mcp` endpoint with Server-Sent Events (SSE)
2. Send requests in the MCP format
3. Process the responses from the server

## License

This project is licensed under the MIT License - see the LICENSE file for details.
