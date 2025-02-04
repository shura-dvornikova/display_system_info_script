#!/bin/bash

#GRADIENT=(31 33 32 36 34 35 91 93 96) #colors: red, yellow, green, turquoise, blue, violet, pink
BLUE_BOLD='\033[1;46m'
GREEN='\033[0;36m'

NC='\033[0m' #reset color settings

echo -e "${BLUE_BOLD}The operaion system name:${NC} ${GREEN}$(uname)${NC}"
echo -e "${BLUE_BOLD}The kernel version:${NC} ${GREEN}$(uname -r)${NC}"
echo -e "${BLUE_BOLD}Architecture:${NC} ${GREEN}$(uname -m)${NC}"
echo -e "${BLUE_BOLD}Distribute name:${NC} ${GREEN}$(lsb_release -d | cut -f2)${NC}"
echo -e "${BLUE_BOLD}Number of cores:${NC} ${GREEN}$(nproc)${NC}"
echo -e "${BLUE_BOLD}RAM size:${NC} ${GREEN}$(free -h | grep -E "Mem:" | awk '{print "Total:", $2, "Available:", $7}')${NC}"
echo -e "${BLUE_BOLD}Hard disk capacity:${NC} ${GREEN}$(df -h)${NC}"
#$ cat /proc/cpuinfo/ | grep processor wc -l 
#total available
