#!/bin/bash

qterminal -e "./thread.sh    0 2000" &
qterminal -e "./thread.sh 2001 4000" &
qterminal -e "./thread.sh 4001 6000" &
qterminal -e "./thread.sh 6001 8000" &
qterminal -e "./thread.sh 8001 9999" &