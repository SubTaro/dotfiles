#!/bin/bash

# ダウンロードと更新
DOT_DIRECTORY="${HOME}/dotfiles"
REMOTE_URL="git@github.com:SubTaro/dotfiles.git"
DOT_CONFIG_DIRECTORY=".config"

if [ ! -d ${DOT_DIRECTORY} ]; then
	echo "Download dotfiles..."
	mkdir ${DOT_DIRECTORY}

	git clone --recursive "${REMOTE_URL}" "${DOT_DIRECTORY}"

fi
# Deploy (リンクを張るためのscript)
cd ${DOT_DIRECTORY}

for f in .??*
do
	[ "${f}" = ".git" ] && continue
	[ "${f}" = ".gitignore" ] && continue
    ln -snfv ${DOT_DIRECTORY}/${f} ${HOME}/${f}
done
echo $(tput setaf 2)Deploy dotfiles complete!.
cd
