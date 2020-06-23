#!/bin/bash
scp -r /root/.gnupg/ root@IP_addres:/root
scp json_to_xml.xml.gpg root@IP_adress:/root
ssh root@IP_aderss gpg --batch --passphrase your_password json_to_xml.xml.gpg
