#!/bin/bash

# Start Minikube with specified CPU and memory resources, and enable the Ingress addon.
minikube start --cpus=4 --memory=6g --addons=ingress