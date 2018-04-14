# jpartain89.install-monit-binary

| **Travis-CI** |
| -------- |
| [![Build Status](https://travis-ci.org/jpartain89/ansible-role-monit-binaries.svg?branch=master)](https://travis-ci.org/jpartain89/ansible-role-monit-binaries) |

Ansible role to install Monit from their precompiled binaries.

## Role Variables

- `monit_monitrc_file`: This variable is for where you want the system to find your `monitrc` configuration file. Its defaulted to `/etc/monitrc` (I have my personal `monitrc` file at `/etc/monit/monitrc`, so its all in one parent directory)
- `monit_executable`: This is for where you want monit's program file to be installed to. Its default is set to `/usr/local/bin/monit`

## Example Playbook

    - hosts: servers

    roles:
      - jpartain89.install-monit-binary

## License

GPLv3

## Author Information

Justin Partain and JPCDI, github.com/jpartain89
