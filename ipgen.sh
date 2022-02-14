#!/bin/bash
az network public-ip show -g $(rggroup) -n ubuemail-ip  >> ./ipnumber.txt
echo "welc world"
