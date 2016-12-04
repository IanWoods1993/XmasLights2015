#!/bin/bash
alias volu='sudo amixer set pcm -- $[$amixer get PCM|grep -o [0-9]*%|sed 's/%//'+5]%'
