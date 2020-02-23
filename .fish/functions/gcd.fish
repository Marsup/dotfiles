function gcd
	g clone $argv[1] && cd (basename $argv[1] .git)
end
