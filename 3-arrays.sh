#!/bin/bash

MOVIES=("Murari" "Arjun" "Pokiri" "Guntur Karam")

echo "$MOVIES[0]"

echo "$MOVIES[2]"

echo "$MOVIES[$@]" #===> print all values