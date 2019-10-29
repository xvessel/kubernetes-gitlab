#!/usr/bin/env bash

kubectl delete -f gitlab-namespace.yaml
kubectl delete -f gitlab-postgresql.yaml
kubectl delete -f gitlab-redis.yaml
kubectl delete -f gitlab.yaml
