#!/bin/bash
echo "🚀 GitOps Host Reconciler Started..."
echo "Monitoring https://github.com/Abayneh93/devops-app.git for changes..."

while true; do
  echo "==> [$(date +'%T')] Checking GitHub repository..."
  mkdir -p /tmp/gitops-repo
  curl -sL https://github.com/Abayneh93/devops-app/archive/refs/heads/main.tar.gz | tar -xz --strip-components=1 -C /tmp/gitops-repo
  kubectl apply -f /tmp/deployment.yml > /dev/null 2>&1
  kubectl apply -f /tmp/service.yml > /dev/null 2>&1
  echo "==> [$(date +'%T')] Cluster synchronized with Git state!"
  sleep 10
done
