# Используем официальный образ n8n
FROM n8nio/n8n:latest

# Устанавливаем порт (Railway сам его переназначит)
EXPOSE 5678

# Создаем не-root пользователя для безопасности
RUN addgroup --system --gid 1001 n8n && \
    adduser --system --uid 1001 n8n

# Меняем владельца файлов
RUN chown -R n8n:n8n /home/node

# Переключаемся на созданного пользователя
USER n8n

# Запускаем n8n
CMD ["n8n", "start"]
