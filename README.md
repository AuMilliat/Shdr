Shdr
====

Shdr is an online ESSL (GLSL) shader editor, viewer and validator powered by WebGL.

> **Author:** [Thibaut Despoulain (BKcore)](http://bkcore.com)
> **Version:** 0.2.161211

Inspired by MrDoob's live HTML editor.
Powered by Three.js, Ace.js, RawDeflate.js and jQuery.
Icons by AwesomeFont, Monkey head from Blender, HexMKII from HexGL.

Issues, feature requests, contributions:
[Fork me on GitHub!](https://github.com/BKcore/Shdr)

# Building and Running with npm
To install node and npm on Ubuntu:
```
sudo apt-get install nodejs npm
sudo ln -s /usr/bin/nodejs /usr/local/bin/node
```
To build and run with npm:
```
npm install
npm start
```
To build only the js package:
```
npm build
```
To build the extension:
```
npm run build-extension
```

Objs files are from:
```
sheepHightDef.obj : https://free3d.com/3d-model/sheep-v1--489218.html 
sheep.obj : https://free3d.com/3d-model/cartoon-low-poly-sheep-211607.html
Both have been reprocessed in Blender (parameter Triangulate Face)
```
