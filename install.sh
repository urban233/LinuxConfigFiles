#!/bin/bash

#--------------------------------------------------------------------------#
# This is an install/update script for the config files in this repo.

echo $0
 
full_path=$(realpath $0)
echo $full_path
 
dir_path=$(dirname $full_path)
echo $dir_path
 
rel_dir_path=$(dirname $dir_path )
echo $rel_dir_path

#bash dir
bash_dir="$rel_dir_path/bash"
bash_fedora_dir="$rel_dir_path/bash/fedora"
bash_garuda_dir="$rel_dir_path/bash/garuda"

#fish dir
fish_dir="$rel_dir_path/fish"
fish_fedora_dir="$rel_dir_path/fish/fedora"
fish_garuda_dir="$rel_dir_path/fish/garuda"

#starship dir
starship_dir="$rel_dir_path/starship"
starship_fedora_dir="$rel_dir_path/starship/fedora"
starship_garuda_dir="$rel_dir_path/starship/garuda"

#terminator dir
terminator_dir="$rel_dir_path/terminator"
terminator_fedora_dir="$rel_dir_path/terminator/fedora"
terminator_garuda_dir="$rel_dir_path/terminator/garuda"

echo '
This is a script which installs the config files onto your machine.
'

read -p 'Do you want to install(i) or update(u) the config files?' check

if [ $check == "i" ]
then
  read -p 'Do you want to install the garuda(g) or the fedora(f) version?' check2
  if [ $check2 == "g" ]
  then
	# bash
	rm /home/$USER/.bashrc && rm /home/$USER/.bash_profile
	cp $bash_garuda_dir/.bashrc /home/$USER && cp $bash_garuda_dir/.bash_profile /home/$USER
	# fish 
	rm /home/$USER/.config/fish/config.fish
	cp $fish_garuda_dir/config.fish	/home/$USER/.config/fish/config.fish
	# starship
	cp $starship_garuda_dir/starship.toml /home/$USER/.config
	# terminator
	rm /home/$USER/.config/terminator/config 
	cp $terminator_garuda_dir/config /home/$USER/.config/terminator
	echo 'The script has finished'


  if [ $check2 == "f" ]
  then
   	# bash	
	rm /home/$USER/.bashrc && rm /home/$USER/.bash_profile
	cp $bash_fedora_dir/.bashrc /home/$USER && cp $bash_fedora_dir/.bash_profile /home/$USER
	# fish 
	rm /home/$USER/.config/fish/config.fish
	cp $fish_fedora_dir/config.fish	/home/$USER/.config/fish/config.fish
	# starship
	cp $starship_fedora_dir/starship.toml /home/$USER/.config
	# terminator
	rm /home/$USER/.config/terminator/config 
	cp $terminator_fedora_dir/config /home/$USER/.config/terminator
	echo 'The script has finished'

if [ $check == "u" ]
then
  read -p 'Do you want to install the garuda(g) or the fedora(f) version?' check2
  if [ $check2 == "g" ]
	
	
	echo 'Your config files getting updated, choose from the list below which you want to update:
	1: bash
	2: fish
	3: starship
	4: terminator
	'

	read -p 'Enter the number of the type of config you would like to update: ' updateVar
	if [ $updateVar == 1 ]
	then
	# bash
	rm /home/$USER/.bashrc && rm /home/$USER/.bash_profile
	cp $bash_garuda_dir/.bashrc /home/$USER && cp $bash_garuda_dir/.bash_profile /home/$USER
	echo 'Config file updated'

	if [ $updateVar == 2 ]
	then
	# fish 
	rm /home/$USER/.config/fish/config.fish
	cp $fish_garuda_dir/config.fish	/home/$USER/.config/fish/config.fish
	echo 'Config file updated'


	if [ $updateVar == 3 ]
	then
	# starship
	rm /home/$USER/.config/starship.toml
	cp $starship_garuda_dir/starship.toml /home/$USER/.config
	echo 'Config file updated'

	if [ $updateVar == 4 ]
	then
	# terminator
	rm /home/$USER/.config/terminator/config 
	cp $terminator_garuda_dir/config /home/$USER/.config/terminator
	echo 'Config file updated'


  if [ $check2 == "f" ]
  then
	echo 'Your config files getting updated, choose from the list below which you want to update:
	1: bash
	2: fish
	3: starship
	4: terminator
	'

	read -p 'Enter the number of the type of config you would like to update: ' updateVar
	if [ $updateVar == 1 ]
	then
	# bash
	rm /home/$USER/.bashrc && rm /home/$USER/.bash_profile
	cp $bash_fedora_dir/.bashrc /home/$USER && cp $bash_fedora_dir/.bash_profile /home/$USER
	echo 'Config file updated'

	if [ $updateVar == 2 ]
	then
	# fish 
	rm /home/$USER/.config/fish/config.fish
	cp $fish_fedora_dir/config.fish	/home/$USER/.config/fish/config.fish
	echo 'Config file updated'


	if [ $updateVar == 3 ]
	then
	# starship
	rm /home/$USER/.config/starship.toml
	cp $starship_fedora_dir/starship.toml /home/$USER/.config
	echo 'Config file updated'

	if [ $updateVar == 4 ]
	then
	# terminator
	rm /home/$USER/.config/terminator/config 
	cp $terminator_fedora_dir/config /home/$USER/.config/terminator
	echo 'Config file updated'
