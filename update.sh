GREEN='\033[0;32m'
NC='\033[0m' # No Color
declare WL="git@github.com:BenjaminMedia/brands-whitelabel"


declare -a repos=(
	#"brands-whitelabel"
	"costume"
	"bobedre"
	"boligmagasinet"
	# "illustreret"
	# "historienet"
	# "iform"
	# "scandiliv"
	)

for i in "${repos[@]}"
do
	cd ../GitHub
	git clone git@github.com:BenjaminMedia/${i}.git
	echo "${GREEN}Done cloning ${i}..."
	cd ${i}
	echo "Adding brands-whitelabel as template...${NC}"
	git remote add template ${WL}	
	echo
	echo "${GREEN}Template Added!${NC}"
	echo
	echo "${GREEN}Installing Yarn..⏳${NC}"
	echo
	yarn install
	echo "${GREEN}Installing Yarn complete!${NC}"


done