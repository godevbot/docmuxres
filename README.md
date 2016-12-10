# tmuxres
docker + tmux + tmux-resurect

Example commands :

# run tmux
docker run -it --name tmux gologic/tmuxres tmux

# run tmux with tmux-resurect files persisted on host current user home folder
docker run -it --name tmux -v ~/.tmux/resurrect:/root/.tmux/resurrect gologic/tmuxres tmux

# You can use Ctrl-p,Ctrl-q to detach from container, reattach with
docker attach tmux

Source and documentation available here :
https://github.com/ddallair/docmuxres
https://github.com/tmux-plugins/tmux-resurrect
https://tmux.github.io/
