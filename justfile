ping:
    ansible hosts -m ping -i inventory.ini

run:
    ansible-playbook -i inventory.ini playbook.yaml -v
