#!/bin/bash -e

# This is to add changed files to git, auto-commit, push it, then remotely
# access my raspberry pi to pull it down and run the updates play.

FIRST_REPO="$HOME/git/ansibleParent/ansible-run-updates"
SECOND_REPO="$HOME/git/ansibleParent/ansible-vars"

for i in "${FIRST_REPO}" "${SECOND_REPO}"; do
    echo "CDing to ${i} Locally"
    cd "${i}" &&
    echo "Pulling Git First Locally"
    git pull || true
    echo "Git Adding Locally"
    git add . || true
    echo "Git Commiting Locally"
    git commit -m "Auto Updates on \"$(date '+%m-%d-%Y %H-%M-%S')\"" || true
    echo "Git Pushing Locally"
    git push
done

ssh rpi35 '
    THIRD_REPO="$HOME/git/ansible-run-updates"
    FOURTH_REPO="$HOME/git/ansibleParent/ansible-vars"

    for i in "${THIRD_REPO}" "${FOURTH_REPO}"; do
        echo "CDing to ${i} remotely"
        cd "${i}" &&
        echo "Pulling Git First remotely"
        git pull || true
        echo "Git Adding remotely"
        git add . || true
        echo "Git Commiting remotely"
        git commit -m "Auto Updates on \"$(date '\+%m-%d-%Y %H-%M-%S'\)\"" || true
        echo "Git Pushing remotely"
        git push
    done

    echo "Running Ansible-Playbook"
    ansible-playbook "$HOME/git/ansible-run-updates/sync_config.yml"
'
