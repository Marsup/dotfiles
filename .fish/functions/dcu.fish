function dcu --wraps 'docker-compose pull && docker-compose up -d --build'
	docker-compose pull && docker-compose up -d --build
end
