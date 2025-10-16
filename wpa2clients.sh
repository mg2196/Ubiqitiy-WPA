#!/bin/bash
rm ./clients/all_clients.txt

ansible-playbook -i ./ansible/inventory/technologysolutionsoffice.ini ./ansible/playbooks/check_mfp.yml


python3 filter.py

echo "The following wpa2 devices were found in the environment:"

cat ./clients/wpa2_clients.txt
echo "You will find a txt list in the ./clients folder"




