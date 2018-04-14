Install NGINX
=========

| **Travis-CI** |
| ---- |
| [![Build Status](https://travis-ci.org/jpartain89/ansible-role-install-nginx.svg?branch=master)](https://travis-ci.org/jpartain89/ansible-role-install-nginx) |

Installs NGINX from Source.

Role Variables
--------------

The variable ``nginx_version`` is for JUST the NGINX Version Number, ex:

``nginx_version: 1.13.9``

This will be added into the URL for downloading the source code, as well as the shell script that loops in all of the ``configure`` lines, as well as ``make`` and ``checkinstall``.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: jpartain89.install-nginx, nginx_version: 1.13.9 }

License
-------

BSD

Author Information
------------------

An optional section for the role authors to include contact information, or a website (HTML is not allowed).
