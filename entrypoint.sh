#!/bin/sh -l

# pwdlogs=$(pwd)
# lslogs=$(ls -latrh /)

# qcclogs=$(pwd | ls)
# qcclogs=$(./fteqcc64 -srcfile progs.src)
./fteqcc64

# echo "pwdlogs=$pwdlogs" >> $GITHUB_OUTPUT
# echo "lslogs=$lslogs" >> $GITHUB_OUTPUT
# echo "qcclogs=$qcclogs" >> $GITHUB_OUTPUT
