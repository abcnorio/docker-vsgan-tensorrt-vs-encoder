# Dockerfile (VSGAN, TensorRT, Vapoursynth + Plugins + av tools)
Fork of vsgan tensorrt (Dockerfile) with some addons (vs plugins, av tools) and slight corrections

## Original repos
- vsgan tensorrt docker https://github.com/styler00dollar/VSGAN-tensorrt-docker (BSD 3-Clause License)
- vapoursynth encoder docker https://git.gammaspectra.live/WeebDataHoarder/encoder (MIT License)
- added vs plugins https://github.com/abcnorio/docker-vapoursynth-encoder (MIT License)

## What is?
Please read the original documentation on the pages cited above. Important is the page about VSGAN, TensorRT, vapoursynth and its handling. The other repo is about a vapoursynth environment along with av tools, and the last one just adds some more vapousynth plugins, esp. important for deinterlacing, etc.

## Build environment:
- Debian bullseye (11.9)
- kernel 5.18.0-0.deb11.4-amd64
- docker 1.5-2

## Build and run
```bash
docker build -t vsgan-tensorrt .
docker run -it --rm -v /path/on/host:/path/to/mount/on/container vsgan-tensorrt
```

## TODO list
- add the encoders/ tools/ vs plugins from the additional-encoder file
- add vs-edit (https://bitbucket.org/mystery_keeper/vapoursynth-editor), a IDE for vapoursynth scripts, requires qt5, so build it along with mkvtoolnix env (qt5 static), see also thread on doom9 (https://forum.doom9.org/showthread.php?t=170965)
- add VSMPEG (https://github.com/PantherNuru/VSMPEG.git)
- add DGMPGDec (https://www.rationalqm.us/dgmpgdec/dgmpgdec.html) along with wine, the best (fast, accurate) mpeg1/2 decoder and frameserver, see also DGIndex (https://github.com/rlaphoenix/DGIndex.git)
- extensive testing

## License:
- mix of BSD-3 and MIT (see respective code parts)
- whatever was added in the sense of "newly added" and requires a licence (GPL >=3)
- see also all the licenses of the various tools and plugins that are downloaded, built, and used