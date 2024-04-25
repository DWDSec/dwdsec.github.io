#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
# set -e

# 生成静态文件
npm run docs:build

# 进入生成的文件夹
pushd docs/.vuepress/dist

# 如果是发布到自定义域名
echo 'dwdsec.top' > CNAME

git init
git add -A
git commit -m 'deploy'
git remote add origin https://github.com/DWDSec/dwdsec.github.io.git
git push -f origin master:gh-pages

popd