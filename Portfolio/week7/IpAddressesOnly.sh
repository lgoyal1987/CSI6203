#!/bin/bash
#This script displays the ip addresses only from the ipinfo script.
bash ./IpInfo.sh | sed '1d' | sed '2d' | sed '2d' | sed '3d'