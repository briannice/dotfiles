#!/bin/bash

for file in "$HOME"/.local/bin/*
do
    chmod u+x "$file"
done