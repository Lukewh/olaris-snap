[![Snap Status](https://build.snapcraft.io/badge/Lukewh/olaris-snap.svg)](https://build.snapcraft.io/user/Lukewh/olaris-snap)

# olaris-snap

The snap configuration for [Olaris server](https://gitlab.com/olaris/olaris-server)

## Build the snap

```bash
./updater.sh && snapcraft --use-lxd
```

## Install the built snap

```sudo snap install olaris_v{VERSION_BUILT}.snap --dangerous```
