#!/bin/bash

mkdir -p images
mkdir -p images-mobile

for filename in original-images/*.jpg; do
	convert "$filename" -scale 40% "images/${filename##*/}"
	convert "$filename" -scale 15% "images-mobile/${filename##*/}"
done
