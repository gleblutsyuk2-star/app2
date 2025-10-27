# Используем официальный образ n8n
FROM n8nio/n8n:latest


# Создаем папку для данных
RUN mkdir -p /home/node/.n8n

# Копируем файлы (если нужны)
COPY . .

# Устанавливаем правильные права
RUN chown -R node:node /home/node/.n8n

# Переключаемся на пользователя node
USER node

# Запускаем n8n
CMD ["n8n", "start"]
