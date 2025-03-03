/*
Copyright 2023 The Kubernetes Authors.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*/

aws_account_id = "468814281478"

eks_cluster_admins = [
  "pprzekwa",
  "xmudrii"
]

eks_cluster_viewers = [
  "pprzekwa",
  "xmudrii"
]

cluster_name               = "prow-build-cluster"
cluster_version            = "1.25"
cluster_autoscaler_version = "v1.25.0"

# Ubuntu EKS optimized AMI: https://cloud-images.ubuntu.com/aws-eks/
node_ami            = "ami-03de35fda144b3672"
node_instance_types = ["r5ad.4xlarge"]
node_volume_size    = 100

node_min_size                   = 20
node_max_size                   = 40
node_desired_size               = 20
node_max_unavailable_percentage = 100 # To ease testing
