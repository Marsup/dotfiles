if ssh-add -l 2>&1 | grep -q 'The agent has no identities'
	ssh-add ~/.ssh/id_rsa ~/.ssh/id_github > /dev/null
end
