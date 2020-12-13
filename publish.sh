NOW=`date '+%F_%H:%M'`;

# cd ~/git/guillaume/squeezebox
git fetch
git pull
git add .
git commit -m "$NOW"
git push
