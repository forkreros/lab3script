#!/bin/bash

# Ім'я файлу для збереження результатів утиліти "top"
OUTPUT_FILE="top_output.txt"

# Кільkість рядків для залишення
# Якщо параметр не заданий, використовується значення за замовчуванням 5
LINES_TO_KEEP=${1:-5}

# Запусk "top" і перенаправлення вмісту в файл
top -b -n 1 > "$OUTPUT_FILE"

# Обрізати файл, залишивши тільки перші n рядків
head -n "$LINES_TO_KEEP" "$OUTPUT_FILE" > temp_file && mv temp_file "$OUTPUT_FILE"

# Повідомлення користувачу
echo "Результат збережено у файл $OUTPUT_FILE. Залишено $LINES_TO_KEEP рядків."

