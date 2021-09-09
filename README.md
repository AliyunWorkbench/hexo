<img src="https://raw.githubusercontent.com/hexojs/logo/master/hexo-logo-avatar.png" alt="Hexo logo" width="35" height="35" align="right" />

# Hexo

## 一、Hexo简介及使用
### **背景介绍**

Hexo是一个开源的静态博客生成器，将markdown文档完全渲染为静态页面，不需任何后端服务器支持，发布和访问速度快，功能简洁，非常适合个人网站、博客等。

项目官网：https://hexo.io

项目地址：https://github.com/hexojs （Hexo项目由多个子项目组成，子项目均在该地址内）

### **最佳实践**
<img src="https://ecoboost-readme-image.oss-cn-shanghai.aliyuncs.com/feApp/github/hexo/hexo_process.svg">

**1.生成Hexo框架代码**

Hexo的层次类似vue和react等框架，但不同于这些通用框架，创建Hexo项目，需要用Hexo官方提供的hexo-cli工具。一行命令行调用，即可快速生成一个用Hexo编写好的blog。

1.1 使用hexo-cli生成仓库

``` bash
#!/bin/bash
npm install hexo-cli -g
hexo init blog # blog即要生成的仓库名称
```

1.2 fork本仓库

本仓库内是初始化的Hexo项目代码，除了添加了本README文件和存放编译hexo项目指令的文件build.sh，其余内容和Hexo初始化生成的项目相同。使用此方法，如果需要编写博客等，仍需调用`npm install hexo-cli -g`安装hexo-cli。

**2.编写博客内容**

``` bash
$ hexo new "Hello Hexo"
```

终端输出：

``` bash
INFO  Validating config
INFO  Created: ~/hexotest/blog/source/_posts/Hello-Hexo.md
```

编写博客的内容、更新themes目录下的主题等Hexo的更多功能，可参考Hexo官方文档：
https://hexo.io/docs/writing

**3.生成静态资源**

``` bash
$ hexo generate
```

终端输出：

``` bash
...
INFO  Generated: 2021/08/23/hello-world/index.html
INFO  Generated: css/fonts/fontawesome-webfont.svg
INFO  19 files generated in 383 ms
```

查看生成的文件：

``` bash
$ ls ./public
# 2021  css index.html  archives  fancybox  js
```

**4.将静态资源发布为可访问的网站**

4.1 Hexo的本地发布

``` bash
$ hexo server
# INFO  Hexo is running at http://localhost:4000 . Press Ctrl+C to stop.
```

4.2 Hexo的线上网站发布

见下一章。

## 二、将Hexo项目通过云开发平台，快速发布为网站

### **背景介绍**
云开发平台是阿里云面向广大开发者提供的免费云上研发工作平台，可以实现开发的全流程。关于云开发平台的介绍：https://help.aliyun.com/product/161245.html。

### **最佳实践**

**1.创建Hexo代码项目**

直接fork本项目到自己的GitHub账号下。本仓库内代码与hexo init生成的默认模版内容一致，仅添加了简易可修改的build.sh文件。在部署时云端会自动执行该文件，将您的hexo项目编译成HTML静态文件并存放至指定目录，以便云端将HTML网页发布至云端供访问。

**2.打开云开发平台，完成阿里云账号注册登陆，同意云开发平台服务协议** https://workbench.aliyun.com/application

<img src="https://ecoboost-readme-image.oss-cn-shanghai.aliyuncs.com/feApp/github/hexo/sign.png" width="400">

**3.创建云开发平台-前端部署应用**

3.1 创建前端应用

依次点击「应用列表」「前端应用」「新建前端应用」按钮。首先绑定GitHub帐号，允许云开发平台构建、发布你的GitHub代码为可访问的网站。

<img src="https://ecoboost-readme-image.oss-cn-shanghai.aliyuncs.com/feApp/github/hexo/create_0.png" width="200">

<img src="https://ecoboost-readme-image.oss-cn-shanghai.aliyuncs.com/feApp/github/hexo/oauth.png" width="200">

选择第一步中的代码仓库、主干分支等，并点击下一步。主干分支一般指的是代码的master或main等分支。

<img src="https://ecoboost-readme-image.oss-cn-shanghai.aliyuncs.com/feApp/github/hexo/create_1.png" width="300">

填写基本信息并点击「完成」。稍等片刻创建成功后，将进入到应用部署界面。

<img src="https://ecoboost-readme-image.oss-cn-shanghai.aliyuncs.com/feApp/github/hexo/create_2.png" width="600">

3.2 进行项目的部署和查看

依次点击日常环境的「部署」「确定」，即可启动发布流程：

<img src="https://ecoboost-readme-image.oss-cn-shanghai.aliyuncs.com/feApp/github/hexo/deploy.png" width="300">

在部署完成成功后，部署状态会显示为“已部署”。且部署网站的记录和过程，也会被完整记录下来：

<img src="https://ecoboost-readme-image.oss-cn-shanghai.aliyuncs.com/feApp/github/hexo/main.png" width="600">

点击「部署配置」，并点击「测试域名」，即可访问您的应用。请注意测试域名的过期时间。

<img src="https://ecoboost-readme-image.oss-cn-shanghai.aliyuncs.com/feApp/github/hexo/page.png" width="500">

如果测试域名访问时出现类似以下情况，请点击「高级」-「继续访问」。这是因为临时测试域名并未提供完整的证书，仅供您临时测试使用。如果需要发布为长期的正式网站，请看下一步。

<img src="https://ecoboost-readme-image.oss-cn-shanghai.aliyuncs.com/feApp/github/lifeRestart/chromewarn.png" width="500">

可点击部署记录的「查看结果」来查看部署到OSS存储中的静态资源。并将资源的链接复制下来，供其它网站等引用访问。

<img src="https://ecoboost-readme-image.oss-cn-shanghai.aliyuncs.com/feApp/github/hexo/result.png" width="400">

<img src="https://ecoboost-readme-image.oss-cn-shanghai.aliyuncs.com/feApp/github/hexo/result_download.png" width="350">

可点击部署记录的「查看日志」查看部署的详细过程，并在部署发生错误时，精确定位学习错误情况。

<img src="https://ecoboost-readme-image.oss-cn-shanghai.aliyuncs.com/feApp/github/hexo/log.png" width="450">

部署操作可以在每次更新博客内容并push后再次进行，实现静态网站内容的按需实时更新。

3.3 （可选）添加自己的自定义域名

但是您可以通过设置自定义域名，并进行CNAME解析，来持久化这个前端游戏。在「部署配置」「自定义域名」中，添加您自己名下的域名，重新点击部署。再按照提示，将您名下的域名CNAME到指定的OSS域名下，即可使用自己的域名，持续访问该应用。

<img src="https://ecoboost-readme-image.oss-cn-shanghai.aliyuncs.com/feApp/github/lifeRestart/mydomain.png" width="500">

3.4 （可选）使用CDN加速域名访问，节约流量费用

当网站流量巨大时，可点击「部署配置」中的「如何配置CDN加速」，将自己的域名与CDN加速绑定，从而加速网站访问，节约流量费用。
