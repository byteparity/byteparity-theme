# Liferay >= 7.0 - BYTEPARITY-THEME

Liferay BYTEPARITY-THEME is Single page compnay website  theme

<img src="/src/images/screenshot.png" alt="BYTEPARITY-THEME" width="400px">

### Benefits

- Bootstrap Responsive

- Lexicon Features

- Customizing Lexicon Base in Liferay Portal

# Getting started

1. clone our repo
 ```bash
 git clone --depth 1 https://github.com/byteparity/byteparity-theme.git
 ```
 
2. change directory to our repo
 ```bash
 cd byteparity-theme
 ```
3. install the repo with npm
```bash
 npm install
 npm i --save gulp-ruby-sass
 ```
 
4. Create `liferay-theme.json` file at theme root lavel

```bash

 {
   "LiferayTheme": {
  "appServerPath": "PATH_TO_LIFERAY_TOMCATE_DIR", 
  "deployPath": "PATH_TO_LIFERAY_DEPLOY_DIR",
  "url": "http://localhost:8080",
  "appServerPathPlugin": "E:\\poc\\flatly-theme\\.web_bundle_build",
  "deployed": true,
  "pluginName": "flatly-theme"
   }
 }
 ```
5. Deploy theme by following command
```bash
gulp deploy
```
6. Go to liferay -> Create Custom fileds at site level
  - "Banner Title" - Localized Text
  - "Banner Detail Text" - Localized Text
  - "Banner Link" - Text
  Give "View" Permission at all Custom filed to all users

7. Create new site blank site -> Apply `byteparity-theme` to newly created site.

8. Import `.lar` file from `/lar` folder to newly created site.

[LIFERAY THEME GENERATOR](https://dev.liferay.com/develop/tutorials/-/knowledge_base/7-0/themes-generator) detail doc.

# Made with Love by
[ByteParity Technologies](https://byteparity.com/)