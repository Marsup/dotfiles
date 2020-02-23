function nup
	if test -f yarn.lock
		yarn upgrade-interactive $argv;
	else
		npx npmc pick-updates $argv;
	end
end
