#!/bin/sh

mkdir "$HOME"/.ssh
echo "$SSH_PRIVATE_KEY" | tr -d '\r' > "$HOME"/.ssh/id_rsa
chmod 600 "$HOME"/.ssh/id_rsa

"$@"