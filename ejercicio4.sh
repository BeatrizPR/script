#!/bin/bash
# Beatriz Parejo Ramos

for i in {0..7}; do

for j in {0..7}; do
case  $i in
  0)
    tput setaf 0
    ;;
  1)
    tput setaf 1
    ;;
  2)
    tput setaf 2
    ;;
  3)
    tput setaf 3
    ;;
  4)
    tput setaf 4
    ;;
  5)
    tput setaf 5
    ;;
  6)
    tput setaf 6
    ;;
  7)
    tput setaf 7
esac

case  $j in
  0)
    tput setab 0
    ;;
  1)
    tput setab 1
    ;;
  2)
    tput setab 2
    ;;
  3)
    tput setab 3
    ;;
  4)
    tput setab 4
    ;;
  5)
    tput setab 5
    ;;
  6)
    tput setab 6
    ;;
  7)
    tput setab 7
esac
printf "F:$i B:$j "
if [ $j -eq 7 ]; then
printf "\n"
fi
done
done

tput sgr0
