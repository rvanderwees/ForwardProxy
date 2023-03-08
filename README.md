# ForwardProxy
Simple Apache HTTPD based non-caching Forward proxy - contaqiner on Fedora


### Requirements
This setup is based on running `httpd` in a Container on Fedora
1. Container tools

        $ sudo dnf install podman skopeo
        
1. Optional the Cockpit podman component

        $ sudo dnf install cockpit-podman

1. Allow `httpd` to access the internet

        $ sudo setsebool -P httpd_can_network_connect on



### Build container


### Run container


### Test


### Make persistent accross reboots

