source ~/Documents/passwords/community.mahti.org
git push origin master
hugo
lftp -c "open -u mahti,$PASSWORD ftp.mahti.org; set ftp:ssl-allow no; set ssl:verify-certificate no; mirror -R public/ ~/public_html/subdomains/community/"
