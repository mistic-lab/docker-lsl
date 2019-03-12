#docker-lsl
A docker debian image with the LWA software library [(lsl)](https://fornax.phys.unm.edu/lwa/trac/wiki) preinstalled.

##SDF tools
If you want to use the [SDF tools](https://fornax.phys.unm.edu/lwa/trac/wiki/SessionGUI). You should first download them on the _host_ machine, then mount the downloaded directory as a volume on the docker image ([lslDockerCmd.sh](./lslDockerCmd.sh) mounts the current working directory).

### Prerequisites
To use the GUI tools you need to setup X-forwarding. On macOS, install XQuartz, in its settings go to security and 'Allow connections from network clients'.
- In terminal run `$ xhost + $IP` where $IP is your IP address.
- Change [lslGUIDockerCmd.sh](./lslGUIDockerCmd.sh) so that $IP is again, your IP address.
- Run with the GUI shell file.