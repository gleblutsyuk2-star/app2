# Используем официальный образ n8n
FROM n8nio/n8n:1.40.1

# Устанавливаем переменные окружения
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=your_strong_password_123
ENV N8N_PORT=$PORT
ENV N8N_PROTOCOL=https
ENV WEBHOOK_URL=https://your-app-name.onrender.com

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
