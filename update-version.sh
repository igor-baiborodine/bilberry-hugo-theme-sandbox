#!/usr/bin/env bash

sed -i "s/theme = .*$/theme = \"github.com\/Lednerb\/bilberry-hugo-theme\/v4\"/" config.toml
hugo mod get

version=$(grep -Po '(?<=v4\s)[^\s//]+' go.mod)
sed -i "s/creditsText = .*$/creditsText = \"Bilberry Hugo Theme $version\"/" config.toml
sed -i "s/creditsUrl = .*$/creditsUrl = \"https:\/\/github.com\/Lednerb\/bilberry-hugo-theme\/tree\/$version\"/" config.toml
