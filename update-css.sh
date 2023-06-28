#!/usr/bin/env bash

sed -i "s~webfonts~bilberry-hugo-theme-sandbox/webfonts~g" public/theme.min.*.css
sed -i "s~/fonts~/bilberry-hugo-theme-sandbox/fonts~g" public/theme.min.*.css
