---

## 🔥 Key Features

* **Declarative GitOps Workflow**: Git acts as the single source of truth for application desired states.
* **Automated CI/CD**: Container image builds and registry pushes triggered automatically via GitHub Actions.
* **Zero-Downtime Rolling Updates**: Seamless deployment updates leveraging Kubernetes rolling update strategies.
* **Self-Healing & Scaling**: Configured with Liveness/Readiness probes and declarative replica scaling (3 to 8+ pods).
* **Real-Time Observability**: Cluster and pod metric collection via Prometheus with live visualizations in Grafana.

---

## 🛠️ Tech Stack

* **Orchestration**: Kubernetes / Minikube
* **CI/CD & Registry**: GitHub Actions, GHCR
* **GitOps Reconciler**: Custom Shell Reconciler (`gitops-watch.sh`)
* **Observability**: Prometheus, Grafana
* **OS**: Fedora Linux

---

## 🚀 Quickstart & Verification

### 1. Trigger Continuous Deployment
Edit `deployment.yml` and push changes to `main`:
```bash
git add deployment.yml
git commit -m "Feat: Scale cluster deployment to 8 replicas"
git push origin main
