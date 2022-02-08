#!/bin/bash


while true; 
do
  clear
  echo "==================================================================== "  $(date) 
  kubectl cluster-info
  echo "------------------------------------------------------ kubectl get node" 
  kubectl get nodes -o wide
  echo "------------------------------------------------------ kubectl get pod"
  kubectl get pod -o wide --show-labels
  echo "------------------------------------------------------ kubectl get rc"
  kubectl get rc 
  #echo "----------------------------------------------------- kubectl get deployment" 
  #kubectl get deployment
  echo "----------------------------------------------------- kubectl get svc" 
  kubectl get svc
  echo "----------------------------------------------------- kubectl get po kube-dns" 
  kubectl get po -n kube-system -l k8s-app=kube-dns
  #echo "----------------------------------------------------- kubectl get namespace" 
  #kubectl get ns

  sleep 10
done
