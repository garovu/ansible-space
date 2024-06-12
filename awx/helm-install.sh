#!/bin/bash

# Add the AWX Operator Helm repository
helm repo add awx-operator https://ansible.github.io/awx-operator/

# Update the Helm repositories
helm repo update

# Search for the AWX Operator Helm chart in the repository
helm search repo awx-operator

# Install the AWX Operator Helm chart with the specified namespace and release name
helm install -n awx --create-namespace my-awx-operator awx-operator/awx-operator
