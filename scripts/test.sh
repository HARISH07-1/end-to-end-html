#!/bin/bash

echo "Running basic tests..."

# Check if index.html exists
if [ -f app/index.html ]; then
  echo "Test Passed: index.html found"
else
  echo "Test Failed: index.html not found"
  exit 1
fi

# Optional: check file size
if [ -s app/index.html ]; then
  echo "Test Passed: index.html is not empty"
else
  echo "Test Failed: index.html is empty"
  exit 1
fi
