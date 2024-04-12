# Dockerfile (VSGAN, TensorRT, Vapoursynth + Plugins + av tools)
Fork of vsgan tensorrt (Dockerfile) with some addons (vs plugins, av tools) and slight corrections

## Original repos
- vsgan tensorrt docker https://github.com/styler00dollar/VSGAN-tensorrt-docker (BSD 3-Clause License)
- vapoursynth encoder docker https://git.gammaspectra.live/WeebDataHoarder/encoder (MIT License)
- added vs plugins https://github.com/abcnorio/docker-vapoursynth-encoder (MIT License)

## Build environment:
- Debian bullseye (11.9)
- kernel 5.18.0-0.deb11.4-amd64
- docker 1.5-2

## Build and run
```bash
docker build -t vsgan-tensorrt .
 docker run -it --rm -v /path/on/host:/path/to/mount/on/container vsgan-tensorrt
```

## License:
- mix of BSD-3 and MIT (respective code parts)
- whatever was added in the sense of "newly added" and requires a licence (GPL >=3)
