#!/bin/bash

domain="google"
route="maps"
echo $(lynx --dump ${domain}.com/${route})
echo 
echo $(lynx --dump $domain.com/$route)