#!/bin/bash

: ' Tools
python3, python3-pipx, golang, subfinder, assetfinder, findomain, amass, chaos, gf, snap, knockpy, sublist3r, gau, uro, nuclei, nmap, waybackurls,
photon, arjun, dirbuster, dirb, secretfinder, Mantra, katana, paramspider, cewl, anew, ffuf, aws, s3scanner, naabu, httpx, dalfox, oam_subs, jq
puredns, feroxbuster, xnLinkFinder, subzy, socialhunter, hakrawler, asnmap, github-subdomains, subjs, Sudomy, phantomjs, npm, chromium, parallel
' 


#requirement
apt update 
apt upgrade -y
apt remove --purge golang -y
apt install -y python3 python3-pipx golang snap knockpy sublist3r nmap photon arjun dirbuster dirb cewl feroxbuster jq nmap phantomjs npm chromium parallel

mkdir -p ~/websec
mkdir -p ~/websec/tools

#golang tools
go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
go install -v github.com/tomnomnom/assetfinder@latest
go install -v github.com/projectdiscovery/chaos-client/cmd/chaos@latest
go install -v github.com/tomnomnom/waybackurls@latest
go install -v github.com/tomnomnom/gf@latest
go install -v github.com/projectdiscovery/naabu/v2/cmd/naabu@latest
go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest
go install -v github.com/hahwul/dalfox/v2@latest
go install -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest
go install -v github.com/MrEmpy/Mantra@latest
go install -v github.com/projectdiscovery/katana/cmd/katana@latest
go install -v github.com/tomnomnom/anew@latest
go install -v github.com/ffuf/ffuf/v2@latest
go install -v github.com/d3mondev/puredns/v2@latest
go install -v github.com/LukaSikic/subzy@latest
go install -v github.com/utkusen/socialhunter@latest
go install -v github.com/hakluke/hakrawler@latest
go install -v github.com/projectdiscovery/asnmap/cmd/asnmap@latest
go install -v github.com/lc/gau/v2/cmd/gau@latest
go install -v github.com/owasp-amass/amass/v4/...@master
go install -v github.com/gwen001/github-subdomains@latest
go install -v github.com/owasp-amass/oam-tools/cmd/oam_subs@master
go install -v github.com/lc/subjs@latest



#python pipx
pipx install uro


#GF Patterns Setup
git clone https://github.com/1ndianl33t/Gf-Patterns
git clone https://github.com/tomnomnom/Gf
mkdir -p ~/.gf && cd ~/Gf/examples && cp * ~/.gf && cd ~/Gf-Patterns && cp * ~/.gf

#findomain install
curl -LO https://github.com/findomain/findomain/releases/latest/download/findomain-linux.zip
unzip findomain-linux-i386.zip 
chmod +x findomain 
sudo mv findomain /usr/bin/findomain 



git clone https://github.com/m4ll0k/SecretFinder.git ~/websec/tools/secretfinder 
cd ~/websec/tools/secretfinder 
pipx install -r requirements.txt 

git clone https://github.com/xnl-h4ck3r/xnLinkFinder.git ~/websec/tools/xnLinkFinder 
cd ~/websec/tools/xnLinkFinder 
sudo python3 setup.py install 

git clone https://github.com/devanshbatham/paramspider ~/websec/tools/paramspider 
cd paramspider 
pipx install .


git clone --recursive https://github.com/screetsec/Sudomy.git ~/websec/tools/Sudomy
cd ~/websec/tools/Sudomy
pipx install -r requirements.txt