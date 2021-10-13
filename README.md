# Server Side Template Injection(SSTI) - XSS Finder
This tool will grap all target subdomains from shodan that are using AsgularJS Technology and in output it will provide us with XSS payload related to AngularJS version of that subdomain.

## Prerequisites

```
1. npm i -g wappalyzer
2. pip install -U setuptools
3. easy_install shodan
4. easy_install -U shodan
5. shodan init YOUR_API_KEY
```

```
git clone https://github.com/darklotuskdb/ssti-xss-finder.git && cd ssti-xss-finder && chmod +x *.sh
```

## Usage
Linux

```
./SSTI-XSS-Finder.sh <Shodan-Dork>  like  org:target | hostname:target.com | net:127.0.0.1
```

## Screenshot
![sstixss](https://user-images.githubusercontent.com/29382875/105679509-92b12680-5f14-11eb-9eab-441dc2c8d16d.png)

## Reference
* https://github.com/swisskyrepo/PayloadsAllTheThings/blob/master/XSS%20Injection/XSS%20in%20Angular.md

## Donation
[BuyMeACoffee](https://www.buymeacoffee.com/darklotus) If you like my work

## About Me

* **DarkLotus** - *Cyber Security Researcher* - [DarkLotusKDB](https://darklotuskdb.github.io/KDBhati/)

### Social Media Handles
* [Twitter](https://twitter.com/darklotuskdb)
* [Medium](https://darklotus.medium.com/)
* [Linkedin](https://www.linkedin.com/in/kamaldeepbhati/)
* [Instagram](https://www.instagram.com/kamaldeepbhati/)
