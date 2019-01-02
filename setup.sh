echo "Installation de Docker"
curl -sSL https://get.docker.com | sh
usermod pi -aG docker

echo "Changement du mot de passe de pi"
sudo passwd pi

echo "Creation du cluster"
docker swarm init
docker swarm join --token SWMTKN-1-496mv9itb7584pzcddzj4zvzzfltgud8k75rvujopw15n3ehzu-af445b08359golnzhncbdj9o3 192.168.0.79:2377

echo "Installation d'OpenFAAS"
git clone https://github.com/alexellis/faas/
cd faas
./deploy_stack.armhf.sh
