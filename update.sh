GREEN='\033[0;32m'
NC='\033[0m' # No Color

COS='costume'
BIL='bilmagasinet'
BOL='boligmagasinet'
ILL='illustreret'
HIS='historienet'
IFORM='iform'
SCL='scandiliv'


cd C:/Users/malthe/Documents/GitHub
git clone git@github.com:BenjaminMedia/costume.git $COS
echo -e "${GREEN}Done Cloning $COS$" 
echo
echo -e "${GREEN}Adding WL template..."
sleep 1s
cd $COS 
git remote add template git@github.com:BenjaminMedia/brands-whitelabel.git
echo -e "${GREEN}Installing yarn...${NC}"
yarn install
sleep 1s
echo -e "${GREEN}Done with $COS"

