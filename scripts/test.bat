@echo off
echo Running tests...

IF EXIST app\index.html (
    echo Test Passed: index.html found
) ELSE (
    echo Test Failed: index.html not found
    exit /b 1
)

echo All tests passed successfully
