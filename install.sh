#!/usr/bin/env bash

kubectl apply -f ./gitlab/gitlab-namespace.yaml
kubectl apply -f ./gitlab/gitlab-postgresql.yaml
kubectl apply -f ./gitlab/gitlab-redis.yaml
kubectl apply -f ./gitlab/gitlab.yaml
