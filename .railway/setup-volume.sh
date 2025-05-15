#!/usr/bin/env sh
set -eu

alias up="cd .."

setup_folders(){
    cd /data
    echo -e "\nCreating folders if necessary and mounting them.\n"
   	if [ ! -d "/data/storage" ]; then
		mkdir storage
	fi
	if [ ! -d "/data/.cachev" ]; then
        mkdir .cachev
    fi
}

run_app(){
    /gotosocial/gotosocial server start
    echo -e "\nGo To Social Started.\n"
}

setup_folders
run_app
