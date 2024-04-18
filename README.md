# delete-cleartext-private-keys

Cleartext SSH private keys pose a serious security risk, as they allow lateral movement within your environment. 
As a security guidance, there should not be any cleartext secrets in your environment. 
All secrets should be properly managed using approved secret management solutions. 
This ansible role approaches this issue by deleting any cleartext SSH private key after a logout. 

## How to Use

To execute this role, make sure that you have your target system running.

### Execute the Ansible Role
At this point, you need to create an inventory file and a YAML playbook to execute the role.

```
cd roles
git clone https://github.com/franciscompgalante24/ansible-delete-vms-cleartext-ssh-keys.git
```

#### Example Inventory
```
linux_host ansible_ssh_host=IP_ADDRESS ansible_user=USER

[linux_servers]
linux_host
```

#### Example Playbook
```
---                                                  
- hosts: all                                         
  become: true                                       
  roles:                                             
    - ansible-delete-vms-cleartext-private-ssh-keys     
```

To execute the playbook run the following command:
```
ansible-playbook -i inventory delete-cleartext-private-keys.yml -b -K
```

## Author Information
- Francisco Mansilha Pena Galante
