# docmuxres
docker + tmux + tmux-resurect<br>

Example commands :<br>

run tmux<br>
docker run -it --name tmux gologic/tmuxres tmux<br>

run tmux with tmux-resurect files persisted on host current user home folder<br>
docker run -it --name tmux -v ~/.tmux/resurrect:/root/.tmux/resurrect gologic/tmuxres tmux<br>

You can use Ctrl-p,Ctrl-q to detach from container, reattach with<br>
docker attach tmux<br>

Source and documentation available here :<br>
https://github.com/godevbot/docmuxres<br>
https://github.com/tmux-plugins/tmux-resurrect<br>
https://tmux.github.io/<br>
