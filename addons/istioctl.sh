#!/bin/bash

cd /home/santospv && curl -L https://istio.io/downloadIstio | ISTIO_VERSION=1.17.1 TARGET_ARCH=x86_64 sh -

cd istio-1.17.1

export PATH="$PATH:/home/santospv/istio-1.17.1/bin"

istioctl install --set profile=demo -y

kubectl create ns php

kubectl label namespace php istio-injection=enabled
