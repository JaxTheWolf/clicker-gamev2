#!/bin/bash

# cd to the source folder
cd ../src/public

function compCSS() {
  # Compile Stylus to CSS
  stylus styles/stylus/dark.styl -o styles/css
  stylus styles/stylus/light.styl -o styles/css

  # Minify compiled CSS
  node-minify --compressor csso --input styles/css/dark.css --output ../../server/public/css/dark.css
  node-minify --compressor csso --input styles/css/light.css --output ../../server/public/css/light.css
}

function minJS() {
  # Minify JS
  node-minify --compressor google-closure-compiler --input js/main.js --output ../../server/public/js/main.js
  node-minify --compressor google-closure-compiler --input ../app.js --output ../../server/app.js
}

function minHTML() {
  # Minify HTML
  node-minify --compressor html-minifier --input ../index.html --output ../../server/index.html
}

case $1 in
  CSS) compCSS ;;
  JS) minJS ;;
  HTML) minHTML ;;
  all) compCSS; minHTML; minJS
esac