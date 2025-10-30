# qterminal-mkt

## Overview
This Bash script automates the creation of a structured workspace for ethical hacking projects.  
It generates a main project directory with two subfolders:
- `Evidence` → for storing collected data, logs, and artifacts
- `Utils` → for scripts, tools, and helper binaries

Once the directories are created, the script launches an `qterminal` window with multiple tabs:
- **Main** → the root project directory
- **Evidence** → direct access to the evidence folder
- **Utils** → direct access to the utilities folder

This setup allows you to keep your workflow organized and switch quickly between tasks.

---

## Why not tmux?
Originally, I used a `tmux`-based script to manage my ethical hacking workspaces.  
However, `tmux` made certain tasks more difficult for me, such as:
- Copy/paste operations between panes
- Managing multiple sessions across different projects
- Integrating with my preferred terminal emulator in Kali

Because of these limitations, I created this adaptation of my original `tmux` script.  
It uses `qterminal` tabs instead of `tmux` splits, while keeping the same structured workflow.

---

## Usage
```bash
./mkt.sh <project_name>
```
