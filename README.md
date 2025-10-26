# n8n Deployment on Railway

This repository contains the configuration files to deploy n8n on Railway.

## Files:
- `Dockerfile` - Docker configuration for n8n
- `railway.json` - Railway deployment configuration
- `docker-compose.yml` - For local testing

## Deployment:
1. Connect this repository to Railway
2. Set environment variables in Railway dashboard
3. Deploy automatically

## Environment Variables Needed:
- `N8N_BASIC_AUTH_ACTIVE=true`
- `N8N_BASIC_AUTH_USER=admin`
- `N8N_BASIC_AUTH_PASSWORD=your_password`
- `N8N_HOST=0.0.0.0`
- `N8N_PORT=5678`
