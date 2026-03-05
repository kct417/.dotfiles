#!/usr/bin/env bash

STOW_DIR=~/.dotfiles

stow -v -D -d $STOW_DIR -t ~ bash
stow -v -D -d $STOW_DIR -t ~ git
stow -v -D -d $STOW_DIR -t ~ vim

