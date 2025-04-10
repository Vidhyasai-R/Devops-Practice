# Selectors

Taint the node

```
kubectl taint nodes ip-192-168-11-203.ec2.internal hardware=gpu:NoSchedule
```

Taint the node

```
kubectl untaint nodes ip-192-168-11-203.ec2.internal hardware=gpu:NoSchedule

label node

```
kubectl label nodes ip-192-168-11-203.ec2.internal hardware=gpu:NoSchedule
```
```
eksctl utils associate-iam-oidc-provider \
    --region us-east-1 \
    --cluster expense \
    --approve
```

```
curl -o iam-policy.json https://raw.githubusercontent.com/kubernetes-sigs/aws-load-balancer-controller/v2.12.0/docs/install/iam_policy.json
```

```
eksctl create iamserviceaccount \
--cluster=expense \
--namespace=kube-system \
--name=aws-load-balancer-controller \
--attach-policy-arn=arn:aws:iam::273354656091:policy/AWSLoadBalancerControllerIAMPolicy \
--override-existing-serviceaccounts \
--region us-east-1 \
--approve
```

```
helm install aws-load-balancer-controller eks/aws-load-balancer-controller -n kube-system --set clusterName=expense --set serviceAccount.create=false --set serviceAccount.name=aws-load-balancer-controller
```