#!/bin/bash

# Install (or update) rebiber
if [ ! -d "rebiber" ] ; then
    git clone "https://github.com/yuchenlin/rebiber.git"
fi
cd rebiber/
git fetch
git pull
pip install -e .
cd ../

# Install (or update) arxiv-latex-cleaner
pip install arxiv-latex-cleaner --upgrade

# Install (or update) ACL pubcheck
if [ ! -d "aclpubcheck" ] ; then
    git clone "https://github.com/acl-org/aclpubcheck.git"
fi
cd aclpubcheck/
git fetch
git pull
pip install -e .
cd ../