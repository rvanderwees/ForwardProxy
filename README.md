# ForwardProxy
Simple Apache HTTPD based non-caching Forward proxy - contaqiner on Fedora


### Requirements
This setup is based on running `httpd` in a Container on Fedora
1. Container tools

        $ sudo dnf install podman skopeo
        
1. Optional the Cockpit podman component

        $ sudo dnf install cockpit-podman

1. Allow incoming trafic for port 8080 in the firewall

        $ sudo firewall-cmd --add-port 8080/tcp --permanent
        $ sudo firewall-cmd --reload



### Build container
1. Download sources and create password to protect the proxy

        $ git clone https://github.com/rvanderwees/ForwardProxy
        $ cd ForwardProxy

1. Protect the proxy by creating a htdigest file with username and password
    1. If the [`htdigest`](https://httpd.apache.org/docs/2.4/programs/htdigest.html) utility is installed 

            $ htdigest -c htdigest Proxy <username>
            Adding password for user in realm Proxy.
            New password: 
            Re-type new password: 

    1. Or alternatively, on other systems that do not hat `htdigest`, use the `md5sum` utility

            $ echo <user>:Proxy:$(echo -n <user>:Proxy:<password> | md5sum | cut -f1 -d ' ') > htdigest

1. Build the container

        $ podman build -t httpproxy .


### Run container

    $ podman run -d --rm --name httpproxy -p 8080:8080 localhost/httpproxy


### Test


### Make persistent accross reboots


### Rebuild / update
