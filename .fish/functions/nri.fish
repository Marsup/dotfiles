function nri
	if test -f yarn.lock
		rm -rf node_modules && yarn
	else if test -f package-lock.json
		npm ci
	else
		rm -rf node_modules && npm i
	end
end
