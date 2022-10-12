echo -n 'Would you like to configure proxies? (y/n)'
read REPLY

if [[ $REPLY == *"n"* ]]; then
  echo "Proxy not set." 
else;
  echo -n "Enter your proxy IP: " 
  read prox

  sed -i -e "s,TODO,$prox,g" .proxies
  source .proxies
  echo "Network proxy set to: " $prox

  sed -i -e "s,TODO,$prox,g" .docker/config.json

  echo "Docker proxy set to: " $prox

  cp .docker $HOME
fi;