pre-install:
	apt update -y
	apt install p7zip-rar p7zip-full -y
	wget -O jenkins_home.7z "https://www.dropbox.com/s/c9rrbkjs52ahawl/jenkins_home.7z?dl=1"
	7z x jenkins_home.7z "-o/root/jenkins_home"

deploy:
	docker-compose up -d

down:
	docker-compose down

full-remove:
	docker-compose down --rmi all

logs:
	docker-compose logs -f

restart:
	docker-compose restart

build:
	curl -I -X POST http://mcomet:11e5848f0db3acbd275c85b96fef70ea9c@matcha.mcdir.ru:8080/job/Matcha/build -H "Jenkins-Crumb:7f7299f0b1e423152d35056b4642fea0f99efcbfd69d953f613d5d618ad2e8dd"



