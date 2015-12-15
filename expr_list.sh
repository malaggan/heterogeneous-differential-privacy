#!/usr/bin/env bash
set -e # exit immediately on error
set -o xtrace # goes to stderr
for v in {1..133}
do
		date
		echo "${v}/133"
		for r in {1..10}
		do
				./hdp survey.txt --log LOG -o results.csv -a  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apb  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 3 -s 1 -u 0  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 3 -s 1 -u 0.5  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 3 -s 1 -u 0.9  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 3 -s 2 -u 0  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 3 -s 2 -u 0.5  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 3 -s 2 -u 0.9  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -ape 3 -s 3 -u 0  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 3 -s 3 -u 0.5  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 3 -s 3 -u 0.9  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 3 -s 4 -u 0  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 3 -s 4 -u 0.5  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 3 -s 4 -u 0.9  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 3 -s 5 -u 0  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 3 -s 5 -u 0.5  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -ape 3 -s 5 -u 0.9  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 3 -s 6 -u 0  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 3 -s 6 -u 0.5  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 3 -s 6 -u 0.9  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 3 -s 7 -u 0  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 3 -s 7 -u 0.5  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 3 -s 7 -u 0.9  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 3 -s 8 -u 0  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -ape 3 -s 8 -u 0.5  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 3 -s 8 -u 0.9  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 3 -s 9 -u 0  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 3 -s 9 -u 0.5  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 3 -s 9 -u 0.9  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 3 -s 10 -u 0  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 3 -s 10 -u 0.5  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 3 -s 10 -u 0.9  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -apne 3 --normal 0.1 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apge 3 --normal 0.1 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 3 --normal 0.1 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apge 3 --normal 0.1 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 3 --normal 0.1 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apge 3 --normal 0.1 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 3 --normal 0.1 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apge 3 --normal 0.1 --unconcerned 0.7  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -apne 3 --normal 0.2 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apge 3 --normal 0.2 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 3 --normal 0.2 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apge 3 --normal 0.2 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 3 --normal 0.2 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apge 3 --normal 0.2 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 3 --normal 0.2 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apge 3 --normal 0.2 --unconcerned 0.7  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -apne 3 --normal 0.6 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apge 3 --normal 0.6 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 3 --normal 0.6 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apge 3 --normal 0.6 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 3 --normal 0.6 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apge 3 --normal 0.6 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 3 --normal 0.6 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apge 3 --normal 0.6 --unconcerned 0.7  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -apne 3 --normal 0.7 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apge 3 --normal 0.7 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 3 --normal 0.7 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apge 3 --normal 0.7 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 3 --normal 0.7 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apge 3 --normal 0.7 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 3 --normal 0.7 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apge 3 --normal 0.7 --unconcerned 0.7  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -ape 2 -s 1 -u 0  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 2 -s 1 -u 0.5  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 2 -s 1 -u 0.9  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 2 -s 2 -u 0  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 2 -s 2 -u 0.5  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 2 -s 2 -u 0.9  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 2 -s 3 -u 0  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 2 -s 3 -u 0.5  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -ape 2 -s 3 -u 0.9  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 2 -s 4 -u 0  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 2 -s 4 -u 0.5  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 2 -s 4 -u 0.9  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 2 -s 5 -u 0  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 2 -s 5 -u 0.5  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 2 -s 5 -u 0.9  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 2 -s 6 -u 0  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -ape 2 -s 6 -u 0.5  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 2 -s 6 -u 0.9  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 2 -s 7 -u 0  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 2 -s 7 -u 0.5  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 2 -s 7 -u 0.9  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 2 -s 8 -u 0  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 2 -s 8 -u 0.5  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 2 -s 8 -u 0.9  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -ape 2 -s 9 -u 0  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 2 -s 9 -u 0.5  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 2 -s 9 -u 0.9  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 2 -s 10 -u 0  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 2 -s 10 -u 0.5  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 2 -s 10 -u 0.9  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 2 --normal 0.1 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apge 2 --normal 0.1 --unconcerned 0.1  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -apne 2 --normal 0.1 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apge 2 --normal 0.1 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 2 --normal 0.1 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apge 2 --normal 0.1 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 2 --normal 0.1 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apge 2 --normal 0.1 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 2 --normal 0.2 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apge 2 --normal 0.2 --unconcerned 0.1  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -apne 2 --normal 0.2 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apge 2 --normal 0.2 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 2 --normal 0.2 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apge 2 --normal 0.2 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 2 --normal 0.2 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apge 2 --normal 0.2 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 2 --normal 0.6 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apge 2 --normal 0.6 --unconcerned 0.1  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -apne 2 --normal 0.6 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apge 2 --normal 0.6 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 2 --normal 0.6 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apge 2 --normal 0.6 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 2 --normal 0.6 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apge 2 --normal 0.6 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 2 --normal 0.7 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apge 2 --normal 0.7 --unconcerned 0.1  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -apne 2 --normal 0.7 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apge 2 --normal 0.7 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 2 --normal 0.7 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apge 2 --normal 0.7 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 2 --normal 0.7 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apge 2 --normal 0.7 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 1 -s 1 -u 0  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 1 -s 1 -u 0.5  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -ape 1 -s 1 -u 0.9  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 1 -s 2 -u 0  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 1 -s 2 -u 0.5  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 1 -s 2 -u 0.9  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 1 -s 3 -u 0  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 1 -s 3 -u 0.5  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 1 -s 3 -u 0.9  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 1 -s 4 -u 0  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -ape 1 -s 4 -u 0.5  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 1 -s 4 -u 0.9  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 1 -s 5 -u 0  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 1 -s 5 -u 0.5  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 1 -s 5 -u 0.9  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 1 -s 6 -u 0  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 1 -s 6 -u 0.5  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 1 -s 6 -u 0.9  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -ape 1 -s 7 -u 0  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 1 -s 7 -u 0.5  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 1 -s 7 -u 0.9  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 1 -s 8 -u 0  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 1 -s 8 -u 0.5  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 1 -s 8 -u 0.9  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 1 -s 9 -u 0  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 1 -s 9 -u 0.5  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -ape 1 -s 9 -u 0.9  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 1 -s 10 -u 0  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 1 -s 10 -u 0.5  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 1 -s 10 -u 0.9  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 1 --normal 0.1 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apge 1 --normal 0.1 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 1 --normal 0.1 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apge 1 --normal 0.1 --unconcerned 0.2  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -apne 1 --normal 0.1 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apge 1 --normal 0.1 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 1 --normal 0.1 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apge 1 --normal 0.1 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 1 --normal 0.2 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apge 1 --normal 0.2 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 1 --normal 0.2 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apge 1 --normal 0.2 --unconcerned 0.2  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -apne 1 --normal 0.2 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apge 1 --normal 0.2 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 1 --normal 0.2 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apge 1 --normal 0.2 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 1 --normal 0.6 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apge 1 --normal 0.6 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 1 --normal 0.6 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apge 1 --normal 0.6 --unconcerned 0.2  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -apne 1 --normal 0.6 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apge 1 --normal 0.6 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 1 --normal 0.6 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apge 1 --normal 0.6 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 1 --normal 0.7 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apge 1 --normal 0.7 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 1 --normal 0.7 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apge 1 --normal 0.7 --unconcerned 0.2  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -apne 1 --normal 0.7 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apge 1 --normal 0.7 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 1 --normal 0.7 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apge 1 --normal 0.7 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 0.5 -s 1 -u 0  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 0.5 -s 1 -u 0.5  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 0.5 -s 1 -u 0.9  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 0.5 -s 2 -u 0  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -ape 0.5 -s 2 -u 0.5  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 0.5 -s 2 -u 0.9  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 0.5 -s 3 -u 0  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 0.5 -s 3 -u 0.5  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 0.5 -s 3 -u 0.9  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 0.5 -s 4 -u 0  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 0.5 -s 4 -u 0.5  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 0.5 -s 4 -u 0.9  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -ape 0.5 -s 5 -u 0  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 0.5 -s 5 -u 0.5  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 0.5 -s 5 -u 0.9  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 0.5 -s 6 -u 0  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 0.5 -s 6 -u 0.5  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 0.5 -s 6 -u 0.9  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 0.5 -s 7 -u 0  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 0.5 -s 7 -u 0.5  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -ape 0.5 -s 7 -u 0.9  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 0.5 -s 8 -u 0  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 0.5 -s 8 -u 0.5  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 0.5 -s 8 -u 0.9  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 0.5 -s 9 -u 0  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 0.5 -s 9 -u 0.5  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 0.5 -s 9 -u 0.9  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 0.5 -s 10 -u 0  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -ape 0.5 -s 10 -u 0.5  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 0.5 -s 10 -u 0.9  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 --normal 0.1 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apge 0.5 --normal 0.1 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 --normal 0.1 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apge 0.5 --normal 0.1 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 --normal 0.1 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apge 0.5 --normal 0.1 --unconcerned 0.6  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 --normal 0.1 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apge 0.5 --normal 0.1 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 --normal 0.2 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apge 0.5 --normal 0.2 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 --normal 0.2 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apge 0.5 --normal 0.2 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 --normal 0.2 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apge 0.5 --normal 0.2 --unconcerned 0.6  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 --normal 0.2 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apge 0.5 --normal 0.2 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 --normal 0.6 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apge 0.5 --normal 0.6 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 --normal 0.6 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apge 0.5 --normal 0.6 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 --normal 0.6 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apge 0.5 --normal 0.6 --unconcerned 0.6  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 --normal 0.6 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apge 0.5 --normal 0.6 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 --normal 0.7 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apge 0.5 --normal 0.7 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 --normal 0.7 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apge 0.5 --normal 0.7 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 --normal 0.7 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apge 0.5 --normal 0.7 --unconcerned 0.6  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 --normal 0.7 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apge 0.5 --normal 0.7 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 0.1 -s 1 -u 0  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 0.1 -s 1 -u 0.5  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 0.1 -s 1 -u 0.9  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 0.1 -s 2 -u 0  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 0.1 -s 2 -u 0.5  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 0.1 -s 2 -u 0.9  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -ape 0.1 -s 3 -u 0  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 0.1 -s 3 -u 0.5  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 0.1 -s 3 -u 0.9  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 0.1 -s 4 -u 0  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 0.1 -s 4 -u 0.5  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 0.1 -s 4 -u 0.9  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 0.1 -s 5 -u 0  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 0.1 -s 5 -u 0.5  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -ape 0.1 -s 5 -u 0.9  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 0.1 -s 6 -u 0  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 0.1 -s 6 -u 0.5  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 0.1 -s 6 -u 0.9  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 0.1 -s 7 -u 0  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 0.1 -s 7 -u 0.5  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 0.1 -s 7 -u 0.9  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 0.1 -s 8 -u 0  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -ape 0.1 -s 8 -u 0.5  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 0.1 -s 8 -u 0.9  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 0.1 -s 9 -u 0  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 0.1 -s 9 -u 0.5  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 0.1 -s 9 -u 0.9  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 0.1 -s 10 -u 0  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 0.1 -s 10 -u 0.5  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -ape 0.1 -s 10 -u 0.9  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 --normal 0.1 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apge 0.1 --normal 0.1 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 --normal 0.1 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apge 0.1 --normal 0.1 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 --normal 0.1 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apge 0.1 --normal 0.1 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 --normal 0.1 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apge 0.1 --normal 0.1 --unconcerned 0.7  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 --normal 0.2 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apge 0.1 --normal 0.2 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 --normal 0.2 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apge 0.1 --normal 0.2 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 --normal 0.2 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apge 0.1 --normal 0.2 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 --normal 0.2 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apge 0.1 --normal 0.2 --unconcerned 0.7  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 --normal 0.6 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apge 0.1 --normal 0.6 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 --normal 0.6 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apge 0.1 --normal 0.6 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 --normal 0.6 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apge 0.1 --normal 0.6 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 --normal 0.6 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apge 0.1 --normal 0.6 --unconcerned 0.7  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 --normal 0.7 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apge 0.1 --normal 0.7 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 --normal 0.7 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apge 0.1 --normal 0.7 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 --normal 0.7 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apge 0.1 --normal 0.7 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 --normal 0.7 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apge 0.1 --normal 0.7 --unconcerned 0.7  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.1 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.1 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.1 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.1 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.1 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.1 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.1 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.1 --unconcerned 0.2  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.1 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.1 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.1 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.1 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.1 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.1 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.1 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.1 --unconcerned 0.7  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.1 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.1 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.1 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.1 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.2 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.2 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.2 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.2 --unconcerned 0.1  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.2 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.2 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.2 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.2 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.2 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.2 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.2 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.2 --unconcerned 0.6  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.2 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.2 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.2 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.2 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.2 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.2 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.2 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.2 --unconcerned 0.7  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.6 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.6 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.6 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.6 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.6 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.6 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.6 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.6 --unconcerned 0.2  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.6 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.6 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.6 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.6 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.6 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.6 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.6 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.6 --unconcerned 0.7  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.6 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.6 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.6 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.6 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.7 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.7 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.7 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.7 --unconcerned 0.1  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.7 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.7 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.7 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.7 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.7 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.7 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.7 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.7 --unconcerned 0.6  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.7 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.7 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.7 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.7 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.7 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.7 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.7 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.7 --unconcerned 0.7  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.1 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.1 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.1 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.1 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.1 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.1 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.1 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.1 --unconcerned 0.2  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.1 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.1 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.1 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.1 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.1 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.1 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.1 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.1 --unconcerned 0.7  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.1 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.1 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.1 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.1 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.2 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.2 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.2 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.2 --unconcerned 0.1  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.2 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.2 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.2 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.2 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.2 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.2 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.2 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.2 --unconcerned 0.6  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.2 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.2 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.2 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.2 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.2 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.2 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.2 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.2 --unconcerned 0.7  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.6 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.6 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.6 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.6 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.6 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.6 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.6 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.6 --unconcerned 0.2  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.6 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.6 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.6 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.6 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.6 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.6 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.6 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.6 --unconcerned 0.7  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.6 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.6 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.6 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.6 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.7 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.7 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.7 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.7 --unconcerned 0.1  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.7 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.7 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.7 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.7 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.7 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.7 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.7 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.7 --unconcerned 0.6  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.7 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.7 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.7 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.7 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.7 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.7 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.7 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.7 --unconcerned 0.7  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.1 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.1 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.1 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.1 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.1 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.1 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.1 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.1 --unconcerned 0.2  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.1 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.1 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.1 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.1 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.1 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.1 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.1 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.1 --unconcerned 0.7  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.1 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.1 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.1 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.1 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.2 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.2 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.2 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.2 --unconcerned 0.1  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.2 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.2 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.2 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.2 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.2 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.2 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.2 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.2 --unconcerned 0.6  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.2 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.2 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.2 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.2 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.2 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.2 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.2 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.2 --unconcerned 0.7  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.6 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.6 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.6 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.6 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.6 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.6 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.6 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.6 --unconcerned 0.2  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.6 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.6 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.6 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.6 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.6 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.6 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.6 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.6 --unconcerned 0.7  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.6 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.6 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.6 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.6 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.7 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.7 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.7 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.7 --unconcerned 0.1  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.7 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.7 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.7 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.7 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.7 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.7 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.7 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.7 --unconcerned 0.6  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.7 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.7 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.7 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.7 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.7 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.7 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.7 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.7 --unconcerned 0.7  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.1 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.1 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.1 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.1 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.1 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.1 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.1 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.1 --unconcerned 0.2  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.1 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.1 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.1 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.1 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.1 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.1 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.1 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.1 --unconcerned 0.7  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.1 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.1 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.1 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.1 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.2 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.2 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.2 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.2 --unconcerned 0.1  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.2 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.2 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.2 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.2 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.2 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.2 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.2 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.2 --unconcerned 0.6  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.2 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.2 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.2 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.2 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.2 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.2 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.2 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.2 --unconcerned 0.7  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.6 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.6 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.6 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.6 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.6 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.6 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.6 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.6 --unconcerned 0.2  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.6 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.6 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.6 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.6 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.6 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.6 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.6 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.6 --unconcerned 0.7  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.6 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.6 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.6 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.6 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.7 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.7 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.7 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.7 --unconcerned 0.1  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.7 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.7 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.7 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.7 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.7 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.7 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.7 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.7 --unconcerned 0.6  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.7 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.7 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.7 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.7 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.7 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.7 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.7 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.7 --unconcerned 0.7  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.1 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.1 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.1 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.1 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.1 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.1 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.1 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.1 --unconcerned 0.2  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.1 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.1 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.1 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.1 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.1 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.1 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.1 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.1 --unconcerned 0.7  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.1 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.1 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.1 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.1 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.2 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.2 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.2 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.2 --unconcerned 0.1  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.2 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.2 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.2 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.2 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.2 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.2 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.2 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.2 --unconcerned 0.6  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.2 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.2 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.2 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.2 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.2 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.2 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.2 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.2 --unconcerned 0.7  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.6 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.6 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.6 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.6 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.6 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.6 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.6 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.6 --unconcerned 0.2  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.6 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.6 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.6 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.6 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.6 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.6 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.6 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.6 --unconcerned 0.7  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.6 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.6 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.6 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.6 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.7 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.7 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.7 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.7 --unconcerned 0.1  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.7 --unconcerned 0.1  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.7 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.7 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.7 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.7 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.7 --unconcerned 0.2  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.7 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.7 --unconcerned 0.6  --all-peers &
				wait
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.7 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.7 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.7 --unconcerned 0.6  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.7 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.7 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.7 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.7 --unconcerned 0.7  --all-peers &
				./hdp survey.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.7 --unconcerned 0.7  --all-peers &
				wait
		done
		./hdp digg.txt --log LOG -o results.csv -a  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apb  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 3 -s 1 -u 0  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 3 -s 1 -u 0.5  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 3 -s 1 -u 0.9  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 3 -s 2 -u 0  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 3 -s 2 -u 0.5  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 3 -s 2 -u 0.9  --all-peers &
		wait
		./hdp digg.txt --log LOG -o results.csv -ape 3 -s 3 -u 0  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 3 -s 3 -u 0.5  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 3 -s 3 -u 0.9  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 3 -s 4 -u 0  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 3 -s 4 -u 0.5  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 3 -s 4 -u 0.9  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 3 -s 5 -u 0  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 3 -s 5 -u 0.5  --all-peers &
		wait
		./hdp digg.txt --log LOG -o results.csv -ape 3 -s 5 -u 0.9  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 3 -s 6 -u 0  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 3 -s 6 -u 0.5  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 3 -s 6 -u 0.9  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 3 -s 7 -u 0  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 3 -s 7 -u 0.5  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 3 -s 7 -u 0.9  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 3 -s 8 -u 0  --all-peers &
		wait
		./hdp digg.txt --log LOG -o results.csv -ape 3 -s 8 -u 0.5  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 3 -s 8 -u 0.9  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 3 -s 9 -u 0  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 3 -s 9 -u 0.5  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 3 -s 9 -u 0.9  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 3 -s 10 -u 0  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 3 -s 10 -u 0.5  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 3 -s 10 -u 0.9  --all-peers &
		wait
		./hdp digg.txt --log LOG -o results.csv -apne 3 --normal 0.1 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apge 3 --normal 0.1 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 3 --normal 0.1 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apge 3 --normal 0.1 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 3 --normal 0.1 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apge 3 --normal 0.1 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 3 --normal 0.1 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apge 3 --normal 0.1 --unconcerned 0.7  --all-peers &
		wait
		./hdp digg.txt --log LOG -o results.csv -apne 3 --normal 0.2 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apge 3 --normal 0.2 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 3 --normal 0.2 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apge 3 --normal 0.2 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 3 --normal 0.2 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apge 3 --normal 0.2 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 3 --normal 0.2 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apge 3 --normal 0.2 --unconcerned 0.7  --all-peers &
		wait
		./hdp digg.txt --log LOG -o results.csv -apne 3 --normal 0.6 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apge 3 --normal 0.6 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 3 --normal 0.6 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apge 3 --normal 0.6 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 3 --normal 0.6 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apge 3 --normal 0.6 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 3 --normal 0.6 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apge 3 --normal 0.6 --unconcerned 0.7  --all-peers &
		wait
		./hdp digg.txt --log LOG -o results.csv -apne 3 --normal 0.7 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apge 3 --normal 0.7 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 3 --normal 0.7 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apge 3 --normal 0.7 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 3 --normal 0.7 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apge 3 --normal 0.7 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 3 --normal 0.7 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apge 3 --normal 0.7 --unconcerned 0.7  --all-peers &
		wait
		./hdp digg.txt --log LOG -o results.csv -ape 2 -s 1 -u 0  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 2 -s 1 -u 0.5  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 2 -s 1 -u 0.9  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 2 -s 2 -u 0  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 2 -s 2 -u 0.5  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 2 -s 2 -u 0.9  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 2 -s 3 -u 0  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 2 -s 3 -u 0.5  --all-peers &
		wait
		./hdp digg.txt --log LOG -o results.csv -ape 2 -s 3 -u 0.9  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 2 -s 4 -u 0  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 2 -s 4 -u 0.5  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 2 -s 4 -u 0.9  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 2 -s 5 -u 0  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 2 -s 5 -u 0.5  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 2 -s 5 -u 0.9  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 2 -s 6 -u 0  --all-peers &
		wait
		./hdp digg.txt --log LOG -o results.csv -ape 2 -s 6 -u 0.5  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 2 -s 6 -u 0.9  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 2 -s 7 -u 0  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 2 -s 7 -u 0.5  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 2 -s 7 -u 0.9  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 2 -s 8 -u 0  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 2 -s 8 -u 0.5  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 2 -s 8 -u 0.9  --all-peers &
		wait
		./hdp digg.txt --log LOG -o results.csv -ape 2 -s 9 -u 0  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 2 -s 9 -u 0.5  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 2 -s 9 -u 0.9  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 2 -s 10 -u 0  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 2 -s 10 -u 0.5  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 2 -s 10 -u 0.9  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 2 --normal 0.1 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apge 2 --normal 0.1 --unconcerned 0.1  --all-peers &
		wait
		./hdp digg.txt --log LOG -o results.csv -apne 2 --normal 0.1 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apge 2 --normal 0.1 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 2 --normal 0.1 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apge 2 --normal 0.1 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 2 --normal 0.1 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apge 2 --normal 0.1 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 2 --normal 0.2 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apge 2 --normal 0.2 --unconcerned 0.1  --all-peers &
		wait
		./hdp digg.txt --log LOG -o results.csv -apne 2 --normal 0.2 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apge 2 --normal 0.2 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 2 --normal 0.2 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apge 2 --normal 0.2 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 2 --normal 0.2 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apge 2 --normal 0.2 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 2 --normal 0.6 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apge 2 --normal 0.6 --unconcerned 0.1  --all-peers &
		wait
		./hdp digg.txt --log LOG -o results.csv -apne 2 --normal 0.6 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apge 2 --normal 0.6 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 2 --normal 0.6 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apge 2 --normal 0.6 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 2 --normal 0.6 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apge 2 --normal 0.6 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 2 --normal 0.7 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apge 2 --normal 0.7 --unconcerned 0.1  --all-peers &
		wait
		./hdp digg.txt --log LOG -o results.csv -apne 2 --normal 0.7 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apge 2 --normal 0.7 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 2 --normal 0.7 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apge 2 --normal 0.7 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 2 --normal 0.7 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apge 2 --normal 0.7 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 1 -s 1 -u 0  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 1 -s 1 -u 0.5  --all-peers &
		wait
		./hdp digg.txt --log LOG -o results.csv -ape 1 -s 1 -u 0.9  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 1 -s 2 -u 0  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 1 -s 2 -u 0.5  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 1 -s 2 -u 0.9  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 1 -s 3 -u 0  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 1 -s 3 -u 0.5  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 1 -s 3 -u 0.9  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 1 -s 4 -u 0  --all-peers &
		wait
		./hdp digg.txt --log LOG -o results.csv -ape 1 -s 4 -u 0.5  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 1 -s 4 -u 0.9  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 1 -s 5 -u 0  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 1 -s 5 -u 0.5  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 1 -s 5 -u 0.9  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 1 -s 6 -u 0  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 1 -s 6 -u 0.5  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 1 -s 6 -u 0.9  --all-peers &
		wait
		./hdp digg.txt --log LOG -o results.csv -ape 1 -s 7 -u 0  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 1 -s 7 -u 0.5  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 1 -s 7 -u 0.9  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 1 -s 8 -u 0  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 1 -s 8 -u 0.5  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 1 -s 8 -u 0.9  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 1 -s 9 -u 0  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 1 -s 9 -u 0.5  --all-peers &
		wait
		./hdp digg.txt --log LOG -o results.csv -ape 1 -s 9 -u 0.9  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 1 -s 10 -u 0  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 1 -s 10 -u 0.5  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 1 -s 10 -u 0.9  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 1 --normal 0.1 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apge 1 --normal 0.1 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 1 --normal 0.1 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apge 1 --normal 0.1 --unconcerned 0.2  --all-peers &
		wait
		./hdp digg.txt --log LOG -o results.csv -apne 1 --normal 0.1 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apge 1 --normal 0.1 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 1 --normal 0.1 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apge 1 --normal 0.1 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 1 --normal 0.2 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apge 1 --normal 0.2 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 1 --normal 0.2 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apge 1 --normal 0.2 --unconcerned 0.2  --all-peers &
		wait
		./hdp digg.txt --log LOG -o results.csv -apne 1 --normal 0.2 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apge 1 --normal 0.2 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 1 --normal 0.2 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apge 1 --normal 0.2 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 1 --normal 0.6 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apge 1 --normal 0.6 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 1 --normal 0.6 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apge 1 --normal 0.6 --unconcerned 0.2  --all-peers &
		wait
		./hdp digg.txt --log LOG -o results.csv -apne 1 --normal 0.6 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apge 1 --normal 0.6 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 1 --normal 0.6 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apge 1 --normal 0.6 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 1 --normal 0.7 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apge 1 --normal 0.7 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 1 --normal 0.7 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apge 1 --normal 0.7 --unconcerned 0.2  --all-peers &
		wait
		./hdp digg.txt --log LOG -o results.csv -apne 1 --normal 0.7 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apge 1 --normal 0.7 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 1 --normal 0.7 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apge 1 --normal 0.7 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 0.5 -s 1 -u 0  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 0.5 -s 1 -u 0.5  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 0.5 -s 1 -u 0.9  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 0.5 -s 2 -u 0  --all-peers &
		wait
		./hdp digg.txt --log LOG -o results.csv -ape 0.5 -s 2 -u 0.5  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 0.5 -s 2 -u 0.9  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 0.5 -s 3 -u 0  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 0.5 -s 3 -u 0.5  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 0.5 -s 3 -u 0.9  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 0.5 -s 4 -u 0  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 0.5 -s 4 -u 0.5  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 0.5 -s 4 -u 0.9  --all-peers &
		wait
		./hdp digg.txt --log LOG -o results.csv -ape 0.5 -s 5 -u 0  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 0.5 -s 5 -u 0.5  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 0.5 -s 5 -u 0.9  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 0.5 -s 6 -u 0  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 0.5 -s 6 -u 0.5  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 0.5 -s 6 -u 0.9  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 0.5 -s 7 -u 0  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 0.5 -s 7 -u 0.5  --all-peers &
		wait
		./hdp digg.txt --log LOG -o results.csv -ape 0.5 -s 7 -u 0.9  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 0.5 -s 8 -u 0  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 0.5 -s 8 -u 0.5  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 0.5 -s 8 -u 0.9  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 0.5 -s 9 -u 0  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 0.5 -s 9 -u 0.5  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 0.5 -s 9 -u 0.9  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 0.5 -s 10 -u 0  --all-peers &
		wait
		./hdp digg.txt --log LOG -o results.csv -ape 0.5 -s 10 -u 0.5  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 0.5 -s 10 -u 0.9  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 --normal 0.1 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apge 0.5 --normal 0.1 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 --normal 0.1 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apge 0.5 --normal 0.1 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 --normal 0.1 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apge 0.5 --normal 0.1 --unconcerned 0.6  --all-peers &
		wait
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 --normal 0.1 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apge 0.5 --normal 0.1 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 --normal 0.2 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apge 0.5 --normal 0.2 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 --normal 0.2 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apge 0.5 --normal 0.2 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 --normal 0.2 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apge 0.5 --normal 0.2 --unconcerned 0.6  --all-peers &
		wait
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 --normal 0.2 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apge 0.5 --normal 0.2 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 --normal 0.6 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apge 0.5 --normal 0.6 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 --normal 0.6 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apge 0.5 --normal 0.6 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 --normal 0.6 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apge 0.5 --normal 0.6 --unconcerned 0.6  --all-peers &
		wait
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 --normal 0.6 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apge 0.5 --normal 0.6 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 --normal 0.7 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apge 0.5 --normal 0.7 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 --normal 0.7 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apge 0.5 --normal 0.7 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 --normal 0.7 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apge 0.5 --normal 0.7 --unconcerned 0.6  --all-peers &
		wait
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 --normal 0.7 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apge 0.5 --normal 0.7 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 0.1 -s 1 -u 0  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 0.1 -s 1 -u 0.5  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 0.1 -s 1 -u 0.9  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 0.1 -s 2 -u 0  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 0.1 -s 2 -u 0.5  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 0.1 -s 2 -u 0.9  --all-peers &
		wait
		./hdp digg.txt --log LOG -o results.csv -ape 0.1 -s 3 -u 0  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 0.1 -s 3 -u 0.5  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 0.1 -s 3 -u 0.9  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 0.1 -s 4 -u 0  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 0.1 -s 4 -u 0.5  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 0.1 -s 4 -u 0.9  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 0.1 -s 5 -u 0  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 0.1 -s 5 -u 0.5  --all-peers &
		wait
		./hdp digg.txt --log LOG -o results.csv -ape 0.1 -s 5 -u 0.9  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 0.1 -s 6 -u 0  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 0.1 -s 6 -u 0.5  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 0.1 -s 6 -u 0.9  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 0.1 -s 7 -u 0  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 0.1 -s 7 -u 0.5  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 0.1 -s 7 -u 0.9  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 0.1 -s 8 -u 0  --all-peers &
		wait
		./hdp digg.txt --log LOG -o results.csv -ape 0.1 -s 8 -u 0.5  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 0.1 -s 8 -u 0.9  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 0.1 -s 9 -u 0  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 0.1 -s 9 -u 0.5  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 0.1 -s 9 -u 0.9  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 0.1 -s 10 -u 0  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 0.1 -s 10 -u 0.5  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -ape 0.1 -s 10 -u 0.9  --all-peers &
		wait
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 --normal 0.1 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apge 0.1 --normal 0.1 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 --normal 0.1 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apge 0.1 --normal 0.1 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 --normal 0.1 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apge 0.1 --normal 0.1 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 --normal 0.1 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apge 0.1 --normal 0.1 --unconcerned 0.7  --all-peers &
		wait
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 --normal 0.2 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apge 0.1 --normal 0.2 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 --normal 0.2 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apge 0.1 --normal 0.2 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 --normal 0.2 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apge 0.1 --normal 0.2 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 --normal 0.2 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apge 0.1 --normal 0.2 --unconcerned 0.7  --all-peers &
		wait
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 --normal 0.6 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apge 0.1 --normal 0.6 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 --normal 0.6 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apge 0.1 --normal 0.6 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 --normal 0.6 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apge 0.1 --normal 0.6 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 --normal 0.6 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apge 0.1 --normal 0.6 --unconcerned 0.7  --all-peers &
		wait
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 --normal 0.7 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apge 0.1 --normal 0.7 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 --normal 0.7 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apge 0.1 --normal 0.7 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 --normal 0.7 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apge 0.1 --normal 0.7 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 --normal 0.7 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apge 0.1 --normal 0.7 --unconcerned 0.7  --all-peers &
		wait
				./hdp digg.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.1 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.1 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.1 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.1 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.1 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.1 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.1 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.1 --unconcerned 0.2  --all-peers &
		wait
		./hdp digg.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.1 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.1 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.1 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.1 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.1 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.1 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.1 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.1 --unconcerned 0.7  --all-peers &
		wait
		./hdp digg.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.1 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.1 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.1 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.1 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.2 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.2 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.2 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.2 --unconcerned 0.1  --all-peers &
		wait
		./hdp digg.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.2 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.2 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.2 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.2 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.2 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.2 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.2 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.2 --unconcerned 0.6  --all-peers &
		wait
		./hdp digg.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.2 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.2 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.2 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.2 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.2 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.2 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.2 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.2 --unconcerned 0.7  --all-peers &
		wait
		./hdp digg.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.6 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.6 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.6 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.6 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.6 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.6 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.6 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.6 --unconcerned 0.2  --all-peers &
		wait
		./hdp digg.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.6 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.6 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.6 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.6 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.6 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.6 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.6 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.6 --unconcerned 0.7  --all-peers &
		wait
		./hdp digg.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.6 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.6 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.6 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.6 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.7 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.7 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.7 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.7 --unconcerned 0.1  --all-peers &
		wait
		./hdp digg.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.7 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.7 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.7 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.7 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.7 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.7 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.7 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.7 --unconcerned 0.6  --all-peers &
		wait
		./hdp digg.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.7 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.7 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.7 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.7 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.7 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.7 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.7 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.7 --unconcerned 0.7  --all-peers &
		wait
		./hdp digg.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.1 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.1 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.1 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.1 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.1 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.1 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.1 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.1 --unconcerned 0.2  --all-peers &
		wait
		./hdp digg.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.1 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.1 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.1 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.1 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.1 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.1 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.1 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.1 --unconcerned 0.7  --all-peers &
		wait
		./hdp digg.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.1 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.1 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.1 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.1 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.2 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.2 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.2 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.2 --unconcerned 0.1  --all-peers &
		wait
		./hdp digg.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.2 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.2 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.2 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.2 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.2 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.2 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.2 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.2 --unconcerned 0.6  --all-peers &
		wait
		./hdp digg.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.2 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.2 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.2 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.2 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.2 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.2 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.2 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.2 --unconcerned 0.7  --all-peers &
		wait
		./hdp digg.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.6 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.6 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.6 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.6 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.6 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.6 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.6 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.6 --unconcerned 0.2  --all-peers &
		wait
		./hdp digg.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.6 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.6 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.6 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.6 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.6 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.6 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.6 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.6 --unconcerned 0.7  --all-peers &
		wait
		./hdp digg.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.6 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.6 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.6 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.6 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.7 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.7 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.7 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.7 --unconcerned 0.1  --all-peers &
		wait
		./hdp digg.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.7 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.7 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.7 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.7 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.7 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.7 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.7 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.7 --unconcerned 0.6  --all-peers &
		wait
		./hdp digg.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.7 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.7 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.7 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.7 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.7 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.7 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.7 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.7 --unconcerned 0.7  --all-peers &
		wait
		./hdp digg.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.1 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.1 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.1 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.1 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.1 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.1 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.1 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.1 --unconcerned 0.2  --all-peers &
		wait
		./hdp digg.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.1 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.1 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.1 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.1 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.1 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.1 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.1 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.1 --unconcerned 0.7  --all-peers &
		wait
		./hdp digg.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.1 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.1 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.1 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.1 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.2 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.2 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.2 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.2 --unconcerned 0.1  --all-peers &
		wait
		./hdp digg.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.2 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.2 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.2 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.2 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.2 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.2 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.2 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.2 --unconcerned 0.6  --all-peers &
		wait
		./hdp digg.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.2 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.2 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.2 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.2 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.2 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.2 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.2 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.2 --unconcerned 0.7  --all-peers &
		wait
		./hdp digg.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.6 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.6 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.6 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.6 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.6 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.6 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.6 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.6 --unconcerned 0.2  --all-peers &
		wait
		./hdp digg.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.6 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.6 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.6 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.6 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.6 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.6 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.6 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.6 --unconcerned 0.7  --all-peers &
		wait
		./hdp digg.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.6 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.6 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.6 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.6 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.7 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.7 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.7 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.7 --unconcerned 0.1  --all-peers &
		wait
		./hdp digg.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.7 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.7 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.7 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.7 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.7 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.7 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.7 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.7 --unconcerned 0.6  --all-peers &
		wait
		./hdp digg.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.7 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.7 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.7 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.7 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.7 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.7 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.7 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.7 --unconcerned 0.7  --all-peers &
		wait
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.1 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.1 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.1 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.1 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.1 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.1 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.1 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.1 --unconcerned 0.2  --all-peers &
		wait
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.1 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.1 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.1 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.1 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.1 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.1 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.1 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.1 --unconcerned 0.7  --all-peers &
		wait
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.1 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.1 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.1 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.1 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.2 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.2 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.2 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.2 --unconcerned 0.1  --all-peers &
		wait
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.2 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.2 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.2 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.2 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.2 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.2 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.2 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.2 --unconcerned 0.6  --all-peers &
		wait
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.2 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.2 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.2 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.2 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.2 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.2 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.2 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.2 --unconcerned 0.7  --all-peers &
		wait
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.6 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.6 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.6 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.6 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.6 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.6 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.6 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.6 --unconcerned 0.2  --all-peers &
		wait
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.6 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.6 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.6 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.6 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.6 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.6 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.6 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.6 --unconcerned 0.7  --all-peers &
		wait
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.6 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.6 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.6 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.6 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.7 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.7 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.7 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.7 --unconcerned 0.1  --all-peers &
		wait
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.7 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.7 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.7 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.7 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.7 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.7 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.7 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.7 --unconcerned 0.6  --all-peers &
		wait
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.7 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.7 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.7 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.7 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.7 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.7 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.7 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.7 --unconcerned 0.7  --all-peers &
		wait
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.1 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.1 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.1 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.1 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.1 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.1 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.1 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.1 --unconcerned 0.2  --all-peers &
		wait
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.1 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.1 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.1 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.1 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.1 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.1 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.1 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.1 --unconcerned 0.7  --all-peers &
		wait
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.1 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.1 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.1 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.1 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.2 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.2 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.2 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.2 --unconcerned 0.1  --all-peers &
		wait
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.2 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.2 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.2 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.2 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.2 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.2 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.2 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.2 --unconcerned 0.6  --all-peers &
		wait
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.2 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.2 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.2 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.2 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.2 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.2 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.2 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.2 --unconcerned 0.7  --all-peers &
		wait
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.6 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.6 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.6 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.6 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.6 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.6 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.6 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.6 --unconcerned 0.2  --all-peers &
		wait
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.6 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.6 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.6 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.6 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.6 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.6 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.6 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.6 --unconcerned 0.7  --all-peers &
		wait
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.6 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.6 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.6 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.6 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.7 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.7 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.7 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.7 --unconcerned 0.1  --all-peers &
		wait
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.7 --unconcerned 0.1  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.7 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.7 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.7 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.7 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.7 --unconcerned 0.2  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.7 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.7 --unconcerned 0.6  --all-peers &
		wait
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.7 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.7 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.7 --unconcerned 0.6  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.7 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.7 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.7 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.7 --unconcerned 0.7  --all-peers &
		./hdp digg.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.7 --unconcerned 0.7  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -a  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apb  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 3 -s 1 -u 0  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 3 -s 1 -u 0.5  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 3 -s 1 -u 0.9  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 3 -s 2 -u 0  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 3 -s 2 -u 0.5  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 3 -s 2 -u 0.9  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -ape 3 -s 3 -u 0  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 3 -s 3 -u 0.5  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 3 -s 3 -u 0.9  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 3 -s 4 -u 0  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 3 -s 4 -u 0.5  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 3 -s 4 -u 0.9  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 3 -s 5 -u 0  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 3 -s 5 -u 0.5  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -ape 3 -s 5 -u 0.9  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 3 -s 6 -u 0  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 3 -s 6 -u 0.5  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 3 -s 6 -u 0.9  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 3 -s 7 -u 0  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 3 -s 7 -u 0.5  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 3 -s 7 -u 0.9  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 3 -s 8 -u 0  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -ape 3 -s 8 -u 0.5  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 3 -s 8 -u 0.9  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 3 -s 9 -u 0  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 3 -s 9 -u 0.5  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 3 -s 9 -u 0.9  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 3 -s 10 -u 0  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 3 -s 10 -u 0.5  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 3 -s 10 -u 0.9  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -apne 3 --normal 0.1 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apge 3 --normal 0.1 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 3 --normal 0.1 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apge 3 --normal 0.1 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 3 --normal 0.1 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apge 3 --normal 0.1 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 3 --normal 0.1 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apge 3 --normal 0.1 --unconcerned 0.7  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -apne 3 --normal 0.2 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apge 3 --normal 0.2 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 3 --normal 0.2 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apge 3 --normal 0.2 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 3 --normal 0.2 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apge 3 --normal 0.2 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 3 --normal 0.2 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apge 3 --normal 0.2 --unconcerned 0.7  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -apne 3 --normal 0.6 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apge 3 --normal 0.6 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 3 --normal 0.6 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apge 3 --normal 0.6 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 3 --normal 0.6 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apge 3 --normal 0.6 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 3 --normal 0.6 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apge 3 --normal 0.6 --unconcerned 0.7  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -apne 3 --normal 0.7 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apge 3 --normal 0.7 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 3 --normal 0.7 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apge 3 --normal 0.7 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 3 --normal 0.7 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apge 3 --normal 0.7 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 3 --normal 0.7 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apge 3 --normal 0.7 --unconcerned 0.7  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -ape 2 -s 1 -u 0  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 2 -s 1 -u 0.5  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 2 -s 1 -u 0.9  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 2 -s 2 -u 0  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 2 -s 2 -u 0.5  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 2 -s 2 -u 0.9  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 2 -s 3 -u 0  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 2 -s 3 -u 0.5  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -ape 2 -s 3 -u 0.9  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 2 -s 4 -u 0  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 2 -s 4 -u 0.5  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 2 -s 4 -u 0.9  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 2 -s 5 -u 0  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 2 -s 5 -u 0.5  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 2 -s 5 -u 0.9  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 2 -s 6 -u 0  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -ape 2 -s 6 -u 0.5  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 2 -s 6 -u 0.9  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 2 -s 7 -u 0  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 2 -s 7 -u 0.5  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 2 -s 7 -u 0.9  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 2 -s 8 -u 0  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 2 -s 8 -u 0.5  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 2 -s 8 -u 0.9  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -ape 2 -s 9 -u 0  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 2 -s 9 -u 0.5  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 2 -s 9 -u 0.9  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 2 -s 10 -u 0  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 2 -s 10 -u 0.5  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 2 -s 10 -u 0.9  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 2 --normal 0.1 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apge 2 --normal 0.1 --unconcerned 0.1  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -apne 2 --normal 0.1 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apge 2 --normal 0.1 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 2 --normal 0.1 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apge 2 --normal 0.1 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 2 --normal 0.1 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apge 2 --normal 0.1 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 2 --normal 0.2 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apge 2 --normal 0.2 --unconcerned 0.1  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -apne 2 --normal 0.2 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apge 2 --normal 0.2 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 2 --normal 0.2 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apge 2 --normal 0.2 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 2 --normal 0.2 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apge 2 --normal 0.2 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 2 --normal 0.6 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apge 2 --normal 0.6 --unconcerned 0.1  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -apne 2 --normal 0.6 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apge 2 --normal 0.6 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 2 --normal 0.6 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apge 2 --normal 0.6 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 2 --normal 0.6 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apge 2 --normal 0.6 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 2 --normal 0.7 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apge 2 --normal 0.7 --unconcerned 0.1  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -apne 2 --normal 0.7 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apge 2 --normal 0.7 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 2 --normal 0.7 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apge 2 --normal 0.7 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 2 --normal 0.7 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apge 2 --normal 0.7 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 1 -s 1 -u 0  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 1 -s 1 -u 0.5  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -ape 1 -s 1 -u 0.9  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 1 -s 2 -u 0  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 1 -s 2 -u 0.5  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 1 -s 2 -u 0.9  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 1 -s 3 -u 0  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 1 -s 3 -u 0.5  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 1 -s 3 -u 0.9  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 1 -s 4 -u 0  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -ape 1 -s 4 -u 0.5  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 1 -s 4 -u 0.9  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 1 -s 5 -u 0  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 1 -s 5 -u 0.5  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 1 -s 5 -u 0.9  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 1 -s 6 -u 0  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 1 -s 6 -u 0.5  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 1 -s 6 -u 0.9  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -ape 1 -s 7 -u 0  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 1 -s 7 -u 0.5  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 1 -s 7 -u 0.9  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 1 -s 8 -u 0  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 1 -s 8 -u 0.5  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 1 -s 8 -u 0.9  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 1 -s 9 -u 0  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 1 -s 9 -u 0.5  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -ape 1 -s 9 -u 0.9  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 1 -s 10 -u 0  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 1 -s 10 -u 0.5  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 1 -s 10 -u 0.9  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 1 --normal 0.1 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apge 1 --normal 0.1 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 1 --normal 0.1 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apge 1 --normal 0.1 --unconcerned 0.2  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -apne 1 --normal 0.1 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apge 1 --normal 0.1 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 1 --normal 0.1 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apge 1 --normal 0.1 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 1 --normal 0.2 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apge 1 --normal 0.2 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 1 --normal 0.2 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apge 1 --normal 0.2 --unconcerned 0.2  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -apne 1 --normal 0.2 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apge 1 --normal 0.2 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 1 --normal 0.2 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apge 1 --normal 0.2 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 1 --normal 0.6 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apge 1 --normal 0.6 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 1 --normal 0.6 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apge 1 --normal 0.6 --unconcerned 0.2  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -apne 1 --normal 0.6 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apge 1 --normal 0.6 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 1 --normal 0.6 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apge 1 --normal 0.6 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 1 --normal 0.7 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apge 1 --normal 0.7 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 1 --normal 0.7 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apge 1 --normal 0.7 --unconcerned 0.2  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -apne 1 --normal 0.7 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apge 1 --normal 0.7 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 1 --normal 0.7 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apge 1 --normal 0.7 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 0.5 -s 1 -u 0  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 0.5 -s 1 -u 0.5  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 0.5 -s 1 -u 0.9  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 0.5 -s 2 -u 0  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -ape 0.5 -s 2 -u 0.5  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 0.5 -s 2 -u 0.9  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 0.5 -s 3 -u 0  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 0.5 -s 3 -u 0.5  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 0.5 -s 3 -u 0.9  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 0.5 -s 4 -u 0  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 0.5 -s 4 -u 0.5  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 0.5 -s 4 -u 0.9  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -ape 0.5 -s 5 -u 0  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 0.5 -s 5 -u 0.5  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 0.5 -s 5 -u 0.9  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 0.5 -s 6 -u 0  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 0.5 -s 6 -u 0.5  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 0.5 -s 6 -u 0.9  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 0.5 -s 7 -u 0  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 0.5 -s 7 -u 0.5  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -ape 0.5 -s 7 -u 0.9  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 0.5 -s 8 -u 0  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 0.5 -s 8 -u 0.5  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 0.5 -s 8 -u 0.9  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 0.5 -s 9 -u 0  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 0.5 -s 9 -u 0.5  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 0.5 -s 9 -u 0.9  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 0.5 -s 10 -u 0  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -ape 0.5 -s 10 -u 0.5  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 0.5 -s 10 -u 0.9  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 --normal 0.1 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apge 0.5 --normal 0.1 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 --normal 0.1 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apge 0.5 --normal 0.1 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 --normal 0.1 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apge 0.5 --normal 0.1 --unconcerned 0.6  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 --normal 0.1 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apge 0.5 --normal 0.1 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 --normal 0.2 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apge 0.5 --normal 0.2 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 --normal 0.2 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apge 0.5 --normal 0.2 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 --normal 0.2 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apge 0.5 --normal 0.2 --unconcerned 0.6  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 --normal 0.2 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apge 0.5 --normal 0.2 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 --normal 0.6 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apge 0.5 --normal 0.6 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 --normal 0.6 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apge 0.5 --normal 0.6 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 --normal 0.6 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apge 0.5 --normal 0.6 --unconcerned 0.6  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 --normal 0.6 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apge 0.5 --normal 0.6 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 --normal 0.7 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apge 0.5 --normal 0.7 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 --normal 0.7 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apge 0.5 --normal 0.7 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 --normal 0.7 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apge 0.5 --normal 0.7 --unconcerned 0.6  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 --normal 0.7 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apge 0.5 --normal 0.7 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 0.1 -s 1 -u 0  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 0.1 -s 1 -u 0.5  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 0.1 -s 1 -u 0.9  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 0.1 -s 2 -u 0  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 0.1 -s 2 -u 0.5  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 0.1 -s 2 -u 0.9  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -ape 0.1 -s 3 -u 0  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 0.1 -s 3 -u 0.5  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 0.1 -s 3 -u 0.9  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 0.1 -s 4 -u 0  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 0.1 -s 4 -u 0.5  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 0.1 -s 4 -u 0.9  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 0.1 -s 5 -u 0  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 0.1 -s 5 -u 0.5  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -ape 0.1 -s 5 -u 0.9  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 0.1 -s 6 -u 0  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 0.1 -s 6 -u 0.5  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 0.1 -s 6 -u 0.9  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 0.1 -s 7 -u 0  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 0.1 -s 7 -u 0.5  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 0.1 -s 7 -u 0.9  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 0.1 -s 8 -u 0  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -ape 0.1 -s 8 -u 0.5  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 0.1 -s 8 -u 0.9  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 0.1 -s 9 -u 0  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 0.1 -s 9 -u 0.5  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 0.1 -s 9 -u 0.9  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 0.1 -s 10 -u 0  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 0.1 -s 10 -u 0.5  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -ape 0.1 -s 10 -u 0.9  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 --normal 0.1 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apge 0.1 --normal 0.1 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 --normal 0.1 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apge 0.1 --normal 0.1 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 --normal 0.1 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apge 0.1 --normal 0.1 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 --normal 0.1 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apge 0.1 --normal 0.1 --unconcerned 0.7  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 --normal 0.2 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apge 0.1 --normal 0.2 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 --normal 0.2 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apge 0.1 --normal 0.2 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 --normal 0.2 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apge 0.1 --normal 0.2 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 --normal 0.2 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apge 0.1 --normal 0.2 --unconcerned 0.7  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 --normal 0.6 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apge 0.1 --normal 0.6 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 --normal 0.6 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apge 0.1 --normal 0.6 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 --normal 0.6 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apge 0.1 --normal 0.6 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 --normal 0.6 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apge 0.1 --normal 0.6 --unconcerned 0.7  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 --normal 0.7 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apge 0.1 --normal 0.7 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 --normal 0.7 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apge 0.1 --normal 0.7 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 --normal 0.7 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apge 0.1 --normal 0.7 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 --normal 0.7 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apge 0.1 --normal 0.7 --unconcerned 0.7  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.1 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.1 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.1 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.1 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.1 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.1 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.1 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.1 --unconcerned 0.2  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.1 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.1 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.1 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.1 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.1 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.1 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.1 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.1 --unconcerned 0.7  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.1 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.1 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.1 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.1 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.2 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.2 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.2 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.2 --unconcerned 0.1  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.2 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.2 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.2 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.2 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.2 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.2 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.2 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.2 --unconcerned 0.6  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.2 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.2 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.2 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.2 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.2 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.2 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.2 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.2 --unconcerned 0.7  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.6 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.6 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.6 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.6 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.6 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.6 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.6 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.6 --unconcerned 0.2  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.6 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.6 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.6 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.6 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.6 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.6 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.6 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.6 --unconcerned 0.7  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.6 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.6 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.6 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.6 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.7 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.7 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.7 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.7 --unconcerned 0.1  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.7 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.7 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.7 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.7 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.7 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.7 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.7 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.7 --unconcerned 0.6  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.7 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.7 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.7 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.7 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.7 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.7 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.7 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.7 --unconcerned 0.7  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.1 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.1 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.1 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.1 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.1 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.1 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.1 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.1 --unconcerned 0.2  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.1 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.1 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.1 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.1 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.1 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.1 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.1 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.1 --unconcerned 0.7  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.1 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.1 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.1 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.1 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.2 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.2 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.2 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.2 --unconcerned 0.1  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.2 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.2 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.2 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.2 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.2 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.2 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.2 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.2 --unconcerned 0.6  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.2 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.2 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.2 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.2 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.2 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.2 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.2 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.2 --unconcerned 0.7  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.6 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.6 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.6 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.6 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.6 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.6 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.6 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.6 --unconcerned 0.2  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.6 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.6 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.6 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.6 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.6 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.6 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.6 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.6 --unconcerned 0.7  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.6 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.6 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.6 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.6 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.7 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.7 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.7 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.7 --unconcerned 0.1  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.7 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.7 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.7 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.7 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.7 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.7 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.7 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.7 --unconcerned 0.6  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.7 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.7 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.7 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.7 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.7 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.7 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.7 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.7 --unconcerned 0.7  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.1 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.1 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.1 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.1 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.1 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.1 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.1 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.1 --unconcerned 0.2  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.1 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.1 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.1 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.1 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.1 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.1 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.1 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.1 --unconcerned 0.7  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.1 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.1 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.1 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.1 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.2 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.2 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.2 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.2 --unconcerned 0.1  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.2 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.2 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.2 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.2 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.2 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.2 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.2 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.2 --unconcerned 0.6  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.2 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.2 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.2 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.2 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.2 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.2 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.2 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.2 --unconcerned 0.7  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.6 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.6 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.6 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.6 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.6 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.6 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.6 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.6 --unconcerned 0.2  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.6 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.6 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.6 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.6 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.6 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.6 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.6 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.6 --unconcerned 0.7  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.6 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.6 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.6 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.6 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.7 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.7 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.7 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.7 --unconcerned 0.1  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.7 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.7 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.7 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.7 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.7 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.7 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.7 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.7 --unconcerned 0.6  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.7 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.7 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.7 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.7 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.7 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.7 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.7 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.7 --unconcerned 0.7  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.1 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.1 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.1 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.1 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.1 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.1 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.1 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.1 --unconcerned 0.2  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.1 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.1 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.1 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.1 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.1 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.1 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.1 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.1 --unconcerned 0.7  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.1 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.1 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.1 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.1 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.2 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.2 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.2 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.2 --unconcerned 0.1  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.2 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.2 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.2 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.2 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.2 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.2 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.2 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.2 --unconcerned 0.6  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.2 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.2 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.2 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.2 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.2 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.2 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.2 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.2 --unconcerned 0.7  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.6 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.6 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.6 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.6 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.6 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.6 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.6 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.6 --unconcerned 0.2  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.6 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.6 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.6 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.6 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.6 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.6 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.6 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.6 --unconcerned 0.7  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.6 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.6 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.6 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.6 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.7 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.7 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.7 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.7 --unconcerned 0.1  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.7 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.7 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.7 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.7 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.7 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.7 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.7 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.7 --unconcerned 0.6  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.7 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.7 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.7 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.7 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.7 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.7 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.7 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.7 --unconcerned 0.7  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.1 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.1 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.1 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.1 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.1 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.1 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.1 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.1 --unconcerned 0.2  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.1 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.1 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.1 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.1 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.1 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.1 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.1 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.1 --unconcerned 0.7  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.1 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.1 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.1 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.1 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.2 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.2 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.2 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.2 --unconcerned 0.1  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.2 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.2 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.2 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.2 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.2 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.2 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.2 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.2 --unconcerned 0.6  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.2 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.2 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.2 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.2 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.2 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.2 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.2 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.2 --unconcerned 0.7  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.6 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.6 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.6 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.6 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.6 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.6 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.6 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.6 --unconcerned 0.2  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.6 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.6 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.6 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.6 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.6 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.6 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.6 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.6 --unconcerned 0.7  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.6 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.6 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.6 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.6 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.7 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.7 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.7 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.7 --unconcerned 0.1  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.7 --unconcerned 0.1  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.7 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.7 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.7 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.7 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.7 --unconcerned 0.2  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.7 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.7 --unconcerned 0.6  --all-peers &
		wait
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.7 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.7 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.7 --unconcerned 0.6  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.7 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.7 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.7 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.7 --unconcerned 0.7  --all-peers &
		./hdp delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.7 --unconcerned 0.7  --all-peers &
		wait
		## analysis is useless because i ignore all-peers anyway
		# cd analysis
		# ./analyse
		# cp alpha.tex		~/Dropbox/Research/Papers/HDP/alpha.tex
		# cp groups.tex		~/Dropbox/Research/Papers/HDP/groups.tex
		# cp min-plot.tex ~/Dropbox/Research/Papers/HDP/min-plot.tex
		# cp steps.tex		~/Dropbox/Research/Papers/HDP/steps.tex
		# cd ..
done
