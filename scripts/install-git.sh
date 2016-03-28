#!/usr/bin/env bash

sudo apt-get install -y git-core
ssh-keyscan -H git.example.com >> ~/.ssh/known_hosts
