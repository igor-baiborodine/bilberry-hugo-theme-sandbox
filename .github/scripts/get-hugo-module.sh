#!/usr/bin/env bash

#sed -i "s/title = .*$/title = \"Bilberry v3 Sandbox\"/" hugo.toml
sed -i "s/path = .*$/path = \"github.com\/Lednerb\/bilberry-hugo-theme\/v4\"/" hugo.toml
hugo mod get

version=$(grep -Po "(?<=v4\s)[^\s//]+" go.mod)
sed -i "s/creditsText = .*$/creditsText = \"Bilberry Hugo Theme $version\"/" hugo.toml
sed -i "s/creditsUrl = .*$/creditsUrl = \"https:\/\/github.com\/Lednerb\/bilberry-hugo-theme\/tree\/$version\"/" hugo.toml
