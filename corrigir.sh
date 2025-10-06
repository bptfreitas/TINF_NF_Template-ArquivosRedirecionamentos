#!/bin/bash

container='arquivos-redirecionamentos'

if [[ $1 == "" ]]; then 
    tag='dev'
else
    tag="$1"
fi

docker_dir="`which docker`"

if [[ "${docker_dir}" == "" ]]; then
	echo "ERRO: O docker parece nao estar instalado!"
	echo "Se você estiver em um sistema Debian, execute 'sudo apt install docker'"
	exit 1
fi

echo "Building $container:$tag .."

sudo docker rm "$container:$tag"

sudo docker build --force-rm -f .Dockerfile -t ${container}:${tag} . 
	
sudo docker run --stop-timeout 60 ${container}:${tag}
