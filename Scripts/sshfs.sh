#!/bin/sh

export USER_AT_HOST=asahsieh@asa-mba-ubuntu-x86-64
# Make the directory where the remote filesystem will be mounted
mkdir -p "$HOME/sshfs/$USER_AT_HOST"
# Mount the remote filesystem
#sshfs "$USER_AT_HOST:" "$HOME/sshfs/$USER_AT_HOST" -ovolname="$USER_AT_HOST" -p 22  \
#    -o workaround=nonodelaysrv -o transform_symlinks -o idmap=user  -C
sshfs "$USER_AT_HOST:" "$HOME/sshfs/$USER_AT_HOST" -ovolname="$USER_AT_HOST" -p 22  \
    -o transform_symlinks -o idmap=user  -C
