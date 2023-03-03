#!/bin/bash

# 1. Kills all existing tmux sessions.
tmux kill-server

# 2. cd into project folder
cd project-placeholder

# 3. Run for the latests changes
git fetch --all && git reset origin/main

# Activate env & install requirements
source python3-virtualenv/bin/activate && pip3 install -q -r requirements.txt

# Start tmux and activate env and run!
tmux new-session -d -s myportfolio 'source venv/bin/activate && flask run --host=0.0.0.0'