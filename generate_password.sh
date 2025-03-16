#!/bin/bash

read -p "Enter password length (default is 16): " LENGTH
LENGTH=${LENGTH:-16}

echo "Choose character set:"
echo "1) Letters only"
echo "2) Letters and numbers"
echo "3) Letters, numbers, and symbols (default)"
read -p "Enter choice (1-3): " CHOICE

CASE1='A-Za-z'
CASE2='A-Za-z0-9'
CASE3='A-Za-z0-9!@#$%^&*()_+=-[]{}'

case $CHOICE in
    1) CHARSET=$CASE1 ;;
    2) CHARSET=$CASE2 ;;
    3) CHARSET=$CASE3 ;;
    *) CHARSET=$CASE3 ;;
esac

PASSWORD=$(tr -dc "$CHARSET" < /dev/urandom | head -c $LENGTH)

echo -e "\n\n$PASSWORD\n\n"
