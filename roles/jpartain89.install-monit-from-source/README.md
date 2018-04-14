# jpartain89.install-monit-from-source

| **Travis-CI** |
| ------------ |
| [![Build Status](https://travis-ci.org/jpartain89/ansible-role-monit-from-source.svg?branch=master)](https://travis-ci.org/jpartain89/ansible-role-monit-from-source) |

Installation of Monit from their [Git Repo](https://bitbucket.org/tildeslash/monit)

## Role Variables

For the `monit_git_repo_dest`, I always put my downloaded git repo's inside of a `~/git` directory in my home folders. This way, everything `git` is grouped together. But, you can change where you want monit's git repo to go.

I'd suggest you keep it somewhere that'll stick, because the role uses whether the git repo has any updates to continue its build process.

```
monit_git_repo_http: https://tildeslash@bitbucket.org/tildeslash/monit.git
monit_git_repo_dest: "/usr/local/lib/monit-git"
monit_configure_options: "--enable-optimized"
monitrc_conf: /etc/monitrc
```

The above `monitrc_conf` is the location you want the `monitrc` configuration file to go and be called to from the autostart scripts.

If running this on a macOS Machine:

```
monit_macos_brew_openssl: "yes"
```

This should stick to `yes` as macOS is veering away from using OpenSSL for their own, weird thing? And other developers... aren't. So monit likes its OpenSSL certs, and this will make it work.

## Example Playbook

    - hosts: servers

      roles:
         - jpartain89.install-monit-from-source

## License

GPLv3

## Author Information

Justin Partain and JPCDI, github.com/jpartain89
