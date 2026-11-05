#!/bin/bash

echo "Starting website tests..."

if [ -f "app/index.html" ]; then
    echo "PASS: Website HTML file exists"
else
    echo "FAIL: Website HTML file is missing"
    exit 1
fi

if grep -q "Building the Future with <span>DevOps</span>" app/index.html; then
    echo "PASS: Website heading found"
else
    echo "FAIL: Website heading not found"
    exit 1
fi

echo "All tests passed!"
