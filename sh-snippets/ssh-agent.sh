# Start ssh-agent if it isn't already started.
# Based on: http://rabexc.org/posts/pitfalls-of-ssh-agents

ssh-add -l &>/dev/null
if [ $? -eq 2 ]; then
    [ -r ~/.ssh-agent ] && eval "$(<~/.ssh-agent)" >/dev/null

    ssh-add -l &>/dev/null
    if [ $? -eq 2 ]; then
        (umask 066; ssh-agent > ~/.ssh-agent)
        eval "$(<~/.ssh-agent)"
        ssh-add
    fi
fi
