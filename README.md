

# GNS3 snap [work in progress]

## Notes

In-snap aliases are deprecated, these aliases are required

```
sudo snap alias gns3.gns3server gns3server
sudo snap alias gns3.ubridge ubridge
```

Alternative solution is to either:

- snapcraft store aliases (afaik requires approval)
- Split gns3server and ubridge of the snap (thus having snap name == app/bin name)
- Inject a gns3-gui config to point to the correct snap binaries names
