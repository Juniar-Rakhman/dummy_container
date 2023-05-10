#!/bin/bash

filebrowser --port 9001 &
code-server --port 9002 --auth none . &
gritty --port 9003 &

