### Recon 
 1. **Finding Subdomain** (Brute Force, Passive, Permutation)
 - T: `Subfinder, Amass, Assetfinder,crt.sh, Puredns, ffuf, gotator`,`oneforall`,`frogy`, `sudomy`, `chaos` also google dorking

 2. Purber subdomain list theke alive and unique subdomain gulo ber korte hobe
 - T: `Httpx`, `httprobe` and unique subdomain ber korar jonno `sort` & `uniq` Tool use kora hoy
 
 3. Protita alive subdomain er screen short ber kora
 - T: `Aquatone`, `Eyewitness`

 4. Alive subdomain gulor url crwal korte hobe passively and actively
 - T: `Waymore`, `Gau`, `Waybackurls`, `Gauplus` and `katana`, `hackcrawler`, and many more for active crwal

 5. url list gulo theke somvabbo xss,idor,sqli,lfi,ssrf etc. vulnerable endpoint ber korte hobe
 - T: `Gf` `Gf Pattern` 
 
 6. Vibinno `Google dorking` or `Github Dorking` kore sensitive information pawa jay kina check korte hobe 
 - N: Google Hacking Database, + perticular keyword niye dork list search korle onk list pawa jabe (exmple: sqli google dork list)

 7. **Finding more sensitive information our target**
  - S: 1. `Shodan` (`shodanx`) (to map and gather information about internet-connected devices and systems.)
       2. `Censys` (Finding attack surface)
       3. `app.netlas.io` ( Finding attack surface)
       4. `fullhunt`  (Finding attack surface)
       5.  `grep.app`
       6. `SecurityTrails` 
       7. `zoomeye, binaryedge, fofa`

 8. **Finding dns information and whois record and network information and many more**
 - T : `dig` , `nslookup`, `whois`, `bgp.he.net`, `viewdns.info` `icanlookup` `robtex` `sitereport.netcraft.com` `dnsx` and many more
 
 9. **Finding web technologies and security headers**
 - T: `wapplayzer`, `builtwith`, `netcraft`, `https://securityheaders.com/` and many more

 10. **Javascript File enumaretion**
 - N : javascript file er moddhe onek somoyei onk sensitive information pawa jay vibinno api key leak hoy othoba default credentials leak hoy + aro onek sensitive information leak hoy, echarao ekta architecture bozha jay website er and many more brother. so thats why js file khub e important for me
 - T : For finding js files: `getjs`, `subjs`, `Cariddi`, `katana` `linkfinder` and many more
 
 11. **Port scanning**
  - N : Port scanning amar kache khub e important ekta subject for web pentesting or bug hunting. eta korar uddessho hocche amar target hosts a ki ki service running ase shegulo identify kora and most importantly version ber kora service gulor. because amra normally kintu just ekti host er 80,443 port a running thaka website ei testing kori but amader uchit host a thaka baki aro ki ki service gulo running ase shegulo check kora and sekhane kono vulnerable running ase kina ta check kora and thakle shetake exploit kora. (let say dhoren apni jei domain er upor test kortesen shetar kono ekta subdomain a apni check kore dekhlem je `ssh/ftp` service running ase so first of all check korte hobe je shei `ssh/ftp` service gulo running ase shegulo ki vulnerable version use kortese kina jodi kore tahole shetar exploit ber kore exploit korte paren ar tacharao apni caile cracking o korte paren ssh service jodi open thake apni simple brute-force koren chances aase crack howar and luckily jodi crack hoye jay taholeo kintu brother apni boro ekta bug kintu peye gesen because apni right now target host er system a dhuke gesen *_*)

    1. jodi kokhono ekti subdomain er list ke eksathe scan kora dorkar pore tokhon `Naabu` Tool use kora hoy and ekhan theke jegulote dekhi extra port open royeche shegulo pore nmap er maddhome further scaning kori 
    2. target jodi single domain hoye thake tahole she khetre nmap er maddhomei vibinno vabe scan kora hoye thake and
    3. kokhono jodi passivly port scan kora dorkar hoye thake shekhetre `smap` use kora hoye thake
 - T : `naabu`, `nmap`, `masscan` `angryscanner` `smap` and many more

 12. `Content discovery` muloto bolte gele directory brute-forcing kora ba fuzzing kora, mainly hocche kono subdomain or root domain er sensitive endpoint ber korar jonno fuzz kora hoye thake  othoba kokhono emon hoy je ekta endpoint peyechi ba shoza vashay ekta directory path peyechi but ami jani na ei directory te ki ki file ase ba ei directoryr undrer eo aro kono directory ase kina eta ber korar jonnow fuzzing/directory brute-forcing kora hoye thake.
 - T : `ffuf`, `dirsearch`, `dirb`, `dirbuster`, `gobuster` etc.
 
 13. **Finding Parameter**  
 - N : parameter hocche ekti vulnerable function. injection releted vulnerability gulo beshirvag khetre ei parameter ei pawa jay so shekhetre parameter finding kora joruri obossho 4&5 step gulo complete korle apni target website releted onek parameter peye jaben passively but tarporeo actively jate parameter find koren shetar jonnoi ei point ta
 - T : `paramspider` , `arjun`, `ffuf` and many more
