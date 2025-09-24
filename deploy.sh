#!/usr/bin/env bash 

env=$1

# Timestamp for logs
timestamp=$(date "+%Y-%m-%d %H:%M:%S")

if [ "$env" = "staging" ]; then
    echo "[$timestamp] Deploying to STAGING servers..."
    echo "[$timestamp] Building Docker image..."
    echo "[$timestamp] Pushing image to staging registry..."
    echo "[$timestamp] Deployment to STAGING complete ✅"

elif [ "$env" = "production" ]; then
    echo "[$timestamp] Deploying to PRODUCTION servers..."
    echo "[$timestamp] Building Docker image..."
    echo "[$timestamp] Pushing image to production registry..."
    echo "[$timestamp] Deployment to PRODUCTION complete 🚀"

else
    echo "Usage: ./deploy.sh [staging|production]"
    exit 1
fi
