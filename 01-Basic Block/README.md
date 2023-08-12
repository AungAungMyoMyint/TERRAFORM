rm -rf .terraform*
rm -rf terraform.tfstate*


Let’s create a repository on github and initialize in our directory.

git init
git add .
git commit -m "terraform resource for EC2"
git branch -M main
git remote add origin https://<repository-URL>
git push -u origin main