#!/bin/bash

# ダウンロードと更新
set DOT_DIRECTORY "{HOME}/dotfiles"
set REMOTE_URL "git@github.com:SubTaro/dotfiles.git"
set DOT_CONFIG_DIRECTORY ".config"

if [ ! -d {DOT_DIRECTORY} ];
	echo "Download dotfiles..."
	mkdir {DOT_DIRECTORY}

	git clone --recursive "{REMOTE_URL}" "{DOT_DIRECTORY}"

end
# Deploy (リンクを張るためのscript)
cd {DOT_DIRECTORY}

for f in .??*
	[ "{f}" = ".git" ] and continue
	[ "{f}" = ".gitignore" ] and continue
    ln -snfv {DOT_DIRECTORY}/{f} {HOME}/{f}
end
echo (tput setaf 2)Deploy dotfiles complete!.
cd
