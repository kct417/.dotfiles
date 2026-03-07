#!/usr/bin/env bash

ROOT_DIR=~/.dotfiles

stow --dotfiles -v -D -d $ROOT_DIR -t ~ bash
stow --dotfiles -v -D -d $ROOT_DIR -t ~ readline
stow --dotfiles -v -D -d $ROOT_DIR -t ~ git
stow --dotfiles -v -D -d $ROOT_DIR -t ~ vim

