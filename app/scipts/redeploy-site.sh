#!/bin/bash -x

#1. Kills all existing tmux sessions
tmux kill-server

#2. cd into projet folder
cd ~/project-placeholder

#3. Run for the latests changes
git fetch --all && git reset origin/main

#Activate Python Virtual ENV & Install requirements
source python-virtualenv/bin/activate && pip3 install -q -r requirements.txt

#Start tmux
systemctl daemon-reload
systemctl restart myportfolio
