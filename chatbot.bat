@echo off
title CMD Chatbot
echo === CMD Chatbot ===
echo Type 'exit' to quit
echo.

set TOKEN=batman2004

:loop
set /p INPUT="You: "
if /i "%INPUT%"=="exit" goto end

curl -s -G "https://chatbot.23bma106.workers.dev/" --data-urlencode "msg=%INPUT%" --data-urlencode "token=%TOKEN%"

echo.
echo.
goto loop

:end
cls
