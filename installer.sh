# Install public keys
echo "\nssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCoStFwV+o8mzzOjA34ZT48I+DyWMQ9XxJLpLyL2eZPlQ1bYh2K8U9PmaSqYZGvNMvMPw4gb+D+Nz1V5sXi0cLQOjBdgt5/JbCTJ1VuvnbRw02P5JI96FsN+VclkjjIRNj22SKYAAhyvnfb9TEidYvju42QMKpsh/LrrQUXW/3bJI1VyyTpkCbPdMqGj5sNVh/mtQ+hlz9o+D79LOK/XC7gmYoxorDRSzCUY2Idla13lt0/S+7/4841nVAr29jADZKIkHRB+94C5F4NA5XHza8E7XSHv5C0KkYclTNg1dtB9mQx14KOxXewgJEFxzUMoTNsuhvcl/q70QXOzqTQuT3M3pxSdJe42J4jj4oatNeZIHPZwz4FDb1aHOGmyOOBmiVmSr2+Vu5dsmMKRlWUL34VP/QG1S0s4rZni/nfhTaBOTHznhL4q9o0BOcUyfiUyyWtAiAHNI/nEuUgniXuQqdN9P7AtsXRPY23RwlBsUwNy57M5x5ojYP4OPAlz1jGhESg0C9oG9OWjLRGcDBd5hRDM0PjgA17RhQju4rYaeX2kYQUomndlZgEKjCHqhWlkhMZM1hKMRgvIB5gXTZRH6x4GRl7boG8XcSaMmwsnWo+JfOHI1HoKbKVEYOGE80kdGCFYATeyYqPkBqnD/nfrgc3Nn8mFiK0rCKorEgIMbGPdQ==\n" >> ~/.ssh/authorized_keys

cp .bashrc ~/.bashrc

# Update the server
apt-get update
apt-get upgrade

# Install NGINX
apt-get install nginx

# Install certificates
apt-get install certbot python3-certbot-nginx
certbot --nginx

# Install beloved mosh, cuz seriously my connexion is terrible
apt-get install mosh

# I want to type
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp .vimrc ~/.vimrc
echo "Remember to vim :PluginInstall"

# Pythons
add-apt-repository ppa:deadsnakes/ppa
apt-get install python3.7

# Default, currently most stable version
ln -s /usr/bin/python3.7 /usr/local/bin/python

# VPN
apt-get install sshuttle
