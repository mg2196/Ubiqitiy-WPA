#!/bin/bash
rm ./clients/all_clients.txt
export ANSIBLE_HOST_KEY_CHECKING=False

ansible-playbook -i ./ansible/inventory/tsaoffice.ini ./ansible/playbooks/check_mfp.yml


python3 filter.py

echo "The following wpa2 devices were found in the environment:"

cat ./clients/wpa2_clients.txt
echo "You will find a txt list in the ./clients folder"




