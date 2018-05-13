#!/bin/bash

red="\e[1;31m"
green="\e[32m"
blue="\e[34m"
normal="\e[0m"

function show_error() {
  msg=$1
  printf "%b" "${red}ERROR: ${normal}${msg}\n"
  exit 1
}

function show_warning() {
  msg=$1
  printf "%b" "${red}${msg}${normal}\n"
}

function show_notice() {
  msg=$1
  printf "%b" "${green}${msg}${normal}\n"
}

function show_info() {
  msg=$1
  printf "%b" "${blue}${msg}${normal}\n"
}

# Check script is being run as root
if [[ "$USER" != "root" ]]; then
  show_error "This script must be run as root"
else
  show_info "ok"
fi