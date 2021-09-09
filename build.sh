#!/bin/bash
rm -rf build
rm -rf public
# 生成hexo静态文件
npm install hexo-cli
npm install
./node_modules/hexo-cli/bin/hexo generate
hexo generate
cp -r public build
