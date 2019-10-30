#!/usr/bin/env bash

kubectl delete -f ./gitlab/gitlab.yaml
kubectl delete -f ./gitlab/gitlab-redis.yaml
kubectl delete -f ./gitlab/gitlab-postgresql.yaml
kubectl delete -f ./gitlab/gitlab-namespace.yaml
