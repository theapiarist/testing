# deploy script from here: https://onebite.dev/move-my-hugo-site-from-github-pages-to-netlify/ 
echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"
WORKINGDIR='/Users/dje/Documents/Websites/Hugo/testing';

cd $WORKINGDIR

# add changes to git
git add .

# make the commit
msg="Rebuilding site `date`"
if [ $# -eq 1 ]
    then msg="$1"
fi
git commit -m "$msg"

# push that lot to repo
git push -u origin main
