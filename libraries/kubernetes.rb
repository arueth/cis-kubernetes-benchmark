#
# Copyright 2018, ipt switzerland AG.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# author: Cyrill Ruettimann

class Kubernetes < Inspec.resource(1)
  name 'kubernetes'
  desc 'Custom resource which abstracts the various kubernetes runtimes like hyperkube'

  def initialize

  end

  def kubernetes_major_version
    attribute('kubernetes_major_version')
  end

  def kubernetes_version
    "#{attribute('kubernetes_major_version')}.#{attribute('kubernetes_minor_version')}.#{attribute('kubernetes_patch_version')}"
  end

  def apiserver_container
    'ucp-kube-apiserver'
  end

  def controllermanager_container
    'ucp-kube-controller-manager'
  end

  def etcd_container
    'ucp-kv'
  end

  def kubelet_container
    'ucp-kubelet'
  end

  def scheduler_container
    'ucp-kube-scheduler'
  end

end
