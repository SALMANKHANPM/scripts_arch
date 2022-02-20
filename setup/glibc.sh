#!/usr/bin/env bash
echo 'Building and installing glibc version 2.34.'
packages="dakkshesh07/glibc-pkgbuild"
for package in $packages; do
    echo "Installing $package"
    git clone https://github.com/"$package".git
    cd "$package" || exit
    makepkg -si --skippgpcheck
    cd - || exit
    rm -rf "$package"
done

# A Huge Thanks to Dakkshesh For This ...
