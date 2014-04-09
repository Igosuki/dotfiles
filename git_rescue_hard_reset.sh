#!/bin/bash
n=0
a=blobfiles.txt
git fsck --cache --no-reflogs --lost-found --unreachable  HEAD > ${a}
for i in `cat ${a} | tr '.' '\n'` ; do
  if [ $((${n} % 3)) -eq 2 ]
  then
    git cat-file blob ${i} > ${i}.txt
  fi
  let n=$n+1
done
