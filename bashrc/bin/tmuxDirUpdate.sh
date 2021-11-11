### This changes the pane on the left to show a current list of items
### in current directory with total directory size and per file/folder
### size listed as well.
ls -a -s -h -w 1 --color=auto $(sh -c 'tmux display-message -p -F "#{pane_current_path}" -t1')  &

### This section if commented out prevents from pane to the right of
### the main IDE window from changing its directory automatically
### if you want to enable it just remove the comments
### same goes if you want to turn off this feaature for pane below

### pane to the right of the main pane
#if [ $(sh -c 'tmux display-message -p -F "#{pane_current_path}" -t2') != $(sh -c 'tmux display-message -p -F "#{pane_current_path}" -t1') ]
#then
    #tmux send-keys -t 2 C-z "cd $(sh -c 'tmux display-message -p -F "#{pane_current_path}" -t1')" Enter
#fi

### pane below the main pane
if [ $(sh -c 'tmux display-message -p -F "#{pane_current_path}" -t3') != $(sh -c 'tmux display-message -p -F "#{pane_current_path}" -t1') ]
then
    tmux send-keys -t 3 C-z "cd $(sh -c 'tmux display-message -p -F "#{pane_current_path}" -t1')" Enter
fi
