

# GNS3 snap [work in progress]

## Notes

- Dont ask setcap question If ubridge is running as service
- Package vpcs
- ubridge as service is not working

**Possible workaround:** Convert gns3server and ubridge to daemon

capabilities are not supported, Wireshark case [1]

[1] https://forum.snapcraft.io/t/wireshark-and-setcap/9629

[2] https://github.com/snapcore/snapcraft/blob/665143c94584260b93e3b4d4f7099c92b05ce22f/snapcraft/internal/lifecycle/_packer.py#L98

~~In-snap aliases are deprecated, these aliases are required~~

~~sudo snap alias gns3.gns3server gns3server~~
~~sudo snap alias gns3.ubridge ubridge~~

~~Alternative solution is to either:~~

~~- snapcraft store aliases (afaik requires approval)~~
~~- Split gns3server and ubridge of the snap (thus having snap name == app/bin name)~~
~~- Inject a gns3-gui config to point to the correct snap binaries names~~
