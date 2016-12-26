#!/bin/bash
tail -1 pid_main_script.log | gawk '{print $1}' | xargs kill -9 
