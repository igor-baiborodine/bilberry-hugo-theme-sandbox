#!/usr/bin/env bash

sed -i "s/title = .*$/title = \"Bilberry v3 Sandbox\"/" config.toml
sed -i "s/theme = .*$/theme = \"github.com\/Lednerb\/bilberry-hugo-theme\/v3\"/" config.toml
hugo mod get

version=$(grep -Po "(?<=v3\s)[^\s//]+" go.mod)
sed -i "s/creditsText = .*$/creditsText = \"Bilberry Hugo Theme $version\"/" config.toml
sed -i "s/creditsUrl = .*$/creditsUrl = \"https:\/\/github.com\/Lednerb\/bilberry-hugo-theme\/tree\/$version\"/" config.toml
