#!/bin/bash

# 1. Kills all existing tmux sessions.
tmux kill-server;

# 2. cd into project folder
cd "project-placeholder";

# 3. Run for the latests changes
git fetch --all && git reset  --hard origin/main;

# 4&5. Python VM and new detached Tmux session
tmux new-session -d -s process "cd project-placeholder && source venv/bin/activate && 
pip install -q -r requirements.txt && flask run --host=0.0.0.0";