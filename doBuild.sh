#! /bin/bash

function sedi()
{
  if [ -z "$(uname -a | grep -i darwin)" ]; then
    #linux
    sed -i.bak "$1" "$2" "$3"
    #sed -i.bak "s|PROD_IP|$1|g" src/environments/environment.prod.ts
  else
    # macos
    sed -i ".bak" "$1" "$2" "$3"
  fi
}

cp nginx.conf nginx.conf.1
sedi -e "s|LOCAL_IP|$1|g" nginx.conf.1

docker build -t splitman2nginx .
