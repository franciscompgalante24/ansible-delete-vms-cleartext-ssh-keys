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
git clone git@code.siemens.com:secure-cloud-ops/code/ansible/linux/delete-cleartext-private-keys.git
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
    - delete-cleartext-private-keys     
```

To execute the playbook run the following command:
```
ansible-playbook -i inventory delete-cleartext-private-keys.yml -b -K
```

## License
Siemens Inner Source License v1.3

## Author Information
- Gonçalo Manuel Batista Torres de Castro (DI IT EH PT 4)
- Francisco Mansilha Pena Galante (DI IT EH PT 4 2)
