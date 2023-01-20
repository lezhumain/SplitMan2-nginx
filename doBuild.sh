#! /bin/bash

if [ -z "${CERT_PATH}" ]; then
  echo "Need to export CERT_PATH"
  exit 1
fi

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

cp "${CERT_PATH}.crt" ./nginx.crt
cp "${CERT_PATH}.key" ./nginx.key

echo "test"

docker build -t splitman2nginx .
RES="$?"

rm ./nginx.crt
rm ./nginx.key

exit "$RES"
