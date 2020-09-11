function nup
	if test -f yarn.lock
		yarn upgrade-interactive $argv;
	else
		npm-check -u --skip-unused $argv;
	end
end
