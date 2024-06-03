# Ansible Command Line Tools

## Basic Commands

- **Run a playbook**

  ```shell
  ansible-playbook playbook.yml
  ```

- **Run a playbook with a specific inventory file**

  ```shell
  ansible-playbook -i inventory playbook.yml
  ```

- **Limit execution to a specific host or group**

  ```shell
  ansible-playbook playbook.yml --limit host_or_group
  ```

- **Run a playbook with extra variables**

  ```shell
  ansible-playbook playbook.yml --extra-vars "variable1=value1 variable2=value2"
  ```

- **Check mode (dry run)**

  ```shell
  ansible-playbook playbook.yml --check
  ```

- **Run a playbook with verbose output**

  ```shell
  ansible-playbook playbook.yml -v
  ```

  For more verbosity, use `-vv` or `-vvv`.

- **List all hosts in the inventory**

  ```shell
  ansible all --list-hosts -i inventory
  ```

- **Run an ad-hoc command on all hosts in the inventory**

  ```shell
  ansible all -m ping -i inventory
  ```

- **Run an ad-hoc shell command on a specific host**

  ```shell
  ansible host -m shell -a 'uptime' -i inventory
  ```

### Inventory File Examples

- **Simple inventory file**

  ```ini
  [webservers]
  web1.example.com
  web2.example.com

  [dbservers]
  db1.example.com
  db2.example.com
  ```

- **Inventory file with variables**

  ```ini
  [webservers]
  web1.example.com ansible_user=ubuntu ansible_port=22
  web2.example.com ansible_user=ubuntu ansible_port=22

  [dbservers]
  db1.example.com ansible_user=ubuntu ansible_port=22
  db2.example.com ansible_user=ubuntu ansible_port=22
  ```

### Modules Examples

- **Ping module**

  ```shell
  ansible all -m ping
  ```

- **Shell module**

  ```shell
  ansible all -m shell -a 'echo Hello, World!'
  ```

### Advanced Commands

- **Tags to run specific tasks in a playbook**

  ```shell
  ansible-playbook playbook.yml --tags "tag_name"
  ```

- **Skip tags**

  ```shell
  ansible-playbook playbook.yml --skip-tags "tag_name"
  ```

- **Prompt for a password**

  ```shell
  ansible-playbook playbook.yml --ask-become-pass
  ```

- **Specify a private key**

  ```shell
  ansible-playbook playbook.yml --private-key=~/.ssh/private_key.pem
  ```

### Best Practices

- **Use YAML for Playbooks**
- **Group variables in `group_vars/` directory**
- **Host variables in `host_vars/` directory**
- **Keep inventory files organized**
- **Use roles to modularize playbooks**

This cheat sheet covers common commands and practices in Ansible. For more detailed information, you can refer to the official [Ansible documentation](https://docs.ansible.com/ansible/latest/index.html).
