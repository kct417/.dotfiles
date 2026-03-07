#!/usr/bin/env bash

ROOT_DIR=~/.dotfiles

stow -v --adopt --dotfiles -d $ROOT_DIR -t ~ bash
stow -v --adopt --dotfiles -d $ROOT_DIR -t ~ readline
stow -v --adopt --dotfiles -d $ROOT_DIR -t ~ git
stow -v --adopt --dotfiles -d $ROOT_DIR -t ~ vim

