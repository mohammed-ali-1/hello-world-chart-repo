set -o errexit

rm -rf public
mkdir public

git config --global user.email "mohammad10596@gmail.com"
git config --global user.name "Travis CI"

cd public
git init
git add .
git commit -m "DEPLOY TO GH-PAGES"
git push --force --quiet "https://${GITHUB_TOKEN}@github.com/${REPO_URL}" master:gh-pages > /dev/null 2>&1
