#!/bin/bash


###################
#
#Author : Ansh
#About : Ansible Basics
#
#Content : for ansible required is PASSWORD LESS AUTHENTICATION 
#	for password less auth - 
#		in one of ubuntu do ssh keygen 
#		copy id_rsa.pub and 
#		in another ubuntu server do ssh keygen and then paste in inside authorized key
#		then in the main ubuntu server do ssh <private-ipaddress of target server>
#
#	secondly you need to create inventory file in which you will add all the target servers ip addresses private one
#         
#         use ansible modules to create and find commands
#
###################


echo "Creating a file  in target server"
ansible -i inventory all -m "shell" -a "touch newFile"
