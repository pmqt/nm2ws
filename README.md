# nm2ws

Convert `NetworkManager` connection files to `wpa_supplicant` network blocks.

This utility imports saved network credentials from `NetworkManager` to 
`wpa_supplicant`. This can be used by those who would like to uninstall 
`NetworkManager` and configure `wpa_supplicant` directly with `wpa_cli`, or to 
copy credentials from a laptop to a raspberry pi.

## Usage

`NetworkManager` stores connection configuration in INI-like files, by default 
in the directory `/etc/NetworkManager/system-connections/`, while 
`wpa_supplicant` stores similar information in network blocks in its 
configuration file, commonly `/etc/wpa_supplicant.conf`.

Assuming these default locations, `NetworkManager` configurations can be 
imported to `wpa_supplicant` with:

`nm2ws /etc/NetworkManager/system-connections/* >> /etc/wpa_supplicant.conf`
