#!/bin/bash
__kube_ps1_context()
{
  kube_context=$(/usr/local/bin/kubectl config current-context)

  echo "${kube_context}"
}

__kube_ps1_namespace()
{
  kube_namespace=$(/usr/local/bin/kubectl config get-contexts | grep "^\*" | awk '{print $NF}')

  echo "${kube_namespace}"
}

__kube_ps1_numnodes()
{
  kube_numnodes=$(/usr/local/bin/kubectl get nodes --no-headers | grep -v control-plane | wc -l)

  echo "${kube_numnodes}"
}
