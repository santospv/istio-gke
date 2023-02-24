#!/bin/bash
kubectl apply -f https://raw.githubusercontent.com/istio/istio/release-1.17/samples/addons/prometheus.yaml
curl -L https://istio.io/downloadIstio | ISTIO_VERSION=1.17.1 TARGET_ARCH=x86_64 sh -

cd istio-1.17.1

export PATH="$PATH:/home/santospv/Repos/istio-gke/istio-1.17.1/bin"

istioctl install --set profile=demo -y

kubectl label namespace php istio-injection=enabled
