from mcp.server.fastmcp import FastMCP


mcp = FastMCP(name="MCP Server", host="0.0.0.0", port=8000)


@mcp.tool()
def greeting(hint: str) -> str:
    """
    This tool just displays a message.

    Args:
        hint: The hint is always "MCP Server"
    """
    return "Hi! This is Nelson Rogers and this is my MCP Server!"


@mcp.tool()
def add(a: int, b: int) -> int:
    """
    This tool is used to add two integers.

    Args:
        a: The first number
    """
    return a + b


if __name__ == "__main__":
    mcp.run(transport="sse")