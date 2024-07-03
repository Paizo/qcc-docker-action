# qcc-docker-action

https://github.com/Paizo/qcc-docker-action

Quake Github docker action to build your Quake goodies
includes FTEQCC and ericw-tools:

 - bspinfo
 - bsputil
 - vis
 - qbsp
 - light
 - fteqcc64

## Run locally

**Build**

`docker build --platform linux/amd64 -t paiz0/qcc-docker-action:v1 .`

**Run single command**

`docker run --platform linux/amd64 --rm paiz0/qcc-docker-action:v1 "fteqcc64 --version"`



### Boring stuff

- PATH

Setting the PATH in the Dockerfile never worked, ie `ENV PATH "$PATH:/new/path"` or `RUN echo "export PATH=/new/path:${PATH}" >> /root/.bashrc` that's why it is added in the `entrypoin.sh`

 - fteqcc64

`/qtools/bin # fteqcc64 --version
rosetta error: failed to open elf at /lib64/ld-linux-x86-64.so.2
 Trace/breakpoint trap`

=> fix: install `libc6-compat`

 - qbsp bsputil

`Error loading shared library libstdc++.so.6: No such file or directory (needed by /qtools/bin/qbsp)
Error loading shared library libgcc_s.so.1: No such file or directory (needed by /qtools/bin/qbsp)`

=> fix: install `libstdc++`

 - light

`Error loading shared library libstdc++.so.6: No such file or directory (needed by /qtools/bin/light)
Error loading shared library libgcc_s.so.1: No such file or directory (needed by /qtools/bin/light)
Error loading shared library libstdc++.so.6: No such file or directory (needed by /qtools/bin/libembree.so.2)
Error loading shared library libgcc_s.so.1: No such file or directory (needed by /qtools/bin/libembree.so.2)
Error loading shared library libstdc++.so.6: No such file or directory (needed by /qtools/bin/libtbb.so.2)
Error loading shared library libgcc_s.so.1: No such file or directory (needed by /qtools/bin/libtbb.so.2)
Error loading shared library libgcc_s.so.1: No such file or directory (needed by /qtools/bin/libtbbmalloc.so.2)`

=> fix: install `libstdc++`



# Credits

 - Eric Wasylishen https://ericwa.github.io/ericw-tools/
 - Forethought Entertainment https://www.fteqcc.org/