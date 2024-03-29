# =================================================================
# Copyright 2017 IBM Corporation
#
# Licensed under the Apache License, Version 2.0 (the "License");
#	you may not use this file except in compliance with the License.
#	You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
#	WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# =================================================================

# This is a terraform generated template generated from apache_http_v24_standalone_basic

##############################################################
# Keys - CAMC (public/private) & optional User Key (public)
##############################################################
variable "user_public_ssh_key" {
  type        = "string"
  description = "User defined public SSH key used to connect to the virtual machine. The format must be in openSSH."
  default     = "None"
}

variable "ibm_stack_id" {
  description = "A unique stack id."
}

variable "ibm_pm_public_ssh_key" {
  description = "Public CAMC SSH key value which is used to connect to a guest, used on Openstack only."
}

variable "ibm_pm_private_ssh_key" {
  description = "Private CAMC SSH key (base64 encoded) used to connect to the virtual guest."
}

variable "allow_unverified_ssl" {
  description = "Communication with vsphere server with self signed certificate"
  default     = "true"
}

##############################################################
# Define the Openstack
##############################################################
provider "openstack" {
  insecure = true
  version  = "~> 0.3"
}

provider "camc" {
  version = "~> 0.2"
}

##############################################################
# Define pattern variables
##############################################################
##### unique stack name #####
variable "ibm_stack_name" {
  description = "A unique stack name."
}

##############################################################
# Openstack for provider
##############################################################
variable "openstack_image_id" {
  description = "The ID of the image to be used for deploy operations."
}

variable "openstack_flavor_id" {
  description = "The ID of the flavor to be used for deploy operations."
}	

variable "openstack_network_name" {
  description = "The name of the network to be used for deploy operations."
}

variable "image_id_username" {
  description = "The username to SSH into image ID"
}

variable "image_id_password" {
  description = "The password of the username to SSH into image ID"
}

variable "number_of_instances" {}

##### Environment variables #####
#Variable : ibm_pm_access_token
variable "ibm_pm_access_token" {
  type        = "string"
  description = "IBM Pattern Manager Access Token"
}

#Variable : ibm_pm_service
variable "ibm_pm_service" {
  type        = "string"
  description = "IBM Pattern Manager Service"
}

#Variable : ibm_sw_repo
variable "ibm_sw_repo" {
  type        = "string"
  description = "IBM Software Repo Root (https://<hostname>:<port>)"
}

#Variable : ibm_sw_repo_password
variable "ibm_sw_repo_password" {
  type        = "string"
  description = "IBM Software Repo Password"
}

#Variable : ibm_sw_repo_user
variable "ibm_sw_repo_user" {
  type        = "string"
  description = "IBM Software Repo Username"
  default     = "repouser"
}

##### HTTPNode01 variables #####
#Variable : HTTPNode01-image
variable "HTTPNode01-image" {
  type        = "string"
  description = "Operating system image id / template that should be used when creating the virtual image"
}

#Variable : HTTPNode01-name
variable "HTTPNode01-name" {
  type        = "string"
  description = "Short hostname of virtual machine"
}

#Variable : HTTPNode01-os_admin_user
variable "HTTPNode01-os_admin_user" {
  type        = "string"
  description = "Name of the admin user account in the virtual machine that will be accessed via SSH"
}

#Variable : HTTPNode01_httpd_data_dir_mode
variable "HTTPNode01_httpd_data_dir_mode" {
  type        = "string"
  description = "OS Permisssions of data folders"
  default     = "0755"
}

#Variable : HTTPNode01_httpd_document_root
variable "HTTPNode01_httpd_document_root" {
  type        = "string"
  description = "File System Location of the Document Root"
  default     = "/var/www/html5"
}

#Variable : HTTPNode01_httpd_listen
variable "HTTPNode01_httpd_listen" {
  type        = "string"
  description = "Listening port to be configured in HTTP server"
  default     = "8080"
}

#Variable : HTTPNode01_httpd_log_dir
variable "HTTPNode01_httpd_log_dir" {
  type        = "string"
  description = "Directory where HTTP Server logs will be sent"
  default     = "/var/log/httpd"
}

#Variable : HTTPNode01_httpd_log_level
variable "HTTPNode01_httpd_log_level" {
  type        = "string"
  description = "Log levels of the http process"
  default     = "info"
}

#Variable : HTTPNode01_httpd_os_users_web_content_owner_gid
variable "HTTPNode01_httpd_os_users_web_content_owner_gid" {
  type        = "string"
  description = "Group ID of web content owner to be configured in HTTP server"
  default     = "webmaster"
}

#Variable : HTTPNode01_httpd_os_users_web_content_owner_home
variable "HTTPNode01_httpd_os_users_web_content_owner_home" {
  type        = "string"
  description = "Home directory of web content owner to be configured in HTTP server"
  default     = "/home/webmaster"
}

#Variable : HTTPNode01_httpd_os_users_web_content_owner_ldap_user
variable "HTTPNode01_httpd_os_users_web_content_owner_ldap_user" {
  type        = "string"
  description = "Use LDAP to authenticate Web Content Owner account on Linux HTTP server as well as web site logins"
  default     = "false"
}

#Variable : HTTPNode01_httpd_os_users_web_content_owner_name
variable "HTTPNode01_httpd_os_users_web_content_owner_name" {
  type        = "string"
  description = "User ID of web content owner to be configured in HTTP server"
  default     = "webmaster"
}

#Variable : HTTPNode01_httpd_os_users_web_content_owner_shell
variable "HTTPNode01_httpd_os_users_web_content_owner_shell" {
  type        = "string"
  description = "Default shell configured on Linux server"
  default     = "/bin/bash"
}

#Variable : HTTPNode01_httpd_php_mod_enabled
variable "HTTPNode01_httpd_php_mod_enabled" {
  type        = "string"
  description = "Enable PHP in Apache on Linux by Loading the Module"
  default     = "true"
}

#Variable : HTTPNode01_httpd_server_admin
variable "HTTPNode01_httpd_server_admin" {
  type        = "string"
  description = "Email Address of the Webmaster"
  default     = "webmaster@orpheus.ibm.com"
}

#Variable : HTTPNode01_httpd_server_name
variable "HTTPNode01_httpd_server_name" {
  type        = "string"
  description = "The Name of the HTTP Server, normally the FQDN of server."
  default     = "orpheus.ibm.com"
}

#Variable : HTTPNode01_httpd_version
variable "HTTPNode01_httpd_version" {
  type        = "string"
  description = "Version of HTTP Server to be installed."
  default     = "2.4"
}

#Variable : HTTPNode01_httpd_vhosts_enabled
variable "HTTPNode01_httpd_vhosts_enabled" {
  type        = "string"
  description = "Allow to configure virtual hosts to run multiple websites on the same HTTP server"
  default     = "false"
}

##### virtualmachine variables #####

#########################################################
##### Resource : HTTPNode01
#########################################################

variable "HTTPNode01-os_password" {
  type        = "string"
  description = "Operating System Password for the Operating System User to access virtual machine"
}

variable "HTTPNode01_domain" {
  description = "Domain Name of virtual machine"
}

variable "HTTPNode01_number_of_vcpu" {
  description = "Number of virtual CPU for the virtual machine, which is required to be a positive Integer"
  default     = "2"
}

variable "HTTPNode01_memory" {
  description = "Memory assigned to the virtual machine in megabytes. This value is required to be an increment of 1024"
  default     = "2048"
}

variable "HTTPNode01_dns_suffixes" {
  type        = "list"
  description = "Name resolution suffixes for the virtual network adapter"
}

variable "HTTPNode01_dns_servers" {
  type        = "list"
  description = "DNS servers for the virtual network adapter"
}

variable "HTTPNode01_network_interface_label" {
  description = "vSphere port group or network label for virtual machine's vNIC"
}

variable "HTTPNode01_ipv4_gateway" {
  description = "IPv4 gateway for vNIC configuration"
}

variable "HTTPNode01_ipv4_address" {
  description = "IPv4 address for vNIC configuration"
}

variable "HTTPNode01_ipv4_prefix_length" {
  description = "IPv4 prefix length for vNIC configuration. The value must be a number between 8 and 32"
}

variable "HTTPNode01_adapter_type" {
  description = "Network adapter type for vNIC Configuration"
  default     = "vmxnet3"
}

variable "HTTPNode01_root_disk_datastore" {
  description = "Data store or storage cluster name for target virtual machine's disks"
}

variable "HTTPNode01_root_disk_keep_on_remove" {
  type        = "string"
  description = "Delete template disk volume when the virtual machine is deleted"
  default     = "false"
}

variable "HTTPNode01_root_disk_size" {
  description = "Size of template disk volume. Should be equal to template's disk size"
  default     = "25"
}

module "provision_proxy" {
  source 						= "git::https://github.com/IBM-CAMHub-Open/terraform-modules.git?ref=1.0//vmware/proxy"
  ip                  = "${var.HTTPNode01_ipv4_address}"
  id									= "${openstack_compute_instance_v2.single-vm.id}"
  ssh_user            = "${var.HTTPNode01-os_admin_user}"
  ssh_password        = "${var.HTTPNode01-os_password}"
  http_proxy_host     = "${var.http_proxy_host}"
  http_proxy_user     = "${var.http_proxy_user}"
  http_proxy_password = "${var.http_proxy_password}"
  http_proxy_port     = "${var.http_proxy_port}"
  enable							= "${ length(var.http_proxy_host) > 0 ? "true" : "false"}"
}

# Openstack vm
resource "openstack_compute_instance_v2" "single-vm" {
  count     = "${var.number_of_instances}"
  name      = "openstackmv01"
  image_id  = "${var.openstack_image_id}"
  flavor_id = "${var.openstack_flavor_id}"
  key_pair = "key1"

  network {
    name = "${var.openstack_network_name}"
  }

resource "openstack_networking_floatingip_v2" "myip" {
  pool = "public"
}


  # Specify the connection
  connection {
    type     = "ssh"
    user     = "${var.HTTPNode01-os_admin_user}"
    password = "${var.HTTPNode01-os_password}"
    bastion_host        = "${var.bastion_host}"
    bastion_user        = "${var.bastion_user}"
    bastion_private_key = "${ length(var.bastion_private_key) > 0 ? base64decode(var.bastion_private_key) : var.bastion_private_key}"
    bastion_port        = "${var.bastion_port}"
    bastion_host_key    = "${var.bastion_host_key}"
    bastion_password    = "${var.bastion_password}"    
  }

  provisioner "file" {
    destination = "HTTPNode01_add_ssh_key.sh"

    content = <<EOF
# =================================================================
# Copyright 2017 IBM Corporation
#
# Licensed under the Apache License, Version 2.0 (the "License");
#	you may not use this file except in compliance with the License.
#	You may obtain a copy of the License at
#
#	  http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
#	WITHOUT
# WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# =================================================================
#!/bin/bash
if (( $# != 3 )); then
echo "usage: arg 1 is user, arg 2 is public key, arg3 is CAMC Public Key"
exit -1
fi
userid="$1"
ssh_key="$2"
camc_ssh_key="$3"
user_home=$(eval echo "~$userid")
user_auth_key_file=$user_home/.ssh/authorized_keys
echo "$user_auth_key_file"
if ! [ -f $user_auth_key_file ]; then
echo "$user_auth_key_file does not exist on this system, creating."
mkdir $user_home/.ssh
chmod 700 $user_home/.ssh
touch $user_home/.ssh/authorized_keys
chmod 600 $user_home/.ssh/authorized_keys
else
echo "user_home : $user_home"
fi
if [[ $ssh_key = 'None' ]]; then
echo "skipping user key add, 'None' specified"
else
echo "$user_auth_key_file"
echo "$ssh_key" >> "$user_auth_key_file"
if [ $? -ne 0 ]; then
echo "failed to add to $user_auth_key_file"
exit -1
else
echo "updated $user_auth_key_file"
fi
fi
echo "$camc_ssh_key" >> "$user_auth_key_file"
if [ $? -ne 0 ]; then
echo "failed to add to $user_auth_key_file"
exit -1
else
echo "updated $user_auth_key_file"
fi
EOF
  }

 
  # Execute the script remotely
  provisioner "remote-exec" {
    inline = [
      "bash -c 'chmod +x HTTPNode01_add_ssh_key.sh'",
      "bash -c './HTTPNode01_add_ssh_key.sh  \"${var.HTTPNode01-os_admin_user}\" \"${var.user_public_ssh_key}\" \"${var.ibm_pm_public_ssh_key}\">> HTTPNode01_add_ssh_key.log 2>&1'",
    ]
  }
}

#########################################################
##### Resource : HTTPNode01_chef_bootstrap_comp
#########################################################

resource "camc_bootstrap" "HTTPNode01_chef_bootstrap_comp" {
  depends_on      = ["camc_vaultitem.VaultItem", "openstack_compute_instance_v2.single-vm", "module.provision_proxy"]
  name            = "HTTPNode01_chef_bootstrap_comp"
  camc_endpoint   = "${var.ibm_pm_service}/v1/bootstrap/chef"
  access_token    = "${var.ibm_pm_access_token}"
  skip_ssl_verify = true
  trace           = true

  data = <<EOT
{
  "os_admin_user": "${var.HTTPNode01-os_admin_user}",
  "stack_id": "${var.ibm_stack_id}",
  "environment_name": "_default",
  "host_ip": "${openstack_compute_instance_v2.single-vm.*.network.0.fixed_ip_v4}",
  "node_name": "${var.HTTPNode01-name}",
  "node_attributes": {
    "ibm_internal": {
      "stack_id": "${var.ibm_stack_id}",
      "stack_name": "${var.ibm_stack_name}",
      "vault": {
        "item": "secrets",
        "name": "${var.ibm_stack_id}"
      }
    }
  }
}
EOT
}

#########################################################
##### Resource : HTTPNode01_httpd24-base-install
#########################################################

resource "camc_softwaredeploy" "HTTPNode01_httpd24-base-install" {
  depends_on      = ["camc_bootstrap.HTTPNode01_chef_bootstrap_comp"]
  name            = "HTTPNode01_httpd24-base-install"
  camc_endpoint   = "${var.ibm_pm_service}/v1/software_deployment/chef"
  access_token    = "${var.ibm_pm_access_token}"
  skip_ssl_verify = true
  trace           = true

  data = <<EOT
{
  "os_admin_user": "${var.HTTPNode01-os_admin_user}",
  "stack_id": "${var.ibm_stack_id}",
  "environment_name": "_default",
  "host_ip": "${openstack_compute_instance_v2.single-vm.*.network.0.fixed_ip_v4}",
  "node_name": "${var.HTTPNode01-name}",
  "runlist": "role[httpd24-base-install]",
  "node_attributes": {
    "httpd": {
      "data_dir_mode": "${var.HTTPNode01_httpd_data_dir_mode}",
      "document_root": "${var.HTTPNode01_httpd_document_root}",
      "listen": "${var.HTTPNode01_httpd_listen}",
      "log_dir": "${var.HTTPNode01_httpd_log_dir}",
      "log_level": "${var.HTTPNode01_httpd_log_level}",
      "os_users": {
        "web_content_owner": {
          "gid": "${var.HTTPNode01_httpd_os_users_web_content_owner_gid}",
          "home": "${var.HTTPNode01_httpd_os_users_web_content_owner_home}",
          "ldap_user": "${var.HTTPNode01_httpd_os_users_web_content_owner_ldap_user}",
          "name": "${var.HTTPNode01_httpd_os_users_web_content_owner_name}",
          "shell": "${var.HTTPNode01_httpd_os_users_web_content_owner_shell}"
        }
      },
      "php_mod_enabled": "${var.HTTPNode01_httpd_php_mod_enabled}",
      "server_admin": "${var.HTTPNode01_httpd_server_admin}",
      "server_name": "${var.HTTPNode01_httpd_server_name}",
      "version": "${var.HTTPNode01_httpd_version}",
      "vhosts_enabled": "${var.HTTPNode01_httpd_vhosts_enabled}"
    },
    "ibm": {
      "sw_repo": "${var.ibm_sw_repo}",
      "sw_repo_user": "${var.ibm_sw_repo_user}"
    },
    "ibm_internal": {
      "roles": "[httpd24-base-install]"
    }
  },
  "vault_content": {
    "item": "secrets",
    "values": {
      "ibm": {
        "sw_repo_password": "${var.ibm_sw_repo_password}"
      }
    },
    "vault": "${var.ibm_stack_id}"
  }
}
EOT
}

#########################################################
##### Resource : VaultItem
#########################################################

resource "camc_vaultitem" "VaultItem" {
  camc_endpoint   = "${var.ibm_pm_service}/v1/vault_item/chef"
  access_token    = "${var.ibm_pm_access_token}"
  skip_ssl_verify = true
  trace           = true

  data = <<EOT
{
  "vault_content": {
    "item": "secrets",
    "values": {},
    "vault": "${var.ibm_stack_id}"
  }
}
EOT
}

output "HTTPNode01_ip" {
  value = "VM IP Address : ${openstack_compute_instance_v2.single-vm.*.network.0.fixed_ip_v4}"
}

output "HTTPNode01_name" {
  value = "${var.HTTPNode01-name}"
}

output "HTTPNode01_roles" {
  value = "httpd24-base-install"
}

output "stack_id" {
  value = "${var.ibm_stack_id}"
}
