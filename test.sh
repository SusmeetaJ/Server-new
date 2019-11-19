# remove the container if exists or running
if [ $(sudo docker container ls -q -a --filter name=server_c) != '' ]; then
     sudo docker container stop server_c
    sudo docker container rm server_c
fi

# remove the image if exists
if [ $(sudo docker image ls -q --filter reference=server_image) != '' ]; then
    sudo docker image rm server_image
fi

# build the image
sudo docker build -t server_image .

# start the container
sudo docker run -itd -p 4000:4000 --name server_c server_image
