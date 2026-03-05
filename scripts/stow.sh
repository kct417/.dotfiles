#!/usr/bin/env bash

STOW_DIR=~/.dotfiles


stow -v --adopt -d $STOW_DIR -t ~ bash
stow -v --adopt -d $STOW_DIR -t ~ git
stow -v --adopt -d $STOW_DIR -t ~ vim

