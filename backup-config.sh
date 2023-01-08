#!/bin/sh

# -eq = equal
# -ne = not equal
# if [ ! $code_return -eq 0 ]
# -gt = greater than

#var_return=$(echo $?)
cmd=cp									# used cmd
file1=~/.config/i3/config				# i3/config
file2=~/.config/i3/polybar/launch.sh	# launch polybar
file3=~/.bashrc							# .bashrc
file4=~/.aliasbashrc					# .aliasbashrc
file5=~/.zshrc							# .zshrc
file6=~/.aliaszshrc						# .aliaszshrc
file7=~/remap_keys.sh					# rempap_keys.sh

##########################################################################################

function cmd_return() {
	#if [ "echo $?" > 0 ] ; then
	if [ cmd == 1 ] ; then
		echo "#################################################"
		echo "Script aborted !                                #"
		echo "#################################################"
		exit 1
	fi
}

function cpy_files() {

	$cmd $file1 $path/config
	cmd_return
	if [ -f $file2 ] ; then
		$cmd $file2 $path/launch.sh
		cmd_return
	else
		$cmd ~/.config/polybar/launch.sh $path/launch.sh
		cmd_return
	fi
	$cmd $file3 $path/.bashrc
	cmd_return
	$cmd $file4 $path/.aliasbashrc
	cmd_return
	$cmd $file5 $path/.zshrc
	cmd_return
	$cmd $file6 $path/.aliaszshrc
	cmd_return
	$cmd $file7 $path/remap_keys.sh
	cmd_return
}

##########################################################################################

echo "#################################################"
echo "Write the (full) path for your backup :         #"
echo "#################################################"

read path;

cpy_files

echo "#################################################"
echo "End of backup                                   #"
echo "#################################################"
