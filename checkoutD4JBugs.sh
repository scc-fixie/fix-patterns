#!/bin/bash

export PATH=$(pwd)/D4J/defects4j/framework/bin/:$PATH

dir=D4J/projects/ # Store the buggy projects.

mkdir -p $dir

proj=Chart
echo $projLowerCase
for bug in $(seq 1 26)
do
defects4j checkout -p $proj -v ${bug}b -w ${dir}${projLowerCase}_${bug}_buggy
defects4j checkout -p $proj -v ${bug}f -w ${dir}${projLowerCase}_${bug}_fixed
done

proj=Lang
lang_deprecated=( 2 )
for bug in $(seq 1 65)
do
  for deprecated in "${lang_deprecated[@]}"
  do
    if [ $bug == $deprecated ]
    then
      continue 2
  fi
  done
defects4j checkout -p $proj -v ${bug}b -w ${dir}${proj}_${bug}_buggy
defects4j checkout -p $proj -v ${bug}f -w ${dir}${proj}_${bug}_fixed
done

proj=Math
for bug in $(seq 1 106)
do
defects4j checkout -p $proj -v ${bug}b -w ${dir}${proj}_${bug}_buggy
defects4j checkout -p $proj -v ${bug}f -w ${dir}${proj}_${bug}_fixed
done

proj=Closure
closure_deprecated=( 63 93 )
for bug in $(seq 1 133)
do
  for deprecated in "${closure_deprecated[@]}"
  do
    if [ $bug == $deprecated ]
    then
      continue 2
  fi
  done
defects4j checkout -p $proj -v ${bug}b -w ${dir}${proj}_${bug}_buggy
defects4j checkout -p $proj -v ${bug}f -w ${dir}${proj}_${bug}_fixed
done

proj=Mockito
for bug in $(seq 1 38)
do
defects4j checkout -p $proj -v ${bug}b -w ${dir}${proj}_${bug}_buggy
defects4j checkout -p $proj -v ${bug}f -w ${dir}${proj}_${bug}_fixed
done

proj=Time
time_deprecated=( 21 )
for bug in $(seq 1 27)
do
  for deprecated in "${time_deprecated[@]}"
  do
    if [ $bug == $deprecated ]
    then
      continue 2
  fi
  done
defects4j checkout -p $proj -v ${bug}b -w ${dir}${proj}_${bug}_buggy
defects4j checkout -p $proj -v ${bug}f -w ${dir}${proj}_${bug}_fixed
done

proj=Cli
cli_deprecated=( 6 )
for bug in $(seq 1 39)
do
  for deprecated in "${cli_deprecated[@]}"
  do
    if [ $bug == $deprecated ]
    then
      continue 2
  fi
  done
defects4j checkout -p $proj -v ${bug}b -w ${dir}${proj}_${bug}_buggy
defects4j checkout -p $proj -v ${bug}f -w ${dir}${proj}_${bug}_fixed
done

proj=Codec
for bug in $(seq 1 18)
do
  defects4j checkout -p $proj -v ${bug}b -w ${dir}${proj}_${bug}_buggy
defects4j checkout -p $proj -v ${bug}f -w ${dir}${proj}_${bug}_fixed
done

proj=Collections
for bug in $(seq 25 28)
do
  defects4j checkout -p $proj -v ${bug}b -w ${dir}${proj}_${bug}_buggy
defects4j checkout -p $proj -v ${bug}f -w ${dir}${proj}_${bug}_fixed
done

proj=Compress
for bug in $(seq 1 47)
do
  defects4j checkout -p $proj -v ${bug}b -w ${dir}${proj}_${bug}_buggy
defects4j checkout -p $proj -v ${bug}f -w ${dir}${proj}_${bug}_fixed
done

proj=Csv
for bug in $(seq 1 16)
do
  defects4j checkout -p $proj -v ${bug}b -w ${dir}${proj}_${bug}_buggy
defects4j checkout -p $proj -v ${bug}f -w ${dir}${proj}_${bug}_fixed
done

proj=Gson
for bug in $(seq 1 18)
do
  defects4j checkout -p $proj -v ${bug}b -w ${dir}${proj}_${bug}_buggy
defects4j checkout -p $proj -v ${bug}f -w ${dir}${proj}_${bug}_fixed
done

proj=JacksonCore
for bug in $(seq 1 26)
do
  defects4j checkout -p $proj -v ${bug}b -w ${dir}${proj}_${bug}_buggy
defects4j checkout -p $proj -v ${bug}f -w ${dir}${proj}_${bug}_fixed
done

proj=JacksonDatabind
for bug in $(seq 1 112)
do
  defects4j checkout -p $proj -v ${bug}b -w ${dir}${proj}_${bug}_buggy
defects4j checkout -p $proj -v ${bug}f -w ${dir}${proj}_${bug}_fixed
done

proj=JacksonXml
for bug in $(seq 1 6)
do
  defects4j checkout -p $proj -v ${bug}b -w ${dir}${proj}_${bug}_buggy
defects4j checkout -p $proj -v ${bug}f -w ${dir}${proj}_${bug}_fixed
done

proj=Jsoup
for bug in $(seq 1 93)
do
  defects4j checkout -p $proj -v ${bug}b -w ${dir}${proj}_${bug}_buggy
defects4j checkout -p $proj -v ${bug}f -w ${dir}${proj}_${bug}_fixed
done

proj=JxPath
for bug in $(seq 1 22)
do
  defects4j checkout -p $proj -v ${bug}b -w ${dir}${proj}_${bug}_buggy
defects4j checkout -p $proj -v ${bug}f -w ${dir}${proj}_${bug}_fixed
done
