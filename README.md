# Ubiquity WPA Client Checker


## Usage
- Prestage the ansible inventory file with the ip addresses for access points
- Kick of the wpa2clients.sh
    - Deploy wpa.sh to the tmp dir on the ap
    - Collect devices not using wpa3
    - Run filter.py on all devices
    - Create a file in the clients folder of wpa2 only devices


## Requirements
- Python 3.x
- Bash shell
- Ansible (for automated checks)

