#!/usr/bin/env bash

kubectl apply -f gitlab-namespace.yaml
kubectl apply -f gitlab-postgresql.yaml
kubectl apply -f gitlab-redis.yaml
kubectl apply -f gitlab.yaml
