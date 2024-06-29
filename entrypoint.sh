#!/bin/sh -l

qcclogs=$(./fteqcc64 -srcfile progs.src)
echo "qcclogs=$qcclogs" >> $GITHUB_OUTPUT

