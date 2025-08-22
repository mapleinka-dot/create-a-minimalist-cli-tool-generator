#!/bin/bash
# bsak_create_a_minima.sh
# A minimalist CLI tool generator

# Function to create a new CLI tool
create_cli_tool() {
  local TOOL_NAME=$1
  local TOOL_DIR="./${TOOL_NAME}"

  # Create the tool directory
  mkdir -p "${TOOL_DIR}"

  # Create the tool script
  cat > "${TOOL_DIR}/${TOOL_NAME}.sh" <<EOF
#!/bin/bash
# ${TOOL_NAME}

# Add your CLI tool logic here
echo "Welcome to ${TOOL_NAME}!"
EOF

  # Make the script executable
  chmod +x "${TOOL_DIR}/${TOOL_NAME}.sh"

  echo "CLI tool '${TOOL_NAME}' created successfully!"
}

# Display usage information
display_usage() {
  echo "Usage: $0 <tool_name>"
  echo "Example: $0 my_cli_tool"
}

# Check if the required argument is provided
if [ $# -eq 0 ]; then
  display_usage
  exit 1
fi

# Create the CLI tool
create_cli_tool $1