#!/bin/sh

KEYS="$(gpg --list-secret-keys --keyid-format long | grep '(Github)' -B 2)"
NAME="$(printf "${KEYS}" | sed -En 's/.+\] (.*) \(.+/\1/p')"
MAIL="$(printf "${KEYS}" | sed -En 's/.*<(.*)>.*/\1/p')"
ID="$(printf "${KEYS}" | sed -En 's|.*/([^ ]+) .*|\1|p')"

git config --global user.name "${NAME}"
git config --global user.email "${MAIL}"
git config --global user.signingkey "${ID}"
git config --global commit.gpgSign 'true'
git config --global tag.gpgSign 'true'
git config --global push.gpgSign 'if-asked'
