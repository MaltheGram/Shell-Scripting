#!/bin/bash

# Author: Malthe Gram
# https://github.com/MaltheGram

GREEN='\033[0;32m'
NC='\033[0m' # No Color
declare WL="git@github.com:BenjaminMedia/brands-whitelabel.git"


# TODO: Check for OS and install node depending on OS

if [[ "$OSTYPE" != *"darwin"* ]]; then
	exit 0

fi

cd /Users/${USER}/Desktop/


# Check if reposDestination is not an empty input
# If it's empty make a GitHub folder on the desktop and work on that

echo "${GREEN}Where do you want to save the repositories?"
echo "Type exit to abort!${NC}"
read reposDestination

# Abort script option!

if [[ "${reposDestination}" = exit ]]; then
	exit 0	
fi

if [[ "${#reposDestination}" -lt 2 ]]; then
	declare reposDestination="GitHub"
	mkdir ${reposDestination}
	cd /Users/${USER}/Desktop/GitHub
	pwd
fi


declare -a repos=(
	"brands-whitelabel"
	"costume"
	"bobedre"
	"boligmagasinet"
	"illustreret"
	"historienet"
	"iform"
	"scandiliv"
	)

# Pull every repo from the array
# Add WL as template
# Install Yarn

for i in "${repos[@]}"; do	pwd
	# Now we're in the first repo
	cd ..
	# Now in the root folder of the repos
	cd ${reposDestination}
	echo ${reposDestination}

		if [[ -d ${i} ]]; then
			echo "${GREEN}${i} exists!${NC}"
			echo "${GREEN}Skipping to next!${NC}"
		else
			git clone git@github.com:BenjaminMedia/${i}.git ${i}
			echo "${GREEN}Done cloning ${i}..."
			cd ${i}
			echo "Adding brands-whitelabel as template...${NC}"
			git remote add template ${WL}	
			echo
			echo "${GREEN}Template Added!${NC}"
			echo
			echo "${GREEN}Installing Yarn..⏳${NC}"
			echo
			#yarn install
			echo "${GREEN}Installing Yarn complete!${NC}"
		fi
done