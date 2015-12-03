#!/usr/bin/env bash
set -e # exit immediately on error
set -o xtrace
for v in {1..10000}
do
		# ./gossple survey.txt --log LOG -o results.csv -a &
		# ./gossple survey.txt --log LOG -o results.csv -apb &
		# ./gossple survey.txt --log LOG -o results.csv -ape 3 -s 1 -u 0 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 3 -s 1 -u 0.5 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 3 -s 1 -u 0.9 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 3 -s 2 -u 0 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 3 -s 2 -u 0.5 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 3 -s 2 -u 0.9 &
		# wait
		# ./gossple survey.txt --log LOG -o results.csv -ape 3 -s 3 -u 0 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 3 -s 3 -u 0.5 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 3 -s 3 -u 0.9 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 3 -s 4 -u 0 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 3 -s 4 -u 0.5 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 3 -s 4 -u 0.9 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 3 -s 5 -u 0 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 3 -s 5 -u 0.5 &
		# wait
		# ./gossple survey.txt --log LOG -o results.csv -ape 3 -s 5 -u 0.9 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 3 -s 6 -u 0 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 3 -s 6 -u 0.5 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 3 -s 6 -u 0.9 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 3 -s 7 -u 0 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 3 -s 7 -u 0.5 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 3 -s 7 -u 0.9 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 3 -s 8 -u 0 &
		# wait
		# ./gossple survey.txt --log LOG -o results.csv -ape 3 -s 8 -u 0.5 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 3 -s 8 -u 0.9 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 3 -s 9 -u 0 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 3 -s 9 -u 0.5 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 3 -s 9 -u 0.9 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 3 -s 10 -u 0 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 3 -s 10 -u 0.5 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 3 -s 10 -u 0.9 &
		# wait
		# ./gossple survey.txt --log LOG -o results.csv -apne 3 --normal 0.1 --unconcerned 0.1 &
		# ./gossple survey.txt --log LOG -o results.csv -apge 3 --normal 0.1 --unconcerned 0.1 &
		# ./gossple survey.txt --log LOG -o results.csv -apne 3 --normal 0.1 --unconcerned 0.2 &
		# ./gossple survey.txt --log LOG -o results.csv -apge 3 --normal 0.1 --unconcerned 0.2 &
		# ./gossple survey.txt --log LOG -o results.csv -apne 3 --normal 0.1 --unconcerned 0.6 &
		# ./gossple survey.txt --log LOG -o results.csv -apge 3 --normal 0.1 --unconcerned 0.6 &
		# ./gossple survey.txt --log LOG -o results.csv -apne 3 --normal 0.1 --unconcerned 0.7 &
		# ./gossple survey.txt --log LOG -o results.csv -apge 3 --normal 0.1 --unconcerned 0.7 &
		# wait
		# ./gossple survey.txt --log LOG -o results.csv -apne 3 --normal 0.2 --unconcerned 0.1 &
		# ./gossple survey.txt --log LOG -o results.csv -apge 3 --normal 0.2 --unconcerned 0.1 &
		# ./gossple survey.txt --log LOG -o results.csv -apne 3 --normal 0.2 --unconcerned 0.2 &
		# ./gossple survey.txt --log LOG -o results.csv -apge 3 --normal 0.2 --unconcerned 0.2 &
		# ./gossple survey.txt --log LOG -o results.csv -apne 3 --normal 0.2 --unconcerned 0.6 &
		# ./gossple survey.txt --log LOG -o results.csv -apge 3 --normal 0.2 --unconcerned 0.6 &
		# ./gossple survey.txt --log LOG -o results.csv -apne 3 --normal 0.2 --unconcerned 0.7 &
		# ./gossple survey.txt --log LOG -o results.csv -apge 3 --normal 0.2 --unconcerned 0.7 &
		# wait
		# ./gossple survey.txt --log LOG -o results.csv -apne 3 --normal 0.6 --unconcerned 0.1 &
		# ./gossple survey.txt --log LOG -o results.csv -apge 3 --normal 0.6 --unconcerned 0.1 &
		# ./gossple survey.txt --log LOG -o results.csv -apne 3 --normal 0.6 --unconcerned 0.2 &
		# ./gossple survey.txt --log LOG -o results.csv -apge 3 --normal 0.6 --unconcerned 0.2 &
		# ./gossple survey.txt --log LOG -o results.csv -apne 3 --normal 0.6 --unconcerned 0.6 &
		# ./gossple survey.txt --log LOG -o results.csv -apge 3 --normal 0.6 --unconcerned 0.6 &
		# ./gossple survey.txt --log LOG -o results.csv -apne 3 --normal 0.6 --unconcerned 0.7 &
		# ./gossple survey.txt --log LOG -o results.csv -apge 3 --normal 0.6 --unconcerned 0.7 &
		# wait
		# ./gossple survey.txt --log LOG -o results.csv -apne 3 --normal 0.7 --unconcerned 0.1 &
		# ./gossple survey.txt --log LOG -o results.csv -apge 3 --normal 0.7 --unconcerned 0.1 &
		# ./gossple survey.txt --log LOG -o results.csv -apne 3 --normal 0.7 --unconcerned 0.2 &
		# ./gossple survey.txt --log LOG -o results.csv -apge 3 --normal 0.7 --unconcerned 0.2 &
		# ./gossple survey.txt --log LOG -o results.csv -apne 3 --normal 0.7 --unconcerned 0.6 &
		# ./gossple survey.txt --log LOG -o results.csv -apge 3 --normal 0.7 --unconcerned 0.6 &
		# ./gossple survey.txt --log LOG -o results.csv -apne 3 --normal 0.7 --unconcerned 0.7 &
		# ./gossple survey.txt --log LOG -o results.csv -apge 3 --normal 0.7 --unconcerned 0.7 &
		# wait
		# ./gossple survey.txt --log LOG -o results.csv -ape 2 -s 1 -u 0 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 2 -s 1 -u 0.5 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 2 -s 1 -u 0.9 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 2 -s 2 -u 0 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 2 -s 2 -u 0.5 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 2 -s 2 -u 0.9 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 2 -s 3 -u 0 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 2 -s 3 -u 0.5 &
		# wait
		# ./gossple survey.txt --log LOG -o results.csv -ape 2 -s 3 -u 0.9 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 2 -s 4 -u 0 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 2 -s 4 -u 0.5 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 2 -s 4 -u 0.9 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 2 -s 5 -u 0 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 2 -s 5 -u 0.5 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 2 -s 5 -u 0.9 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 2 -s 6 -u 0 &
		# wait
		# ./gossple survey.txt --log LOG -o results.csv -ape 2 -s 6 -u 0.5 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 2 -s 6 -u 0.9 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 2 -s 7 -u 0 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 2 -s 7 -u 0.5 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 2 -s 7 -u 0.9 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 2 -s 8 -u 0 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 2 -s 8 -u 0.5 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 2 -s 8 -u 0.9 &
		# wait
		# ./gossple survey.txt --log LOG -o results.csv -ape 2 -s 9 -u 0 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 2 -s 9 -u 0.5 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 2 -s 9 -u 0.9 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 2 -s 10 -u 0 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 2 -s 10 -u 0.5 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 2 -s 10 -u 0.9 &
		# ./gossple survey.txt --log LOG -o results.csv -apne 2 --normal 0.1 --unconcerned 0.1 &
		# ./gossple survey.txt --log LOG -o results.csv -apge 2 --normal 0.1 --unconcerned 0.1 &
		# wait
		# ./gossple survey.txt --log LOG -o results.csv -apne 2 --normal 0.1 --unconcerned 0.2 &
		# ./gossple survey.txt --log LOG -o results.csv -apge 2 --normal 0.1 --unconcerned 0.2 &
		# ./gossple survey.txt --log LOG -o results.csv -apne 2 --normal 0.1 --unconcerned 0.6 &
		# ./gossple survey.txt --log LOG -o results.csv -apge 2 --normal 0.1 --unconcerned 0.6 &
		# ./gossple survey.txt --log LOG -o results.csv -apne 2 --normal 0.1 --unconcerned 0.7 &
		# ./gossple survey.txt --log LOG -o results.csv -apge 2 --normal 0.1 --unconcerned 0.7 &
		# ./gossple survey.txt --log LOG -o results.csv -apne 2 --normal 0.2 --unconcerned 0.1 &
		# ./gossple survey.txt --log LOG -o results.csv -apge 2 --normal 0.2 --unconcerned 0.1 &
		# wait
		# ./gossple survey.txt --log LOG -o results.csv -apne 2 --normal 0.2 --unconcerned 0.2 &
		# ./gossple survey.txt --log LOG -o results.csv -apge 2 --normal 0.2 --unconcerned 0.2 &
		# ./gossple survey.txt --log LOG -o results.csv -apne 2 --normal 0.2 --unconcerned 0.6 &
		# ./gossple survey.txt --log LOG -o results.csv -apge 2 --normal 0.2 --unconcerned 0.6 &
		# ./gossple survey.txt --log LOG -o results.csv -apne 2 --normal 0.2 --unconcerned 0.7 &
		# ./gossple survey.txt --log LOG -o results.csv -apge 2 --normal 0.2 --unconcerned 0.7 &
		# ./gossple survey.txt --log LOG -o results.csv -apne 2 --normal 0.6 --unconcerned 0.1 &
		# ./gossple survey.txt --log LOG -o results.csv -apge 2 --normal 0.6 --unconcerned 0.1 &
		# wait
		# ./gossple survey.txt --log LOG -o results.csv -apne 2 --normal 0.6 --unconcerned 0.2 &
		# ./gossple survey.txt --log LOG -o results.csv -apge 2 --normal 0.6 --unconcerned 0.2 &
		# ./gossple survey.txt --log LOG -o results.csv -apne 2 --normal 0.6 --unconcerned 0.6 &
		# ./gossple survey.txt --log LOG -o results.csv -apge 2 --normal 0.6 --unconcerned 0.6 &
		# ./gossple survey.txt --log LOG -o results.csv -apne 2 --normal 0.6 --unconcerned 0.7 &
		# ./gossple survey.txt --log LOG -o results.csv -apge 2 --normal 0.6 --unconcerned 0.7 &
		# ./gossple survey.txt --log LOG -o results.csv -apne 2 --normal 0.7 --unconcerned 0.1 &
		# ./gossple survey.txt --log LOG -o results.csv -apge 2 --normal 0.7 --unconcerned 0.1 &
		# wait
		# ./gossple survey.txt --log LOG -o results.csv -apne 2 --normal 0.7 --unconcerned 0.2 &
		# ./gossple survey.txt --log LOG -o results.csv -apge 2 --normal 0.7 --unconcerned 0.2 &
		# ./gossple survey.txt --log LOG -o results.csv -apne 2 --normal 0.7 --unconcerned 0.6 &
		# ./gossple survey.txt --log LOG -o results.csv -apge 2 --normal 0.7 --unconcerned 0.6 &
		# ./gossple survey.txt --log LOG -o results.csv -apne 2 --normal 0.7 --unconcerned 0.7 &
		# ./gossple survey.txt --log LOG -o results.csv -apge 2 --normal 0.7 --unconcerned 0.7 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 1 -s 1 -u 0 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 1 -s 1 -u 0.5 &
		# wait
		# ./gossple survey.txt --log LOG -o results.csv -ape 1 -s 1 -u 0.9 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 1 -s 2 -u 0 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 1 -s 2 -u 0.5 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 1 -s 2 -u 0.9 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 1 -s 3 -u 0 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 1 -s 3 -u 0.5 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 1 -s 3 -u 0.9 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 1 -s 4 -u 0 &
		# wait
		# ./gossple survey.txt --log LOG -o results.csv -ape 1 -s 4 -u 0.5 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 1 -s 4 -u 0.9 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 1 -s 5 -u 0 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 1 -s 5 -u 0.5 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 1 -s 5 -u 0.9 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 1 -s 6 -u 0 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 1 -s 6 -u 0.5 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 1 -s 6 -u 0.9 &
		# wait
		# ./gossple survey.txt --log LOG -o results.csv -ape 1 -s 7 -u 0 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 1 -s 7 -u 0.5 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 1 -s 7 -u 0.9 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 1 -s 8 -u 0 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 1 -s 8 -u 0.5 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 1 -s 8 -u 0.9 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 1 -s 9 -u 0 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 1 -s 9 -u 0.5 &
		# wait
		# ./gossple survey.txt --log LOG -o results.csv -ape 1 -s 9 -u 0.9 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 1 -s 10 -u 0 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 1 -s 10 -u 0.5 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 1 -s 10 -u 0.9 &
		# ./gossple survey.txt --log LOG -o results.csv -apne 1 --normal 0.1 --unconcerned 0.1 &
		# ./gossple survey.txt --log LOG -o results.csv -apge 1 --normal 0.1 --unconcerned 0.1 &
		# ./gossple survey.txt --log LOG -o results.csv -apne 1 --normal 0.1 --unconcerned 0.2 &
		# ./gossple survey.txt --log LOG -o results.csv -apge 1 --normal 0.1 --unconcerned 0.2 &
		# wait
		# ./gossple survey.txt --log LOG -o results.csv -apne 1 --normal 0.1 --unconcerned 0.6 &
		# ./gossple survey.txt --log LOG -o results.csv -apge 1 --normal 0.1 --unconcerned 0.6 &
		# ./gossple survey.txt --log LOG -o results.csv -apne 1 --normal 0.1 --unconcerned 0.7 &
		# ./gossple survey.txt --log LOG -o results.csv -apge 1 --normal 0.1 --unconcerned 0.7 &
		# ./gossple survey.txt --log LOG -o results.csv -apne 1 --normal 0.2 --unconcerned 0.1 &
		# ./gossple survey.txt --log LOG -o results.csv -apge 1 --normal 0.2 --unconcerned 0.1 &
		# ./gossple survey.txt --log LOG -o results.csv -apne 1 --normal 0.2 --unconcerned 0.2 &
		# ./gossple survey.txt --log LOG -o results.csv -apge 1 --normal 0.2 --unconcerned 0.2 &
		# wait
		# ./gossple survey.txt --log LOG -o results.csv -apne 1 --normal 0.2 --unconcerned 0.6 &
		# ./gossple survey.txt --log LOG -o results.csv -apge 1 --normal 0.2 --unconcerned 0.6 &
		# ./gossple survey.txt --log LOG -o results.csv -apne 1 --normal 0.2 --unconcerned 0.7 &
		# ./gossple survey.txt --log LOG -o results.csv -apge 1 --normal 0.2 --unconcerned 0.7 &
		# ./gossple survey.txt --log LOG -o results.csv -apne 1 --normal 0.6 --unconcerned 0.1 &
		# ./gossple survey.txt --log LOG -o results.csv -apge 1 --normal 0.6 --unconcerned 0.1 &
		# ./gossple survey.txt --log LOG -o results.csv -apne 1 --normal 0.6 --unconcerned 0.2 &
		# ./gossple survey.txt --log LOG -o results.csv -apge 1 --normal 0.6 --unconcerned 0.2 &
		# wait
		# ./gossple survey.txt --log LOG -o results.csv -apne 1 --normal 0.6 --unconcerned 0.6 &
		# ./gossple survey.txt --log LOG -o results.csv -apge 1 --normal 0.6 --unconcerned 0.6 &
		# ./gossple survey.txt --log LOG -o results.csv -apne 1 --normal 0.6 --unconcerned 0.7 &
		# ./gossple survey.txt --log LOG -o results.csv -apge 1 --normal 0.6 --unconcerned 0.7 &
		# ./gossple survey.txt --log LOG -o results.csv -apne 1 --normal 0.7 --unconcerned 0.1 &
		# ./gossple survey.txt --log LOG -o results.csv -apge 1 --normal 0.7 --unconcerned 0.1 &
		# ./gossple survey.txt --log LOG -o results.csv -apne 1 --normal 0.7 --unconcerned 0.2 &
		# ./gossple survey.txt --log LOG -o results.csv -apge 1 --normal 0.7 --unconcerned 0.2 &
		# wait
		# ./gossple survey.txt --log LOG -o results.csv -apne 1 --normal 0.7 --unconcerned 0.6 &
		# ./gossple survey.txt --log LOG -o results.csv -apge 1 --normal 0.7 --unconcerned 0.6 &
		# ./gossple survey.txt --log LOG -o results.csv -apne 1 --normal 0.7 --unconcerned 0.7 &
		# ./gossple survey.txt --log LOG -o results.csv -apge 1 --normal 0.7 --unconcerned 0.7 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 0.5 -s 1 -u 0 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 0.5 -s 1 -u 0.5 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 0.5 -s 1 -u 0.9 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 0.5 -s 2 -u 0 &
		# wait
		# ./gossple survey.txt --log LOG -o results.csv -ape 0.5 -s 2 -u 0.5 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 0.5 -s 2 -u 0.9 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 0.5 -s 3 -u 0 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 0.5 -s 3 -u 0.5 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 0.5 -s 3 -u 0.9 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 0.5 -s 4 -u 0 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 0.5 -s 4 -u 0.5 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 0.5 -s 4 -u 0.9 &
		# wait
		# ./gossple survey.txt --log LOG -o results.csv -ape 0.5 -s 5 -u 0 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 0.5 -s 5 -u 0.5 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 0.5 -s 5 -u 0.9 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 0.5 -s 6 -u 0 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 0.5 -s 6 -u 0.5 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 0.5 -s 6 -u 0.9 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 0.5 -s 7 -u 0 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 0.5 -s 7 -u 0.5 &
		# wait
		# ./gossple survey.txt --log LOG -o results.csv -ape 0.5 -s 7 -u 0.9 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 0.5 -s 8 -u 0 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 0.5 -s 8 -u 0.5 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 0.5 -s 8 -u 0.9 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 0.5 -s 9 -u 0 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 0.5 -s 9 -u 0.5 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 0.5 -s 9 -u 0.9 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 0.5 -s 10 -u 0 &
		# wait
		# ./gossple survey.txt --log LOG -o results.csv -ape 0.5 -s 10 -u 0.5 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 0.5 -s 10 -u 0.9 &
		# ./gossple survey.txt --log LOG -o results.csv -apne 0.5 --normal 0.1 --unconcerned 0.1 &
		# ./gossple survey.txt --log LOG -o results.csv -apge 0.5 --normal 0.1 --unconcerned 0.1 &
		# ./gossple survey.txt --log LOG -o results.csv -apne 0.5 --normal 0.1 --unconcerned 0.2 &
		# ./gossple survey.txt --log LOG -o results.csv -apge 0.5 --normal 0.1 --unconcerned 0.2 &
		# ./gossple survey.txt --log LOG -o results.csv -apne 0.5 --normal 0.1 --unconcerned 0.6 &
		# ./gossple survey.txt --log LOG -o results.csv -apge 0.5 --normal 0.1 --unconcerned 0.6 &
		# wait
		# ./gossple survey.txt --log LOG -o results.csv -apne 0.5 --normal 0.1 --unconcerned 0.7 &
		# ./gossple survey.txt --log LOG -o results.csv -apge 0.5 --normal 0.1 --unconcerned 0.7 &
		# ./gossple survey.txt --log LOG -o results.csv -apne 0.5 --normal 0.2 --unconcerned 0.1 &
		# ./gossple survey.txt --log LOG -o results.csv -apge 0.5 --normal 0.2 --unconcerned 0.1 &
		# ./gossple survey.txt --log LOG -o results.csv -apne 0.5 --normal 0.2 --unconcerned 0.2 &
		# ./gossple survey.txt --log LOG -o results.csv -apge 0.5 --normal 0.2 --unconcerned 0.2 &
		# ./gossple survey.txt --log LOG -o results.csv -apne 0.5 --normal 0.2 --unconcerned 0.6 &
		# ./gossple survey.txt --log LOG -o results.csv -apge 0.5 --normal 0.2 --unconcerned 0.6 &
		# wait
		# ./gossple survey.txt --log LOG -o results.csv -apne 0.5 --normal 0.2 --unconcerned 0.7 &
		# ./gossple survey.txt --log LOG -o results.csv -apge 0.5 --normal 0.2 --unconcerned 0.7 &
		# ./gossple survey.txt --log LOG -o results.csv -apne 0.5 --normal 0.6 --unconcerned 0.1 &
		# ./gossple survey.txt --log LOG -o results.csv -apge 0.5 --normal 0.6 --unconcerned 0.1 &
		# ./gossple survey.txt --log LOG -o results.csv -apne 0.5 --normal 0.6 --unconcerned 0.2 &
		# ./gossple survey.txt --log LOG -o results.csv -apge 0.5 --normal 0.6 --unconcerned 0.2 &
		# ./gossple survey.txt --log LOG -o results.csv -apne 0.5 --normal 0.6 --unconcerned 0.6 &
		# ./gossple survey.txt --log LOG -o results.csv -apge 0.5 --normal 0.6 --unconcerned 0.6 &
		# wait
		# ./gossple survey.txt --log LOG -o results.csv -apne 0.5 --normal 0.6 --unconcerned 0.7 &
		# ./gossple survey.txt --log LOG -o results.csv -apge 0.5 --normal 0.6 --unconcerned 0.7 &
		# ./gossple survey.txt --log LOG -o results.csv -apne 0.5 --normal 0.7 --unconcerned 0.1 &
		# ./gossple survey.txt --log LOG -o results.csv -apge 0.5 --normal 0.7 --unconcerned 0.1 &
		# ./gossple survey.txt --log LOG -o results.csv -apne 0.5 --normal 0.7 --unconcerned 0.2 &
		# ./gossple survey.txt --log LOG -o results.csv -apge 0.5 --normal 0.7 --unconcerned 0.2 &
		# ./gossple survey.txt --log LOG -o results.csv -apne 0.5 --normal 0.7 --unconcerned 0.6 &
		# ./gossple survey.txt --log LOG -o results.csv -apge 0.5 --normal 0.7 --unconcerned 0.6 &
		# wait
		# ./gossple survey.txt --log LOG -o results.csv -apne 0.5 --normal 0.7 --unconcerned 0.7 &
		# ./gossple survey.txt --log LOG -o results.csv -apge 0.5 --normal 0.7 --unconcerned 0.7 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 0.1 -s 1 -u 0 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 0.1 -s 1 -u 0.5 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 0.1 -s 1 -u 0.9 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 0.1 -s 2 -u 0 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 0.1 -s 2 -u 0.5 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 0.1 -s 2 -u 0.9 &
		# wait
		# ./gossple survey.txt --log LOG -o results.csv -ape 0.1 -s 3 -u 0 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 0.1 -s 3 -u 0.5 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 0.1 -s 3 -u 0.9 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 0.1 -s 4 -u 0 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 0.1 -s 4 -u 0.5 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 0.1 -s 4 -u 0.9 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 0.1 -s 5 -u 0 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 0.1 -s 5 -u 0.5 &
		# wait
		# ./gossple survey.txt --log LOG -o results.csv -ape 0.1 -s 5 -u 0.9 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 0.1 -s 6 -u 0 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 0.1 -s 6 -u 0.5 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 0.1 -s 6 -u 0.9 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 0.1 -s 7 -u 0 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 0.1 -s 7 -u 0.5 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 0.1 -s 7 -u 0.9 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 0.1 -s 8 -u 0 &
		# wait
		# ./gossple survey.txt --log LOG -o results.csv -ape 0.1 -s 8 -u 0.5 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 0.1 -s 8 -u 0.9 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 0.1 -s 9 -u 0 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 0.1 -s 9 -u 0.5 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 0.1 -s 9 -u 0.9 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 0.1 -s 10 -u 0 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 0.1 -s 10 -u 0.5 &
		# ./gossple survey.txt --log LOG -o results.csv -ape 0.1 -s 10 -u 0.9 &
		# wait
		# ./gossple survey.txt --log LOG -o results.csv -apne 0.1 --normal 0.1 --unconcerned 0.1 &
		# ./gossple survey.txt --log LOG -o results.csv -apge 0.1 --normal 0.1 --unconcerned 0.1 &
		# ./gossple survey.txt --log LOG -o results.csv -apne 0.1 --normal 0.1 --unconcerned 0.2 &
		# ./gossple survey.txt --log LOG -o results.csv -apge 0.1 --normal 0.1 --unconcerned 0.2 &
		# ./gossple survey.txt --log LOG -o results.csv -apne 0.1 --normal 0.1 --unconcerned 0.6 &
		# ./gossple survey.txt --log LOG -o results.csv -apge 0.1 --normal 0.1 --unconcerned 0.6 &
		# ./gossple survey.txt --log LOG -o results.csv -apne 0.1 --normal 0.1 --unconcerned 0.7 &
		# ./gossple survey.txt --log LOG -o results.csv -apge 0.1 --normal 0.1 --unconcerned 0.7 &
		# wait
		# ./gossple survey.txt --log LOG -o results.csv -apne 0.1 --normal 0.2 --unconcerned 0.1 &
		# ./gossple survey.txt --log LOG -o results.csv -apge 0.1 --normal 0.2 --unconcerned 0.1 &
		# ./gossple survey.txt --log LOG -o results.csv -apne 0.1 --normal 0.2 --unconcerned 0.2 &
		# ./gossple survey.txt --log LOG -o results.csv -apge 0.1 --normal 0.2 --unconcerned 0.2 &
		# ./gossple survey.txt --log LOG -o results.csv -apne 0.1 --normal 0.2 --unconcerned 0.6 &
		# ./gossple survey.txt --log LOG -o results.csv -apge 0.1 --normal 0.2 --unconcerned 0.6 &
		# ./gossple survey.txt --log LOG -o results.csv -apne 0.1 --normal 0.2 --unconcerned 0.7 &
		# ./gossple survey.txt --log LOG -o results.csv -apge 0.1 --normal 0.2 --unconcerned 0.7 &
		# wait
		# ./gossple survey.txt --log LOG -o results.csv -apne 0.1 --normal 0.6 --unconcerned 0.1 &
		# ./gossple survey.txt --log LOG -o results.csv -apge 0.1 --normal 0.6 --unconcerned 0.1 &
		# ./gossple survey.txt --log LOG -o results.csv -apne 0.1 --normal 0.6 --unconcerned 0.2 &
		# ./gossple survey.txt --log LOG -o results.csv -apge 0.1 --normal 0.6 --unconcerned 0.2 &
		# ./gossple survey.txt --log LOG -o results.csv -apne 0.1 --normal 0.6 --unconcerned 0.6 &
		# ./gossple survey.txt --log LOG -o results.csv -apge 0.1 --normal 0.6 --unconcerned 0.6 &
		# ./gossple survey.txt --log LOG -o results.csv -apne 0.1 --normal 0.6 --unconcerned 0.7 &
		# ./gossple survey.txt --log LOG -o results.csv -apge 0.1 --normal 0.6 --unconcerned 0.7 &
		# wait
		# ./gossple survey.txt --log LOG -o results.csv -apne 0.1 --normal 0.7 --unconcerned 0.1 &
		# ./gossple survey.txt --log LOG -o results.csv -apge 0.1 --normal 0.7 --unconcerned 0.1 &
		# ./gossple survey.txt --log LOG -o results.csv -apne 0.1 --normal 0.7 --unconcerned 0.2 &
		# ./gossple survey.txt --log LOG -o results.csv -apge 0.1 --normal 0.7 --unconcerned 0.2 &
		# ./gossple survey.txt --log LOG -o results.csv -apne 0.1 --normal 0.7 --unconcerned 0.6 &
		# ./gossple survey.txt --log LOG -o results.csv -apge 0.1 --normal 0.7 --unconcerned 0.6 &
		# ./gossple survey.txt --log LOG -o results.csv -apne 0.1 --normal 0.7 --unconcerned 0.7 &
		# ./gossple survey.txt --log LOG -o results.csv -apge 0.1 --normal 0.7 --unconcerned 0.7 &
		# wait
		# ./gossple digg.txt --log LOG -o results.csv -a &
		# ./gossple digg.txt --log LOG -o results.csv -apb &
		# ./gossple digg.txt --log LOG -o results.csv -ape 3 -s 1 -u 0 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 3 -s 1 -u 0.5 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 3 -s 1 -u 0.9 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 3 -s 2 -u 0 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 3 -s 2 -u 0.5 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 3 -s 2 -u 0.9 &
		# wait
		# ./gossple digg.txt --log LOG -o results.csv -ape 3 -s 3 -u 0 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 3 -s 3 -u 0.5 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 3 -s 3 -u 0.9 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 3 -s 4 -u 0 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 3 -s 4 -u 0.5 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 3 -s 4 -u 0.9 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 3 -s 5 -u 0 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 3 -s 5 -u 0.5 &
		# wait
		# ./gossple digg.txt --log LOG -o results.csv -ape 3 -s 5 -u 0.9 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 3 -s 6 -u 0 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 3 -s 6 -u 0.5 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 3 -s 6 -u 0.9 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 3 -s 7 -u 0 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 3 -s 7 -u 0.5 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 3 -s 7 -u 0.9 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 3 -s 8 -u 0 &
		# wait
		# ./gossple digg.txt --log LOG -o results.csv -ape 3 -s 8 -u 0.5 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 3 -s 8 -u 0.9 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 3 -s 9 -u 0 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 3 -s 9 -u 0.5 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 3 -s 9 -u 0.9 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 3 -s 10 -u 0 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 3 -s 10 -u 0.5 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 3 -s 10 -u 0.9 &
		# wait
		# ./gossple digg.txt --log LOG -o results.csv -apne 3 --normal 0.1 --unconcerned 0.1 &
		# ./gossple digg.txt --log LOG -o results.csv -apge 3 --normal 0.1 --unconcerned 0.1 &
		# ./gossple digg.txt --log LOG -o results.csv -apne 3 --normal 0.1 --unconcerned 0.2 &
		# ./gossple digg.txt --log LOG -o results.csv -apge 3 --normal 0.1 --unconcerned 0.2 &
		# ./gossple digg.txt --log LOG -o results.csv -apne 3 --normal 0.1 --unconcerned 0.6 &
		# ./gossple digg.txt --log LOG -o results.csv -apge 3 --normal 0.1 --unconcerned 0.6 &
		# ./gossple digg.txt --log LOG -o results.csv -apne 3 --normal 0.1 --unconcerned 0.7 &
		# ./gossple digg.txt --log LOG -o results.csv -apge 3 --normal 0.1 --unconcerned 0.7 &
		# wait
		# ./gossple digg.txt --log LOG -o results.csv -apne 3 --normal 0.2 --unconcerned 0.1 &
		# ./gossple digg.txt --log LOG -o results.csv -apge 3 --normal 0.2 --unconcerned 0.1 &
		# ./gossple digg.txt --log LOG -o results.csv -apne 3 --normal 0.2 --unconcerned 0.2 &
		# ./gossple digg.txt --log LOG -o results.csv -apge 3 --normal 0.2 --unconcerned 0.2 &
		# ./gossple digg.txt --log LOG -o results.csv -apne 3 --normal 0.2 --unconcerned 0.6 &
		# ./gossple digg.txt --log LOG -o results.csv -apge 3 --normal 0.2 --unconcerned 0.6 &
		# ./gossple digg.txt --log LOG -o results.csv -apne 3 --normal 0.2 --unconcerned 0.7 &
		# ./gossple digg.txt --log LOG -o results.csv -apge 3 --normal 0.2 --unconcerned 0.7 &
		# wait
		# ./gossple digg.txt --log LOG -o results.csv -apne 3 --normal 0.6 --unconcerned 0.1 &
		# ./gossple digg.txt --log LOG -o results.csv -apge 3 --normal 0.6 --unconcerned 0.1 &
		# ./gossple digg.txt --log LOG -o results.csv -apne 3 --normal 0.6 --unconcerned 0.2 &
		# ./gossple digg.txt --log LOG -o results.csv -apge 3 --normal 0.6 --unconcerned 0.2 &
		# ./gossple digg.txt --log LOG -o results.csv -apne 3 --normal 0.6 --unconcerned 0.6 &
		# ./gossple digg.txt --log LOG -o results.csv -apge 3 --normal 0.6 --unconcerned 0.6 &
		# ./gossple digg.txt --log LOG -o results.csv -apne 3 --normal 0.6 --unconcerned 0.7 &
		# ./gossple digg.txt --log LOG -o results.csv -apge 3 --normal 0.6 --unconcerned 0.7 &
		# wait
		# ./gossple digg.txt --log LOG -o results.csv -apne 3 --normal 0.7 --unconcerned 0.1 &
		# ./gossple digg.txt --log LOG -o results.csv -apge 3 --normal 0.7 --unconcerned 0.1 &
		# ./gossple digg.txt --log LOG -o results.csv -apne 3 --normal 0.7 --unconcerned 0.2 &
		# ./gossple digg.txt --log LOG -o results.csv -apge 3 --normal 0.7 --unconcerned 0.2 &
		# ./gossple digg.txt --log LOG -o results.csv -apne 3 --normal 0.7 --unconcerned 0.6 &
		# ./gossple digg.txt --log LOG -o results.csv -apge 3 --normal 0.7 --unconcerned 0.6 &
		# ./gossple digg.txt --log LOG -o results.csv -apne 3 --normal 0.7 --unconcerned 0.7 &
		# ./gossple digg.txt --log LOG -o results.csv -apge 3 --normal 0.7 --unconcerned 0.7 &
		# wait
		# ./gossple digg.txt --log LOG -o results.csv -ape 2 -s 1 -u 0 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 2 -s 1 -u 0.5 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 2 -s 1 -u 0.9 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 2 -s 2 -u 0 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 2 -s 2 -u 0.5 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 2 -s 2 -u 0.9 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 2 -s 3 -u 0 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 2 -s 3 -u 0.5 &
		# wait
		# ./gossple digg.txt --log LOG -o results.csv -ape 2 -s 3 -u 0.9 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 2 -s 4 -u 0 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 2 -s 4 -u 0.5 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 2 -s 4 -u 0.9 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 2 -s 5 -u 0 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 2 -s 5 -u 0.5 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 2 -s 5 -u 0.9 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 2 -s 6 -u 0 &
		# wait
		# ./gossple digg.txt --log LOG -o results.csv -ape 2 -s 6 -u 0.5 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 2 -s 6 -u 0.9 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 2 -s 7 -u 0 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 2 -s 7 -u 0.5 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 2 -s 7 -u 0.9 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 2 -s 8 -u 0 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 2 -s 8 -u 0.5 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 2 -s 8 -u 0.9 &
		# wait
		# ./gossple digg.txt --log LOG -o results.csv -ape 2 -s 9 -u 0 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 2 -s 9 -u 0.5 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 2 -s 9 -u 0.9 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 2 -s 10 -u 0 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 2 -s 10 -u 0.5 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 2 -s 10 -u 0.9 &
		# ./gossple digg.txt --log LOG -o results.csv -apne 2 --normal 0.1 --unconcerned 0.1 &
		# ./gossple digg.txt --log LOG -o results.csv -apge 2 --normal 0.1 --unconcerned 0.1 &
		# wait
		# ./gossple digg.txt --log LOG -o results.csv -apne 2 --normal 0.1 --unconcerned 0.2 &
		# ./gossple digg.txt --log LOG -o results.csv -apge 2 --normal 0.1 --unconcerned 0.2 &
		# ./gossple digg.txt --log LOG -o results.csv -apne 2 --normal 0.1 --unconcerned 0.6 &
		# ./gossple digg.txt --log LOG -o results.csv -apge 2 --normal 0.1 --unconcerned 0.6 &
		# ./gossple digg.txt --log LOG -o results.csv -apne 2 --normal 0.1 --unconcerned 0.7 &
		# ./gossple digg.txt --log LOG -o results.csv -apge 2 --normal 0.1 --unconcerned 0.7 &
		# ./gossple digg.txt --log LOG -o results.csv -apne 2 --normal 0.2 --unconcerned 0.1 &
		# ./gossple digg.txt --log LOG -o results.csv -apge 2 --normal 0.2 --unconcerned 0.1 &
		# wait
		# ./gossple digg.txt --log LOG -o results.csv -apne 2 --normal 0.2 --unconcerned 0.2 &
		# ./gossple digg.txt --log LOG -o results.csv -apge 2 --normal 0.2 --unconcerned 0.2 &
		# ./gossple digg.txt --log LOG -o results.csv -apne 2 --normal 0.2 --unconcerned 0.6 &
		# ./gossple digg.txt --log LOG -o results.csv -apge 2 --normal 0.2 --unconcerned 0.6 &
		# ./gossple digg.txt --log LOG -o results.csv -apne 2 --normal 0.2 --unconcerned 0.7 &
		# ./gossple digg.txt --log LOG -o results.csv -apge 2 --normal 0.2 --unconcerned 0.7 &
		# ./gossple digg.txt --log LOG -o results.csv -apne 2 --normal 0.6 --unconcerned 0.1 &
		# ./gossple digg.txt --log LOG -o results.csv -apge 2 --normal 0.6 --unconcerned 0.1 &
		# wait
		# ./gossple digg.txt --log LOG -o results.csv -apne 2 --normal 0.6 --unconcerned 0.2 &
		# ./gossple digg.txt --log LOG -o results.csv -apge 2 --normal 0.6 --unconcerned 0.2 &
		# ./gossple digg.txt --log LOG -o results.csv -apne 2 --normal 0.6 --unconcerned 0.6 &
		# ./gossple digg.txt --log LOG -o results.csv -apge 2 --normal 0.6 --unconcerned 0.6 &
		# ./gossple digg.txt --log LOG -o results.csv -apne 2 --normal 0.6 --unconcerned 0.7 &
		# ./gossple digg.txt --log LOG -o results.csv -apge 2 --normal 0.6 --unconcerned 0.7 &
		# ./gossple digg.txt --log LOG -o results.csv -apne 2 --normal 0.7 --unconcerned 0.1 &
		# ./gossple digg.txt --log LOG -o results.csv -apge 2 --normal 0.7 --unconcerned 0.1 &
		# wait
		# ./gossple digg.txt --log LOG -o results.csv -apne 2 --normal 0.7 --unconcerned 0.2 &
		# ./gossple digg.txt --log LOG -o results.csv -apge 2 --normal 0.7 --unconcerned 0.2 &
		# ./gossple digg.txt --log LOG -o results.csv -apne 2 --normal 0.7 --unconcerned 0.6 &
		# ./gossple digg.txt --log LOG -o results.csv -apge 2 --normal 0.7 --unconcerned 0.6 &
		# ./gossple digg.txt --log LOG -o results.csv -apne 2 --normal 0.7 --unconcerned 0.7 &
		# ./gossple digg.txt --log LOG -o results.csv -apge 2 --normal 0.7 --unconcerned 0.7 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 1 -s 1 -u 0 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 1 -s 1 -u 0.5 &
		# wait
		# ./gossple digg.txt --log LOG -o results.csv -ape 1 -s 1 -u 0.9 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 1 -s 2 -u 0 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 1 -s 2 -u 0.5 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 1 -s 2 -u 0.9 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 1 -s 3 -u 0 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 1 -s 3 -u 0.5 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 1 -s 3 -u 0.9 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 1 -s 4 -u 0 &
		# wait
		# ./gossple digg.txt --log LOG -o results.csv -ape 1 -s 4 -u 0.5 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 1 -s 4 -u 0.9 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 1 -s 5 -u 0 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 1 -s 5 -u 0.5 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 1 -s 5 -u 0.9 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 1 -s 6 -u 0 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 1 -s 6 -u 0.5 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 1 -s 6 -u 0.9 &
		# wait
		# ./gossple digg.txt --log LOG -o results.csv -ape 1 -s 7 -u 0 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 1 -s 7 -u 0.5 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 1 -s 7 -u 0.9 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 1 -s 8 -u 0 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 1 -s 8 -u 0.5 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 1 -s 8 -u 0.9 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 1 -s 9 -u 0 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 1 -s 9 -u 0.5 &
		# wait
		# ./gossple digg.txt --log LOG -o results.csv -ape 1 -s 9 -u 0.9 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 1 -s 10 -u 0 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 1 -s 10 -u 0.5 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 1 -s 10 -u 0.9 &
		# ./gossple digg.txt --log LOG -o results.csv -apne 1 --normal 0.1 --unconcerned 0.1 &
		# ./gossple digg.txt --log LOG -o results.csv -apge 1 --normal 0.1 --unconcerned 0.1 &
		# ./gossple digg.txt --log LOG -o results.csv -apne 1 --normal 0.1 --unconcerned 0.2 &
		# ./gossple digg.txt --log LOG -o results.csv -apge 1 --normal 0.1 --unconcerned 0.2 &
		# wait
		# ./gossple digg.txt --log LOG -o results.csv -apne 1 --normal 0.1 --unconcerned 0.6 &
		# ./gossple digg.txt --log LOG -o results.csv -apge 1 --normal 0.1 --unconcerned 0.6 &
		# ./gossple digg.txt --log LOG -o results.csv -apne 1 --normal 0.1 --unconcerned 0.7 &
		# ./gossple digg.txt --log LOG -o results.csv -apge 1 --normal 0.1 --unconcerned 0.7 &
		# ./gossple digg.txt --log LOG -o results.csv -apne 1 --normal 0.2 --unconcerned 0.1 &
		# ./gossple digg.txt --log LOG -o results.csv -apge 1 --normal 0.2 --unconcerned 0.1 &
		# ./gossple digg.txt --log LOG -o results.csv -apne 1 --normal 0.2 --unconcerned 0.2 &
		# ./gossple digg.txt --log LOG -o results.csv -apge 1 --normal 0.2 --unconcerned 0.2 &
		# wait
		# ./gossple digg.txt --log LOG -o results.csv -apne 1 --normal 0.2 --unconcerned 0.6 &
		# ./gossple digg.txt --log LOG -o results.csv -apge 1 --normal 0.2 --unconcerned 0.6 &
		# ./gossple digg.txt --log LOG -o results.csv -apne 1 --normal 0.2 --unconcerned 0.7 &
		# ./gossple digg.txt --log LOG -o results.csv -apge 1 --normal 0.2 --unconcerned 0.7 &
		# ./gossple digg.txt --log LOG -o results.csv -apne 1 --normal 0.6 --unconcerned 0.1 &
		# ./gossple digg.txt --log LOG -o results.csv -apge 1 --normal 0.6 --unconcerned 0.1 &
		# ./gossple digg.txt --log LOG -o results.csv -apne 1 --normal 0.6 --unconcerned 0.2 &
		# ./gossple digg.txt --log LOG -o results.csv -apge 1 --normal 0.6 --unconcerned 0.2 &
		# wait
		# ./gossple digg.txt --log LOG -o results.csv -apne 1 --normal 0.6 --unconcerned 0.6 &
		# ./gossple digg.txt --log LOG -o results.csv -apge 1 --normal 0.6 --unconcerned 0.6 &
		# ./gossple digg.txt --log LOG -o results.csv -apne 1 --normal 0.6 --unconcerned 0.7 &
		# ./gossple digg.txt --log LOG -o results.csv -apge 1 --normal 0.6 --unconcerned 0.7 &
		# ./gossple digg.txt --log LOG -o results.csv -apne 1 --normal 0.7 --unconcerned 0.1 &
		# ./gossple digg.txt --log LOG -o results.csv -apge 1 --normal 0.7 --unconcerned 0.1 &
		# ./gossple digg.txt --log LOG -o results.csv -apne 1 --normal 0.7 --unconcerned 0.2 &
		# ./gossple digg.txt --log LOG -o results.csv -apge 1 --normal 0.7 --unconcerned 0.2 &
		# wait
		# ./gossple digg.txt --log LOG -o results.csv -apne 1 --normal 0.7 --unconcerned 0.6 &
		# ./gossple digg.txt --log LOG -o results.csv -apge 1 --normal 0.7 --unconcerned 0.6 &
		# ./gossple digg.txt --log LOG -o results.csv -apne 1 --normal 0.7 --unconcerned 0.7 &
		# ./gossple digg.txt --log LOG -o results.csv -apge 1 --normal 0.7 --unconcerned 0.7 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 0.5 -s 1 -u 0 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 0.5 -s 1 -u 0.5 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 0.5 -s 1 -u 0.9 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 0.5 -s 2 -u 0 &
		# wait
		# ./gossple digg.txt --log LOG -o results.csv -ape 0.5 -s 2 -u 0.5 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 0.5 -s 2 -u 0.9 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 0.5 -s 3 -u 0 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 0.5 -s 3 -u 0.5 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 0.5 -s 3 -u 0.9 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 0.5 -s 4 -u 0 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 0.5 -s 4 -u 0.5 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 0.5 -s 4 -u 0.9 &
		# wait
		# ./gossple digg.txt --log LOG -o results.csv -ape 0.5 -s 5 -u 0 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 0.5 -s 5 -u 0.5 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 0.5 -s 5 -u 0.9 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 0.5 -s 6 -u 0 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 0.5 -s 6 -u 0.5 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 0.5 -s 6 -u 0.9 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 0.5 -s 7 -u 0 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 0.5 -s 7 -u 0.5 &
		# wait
		# ./gossple digg.txt --log LOG -o results.csv -ape 0.5 -s 7 -u 0.9 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 0.5 -s 8 -u 0 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 0.5 -s 8 -u 0.5 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 0.5 -s 8 -u 0.9 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 0.5 -s 9 -u 0 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 0.5 -s 9 -u 0.5 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 0.5 -s 9 -u 0.9 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 0.5 -s 10 -u 0 &
		# wait
		# ./gossple digg.txt --log LOG -o results.csv -ape 0.5 -s 10 -u 0.5 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 0.5 -s 10 -u 0.9 &
		# ./gossple digg.txt --log LOG -o results.csv -apne 0.5 --normal 0.1 --unconcerned 0.1 &
		# ./gossple digg.txt --log LOG -o results.csv -apge 0.5 --normal 0.1 --unconcerned 0.1 &
		# ./gossple digg.txt --log LOG -o results.csv -apne 0.5 --normal 0.1 --unconcerned 0.2 &
		# ./gossple digg.txt --log LOG -o results.csv -apge 0.5 --normal 0.1 --unconcerned 0.2 &
		# ./gossple digg.txt --log LOG -o results.csv -apne 0.5 --normal 0.1 --unconcerned 0.6 &
		# ./gossple digg.txt --log LOG -o results.csv -apge 0.5 --normal 0.1 --unconcerned 0.6 &
		# wait
		# ./gossple digg.txt --log LOG -o results.csv -apne 0.5 --normal 0.1 --unconcerned 0.7 &
		# ./gossple digg.txt --log LOG -o results.csv -apge 0.5 --normal 0.1 --unconcerned 0.7 &
		# ./gossple digg.txt --log LOG -o results.csv -apne 0.5 --normal 0.2 --unconcerned 0.1 &
		# ./gossple digg.txt --log LOG -o results.csv -apge 0.5 --normal 0.2 --unconcerned 0.1 &
		# ./gossple digg.txt --log LOG -o results.csv -apne 0.5 --normal 0.2 --unconcerned 0.2 &
		# ./gossple digg.txt --log LOG -o results.csv -apge 0.5 --normal 0.2 --unconcerned 0.2 &
		# ./gossple digg.txt --log LOG -o results.csv -apne 0.5 --normal 0.2 --unconcerned 0.6 &
		# ./gossple digg.txt --log LOG -o results.csv -apge 0.5 --normal 0.2 --unconcerned 0.6 &
		# wait
		# ./gossple digg.txt --log LOG -o results.csv -apne 0.5 --normal 0.2 --unconcerned 0.7 &
		# ./gossple digg.txt --log LOG -o results.csv -apge 0.5 --normal 0.2 --unconcerned 0.7 &
		# ./gossple digg.txt --log LOG -o results.csv -apne 0.5 --normal 0.6 --unconcerned 0.1 &
		# ./gossple digg.txt --log LOG -o results.csv -apge 0.5 --normal 0.6 --unconcerned 0.1 &
		# ./gossple digg.txt --log LOG -o results.csv -apne 0.5 --normal 0.6 --unconcerned 0.2 &
		# ./gossple digg.txt --log LOG -o results.csv -apge 0.5 --normal 0.6 --unconcerned 0.2 &
		# ./gossple digg.txt --log LOG -o results.csv -apne 0.5 --normal 0.6 --unconcerned 0.6 &
		# ./gossple digg.txt --log LOG -o results.csv -apge 0.5 --normal 0.6 --unconcerned 0.6 &
		# wait
		# ./gossple digg.txt --log LOG -o results.csv -apne 0.5 --normal 0.6 --unconcerned 0.7 &
		# ./gossple digg.txt --log LOG -o results.csv -apge 0.5 --normal 0.6 --unconcerned 0.7 &
		# ./gossple digg.txt --log LOG -o results.csv -apne 0.5 --normal 0.7 --unconcerned 0.1 &
		# ./gossple digg.txt --log LOG -o results.csv -apge 0.5 --normal 0.7 --unconcerned 0.1 &
		# ./gossple digg.txt --log LOG -o results.csv -apne 0.5 --normal 0.7 --unconcerned 0.2 &
		# ./gossple digg.txt --log LOG -o results.csv -apge 0.5 --normal 0.7 --unconcerned 0.2 &
		# ./gossple digg.txt --log LOG -o results.csv -apne 0.5 --normal 0.7 --unconcerned 0.6 &
		# ./gossple digg.txt --log LOG -o results.csv -apge 0.5 --normal 0.7 --unconcerned 0.6 &
		# wait
		# ./gossple digg.txt --log LOG -o results.csv -apne 0.5 --normal 0.7 --unconcerned 0.7 &
		# ./gossple digg.txt --log LOG -o results.csv -apge 0.5 --normal 0.7 --unconcerned 0.7 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 0.1 -s 1 -u 0 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 0.1 -s 1 -u 0.5 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 0.1 -s 1 -u 0.9 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 0.1 -s 2 -u 0 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 0.1 -s 2 -u 0.5 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 0.1 -s 2 -u 0.9 &
		# wait
		# ./gossple digg.txt --log LOG -o results.csv -ape 0.1 -s 3 -u 0 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 0.1 -s 3 -u 0.5 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 0.1 -s 3 -u 0.9 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 0.1 -s 4 -u 0 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 0.1 -s 4 -u 0.5 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 0.1 -s 4 -u 0.9 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 0.1 -s 5 -u 0 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 0.1 -s 5 -u 0.5 &
		# wait
		# ./gossple digg.txt --log LOG -o results.csv -ape 0.1 -s 5 -u 0.9 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 0.1 -s 6 -u 0 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 0.1 -s 6 -u 0.5 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 0.1 -s 6 -u 0.9 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 0.1 -s 7 -u 0 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 0.1 -s 7 -u 0.5 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 0.1 -s 7 -u 0.9 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 0.1 -s 8 -u 0 &
		# wait
		# ./gossple digg.txt --log LOG -o results.csv -ape 0.1 -s 8 -u 0.5 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 0.1 -s 8 -u 0.9 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 0.1 -s 9 -u 0 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 0.1 -s 9 -u 0.5 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 0.1 -s 9 -u 0.9 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 0.1 -s 10 -u 0 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 0.1 -s 10 -u 0.5 &
		# ./gossple digg.txt --log LOG -o results.csv -ape 0.1 -s 10 -u 0.9 &
		# wait
		# ./gossple digg.txt --log LOG -o results.csv -apne 0.1 --normal 0.1 --unconcerned 0.1 &
		# ./gossple digg.txt --log LOG -o results.csv -apge 0.1 --normal 0.1 --unconcerned 0.1 &
		# ./gossple digg.txt --log LOG -o results.csv -apne 0.1 --normal 0.1 --unconcerned 0.2 &
		# ./gossple digg.txt --log LOG -o results.csv -apge 0.1 --normal 0.1 --unconcerned 0.2 &
		# ./gossple digg.txt --log LOG -o results.csv -apne 0.1 --normal 0.1 --unconcerned 0.6 &
		# ./gossple digg.txt --log LOG -o results.csv -apge 0.1 --normal 0.1 --unconcerned 0.6 &
		# ./gossple digg.txt --log LOG -o results.csv -apne 0.1 --normal 0.1 --unconcerned 0.7 &
		# ./gossple digg.txt --log LOG -o results.csv -apge 0.1 --normal 0.1 --unconcerned 0.7 &
		# wait
		# ./gossple digg.txt --log LOG -o results.csv -apne 0.1 --normal 0.2 --unconcerned 0.1 &
		# ./gossple digg.txt --log LOG -o results.csv -apge 0.1 --normal 0.2 --unconcerned 0.1 &
		# ./gossple digg.txt --log LOG -o results.csv -apne 0.1 --normal 0.2 --unconcerned 0.2 &
		# ./gossple digg.txt --log LOG -o results.csv -apge 0.1 --normal 0.2 --unconcerned 0.2 &
		# ./gossple digg.txt --log LOG -o results.csv -apne 0.1 --normal 0.2 --unconcerned 0.6 &
		# ./gossple digg.txt --log LOG -o results.csv -apge 0.1 --normal 0.2 --unconcerned 0.6 &
		# ./gossple digg.txt --log LOG -o results.csv -apne 0.1 --normal 0.2 --unconcerned 0.7 &
		# ./gossple digg.txt --log LOG -o results.csv -apge 0.1 --normal 0.2 --unconcerned 0.7 &
		# wait
		# ./gossple digg.txt --log LOG -o results.csv -apne 0.1 --normal 0.6 --unconcerned 0.1 &
		# ./gossple digg.txt --log LOG -o results.csv -apge 0.1 --normal 0.6 --unconcerned 0.1 &
		# ./gossple digg.txt --log LOG -o results.csv -apne 0.1 --normal 0.6 --unconcerned 0.2 &
		# ./gossple digg.txt --log LOG -o results.csv -apge 0.1 --normal 0.6 --unconcerned 0.2 &
		# ./gossple digg.txt --log LOG -o results.csv -apne 0.1 --normal 0.6 --unconcerned 0.6 &
		# ./gossple digg.txt --log LOG -o results.csv -apge 0.1 --normal 0.6 --unconcerned 0.6 &
		# ./gossple digg.txt --log LOG -o results.csv -apne 0.1 --normal 0.6 --unconcerned 0.7 &
		# ./gossple digg.txt --log LOG -o results.csv -apge 0.1 --normal 0.6 --unconcerned 0.7 &
		# wait
		# ./gossple digg.txt --log LOG -o results.csv -apne 0.1 --normal 0.7 --unconcerned 0.1 &
		# ./gossple digg.txt --log LOG -o results.csv -apge 0.1 --normal 0.7 --unconcerned 0.1 &
		# ./gossple digg.txt --log LOG -o results.csv -apne 0.1 --normal 0.7 --unconcerned 0.2 &
		# ./gossple digg.txt --log LOG -o results.csv -apge 0.1 --normal 0.7 --unconcerned 0.2 &
		# ./gossple digg.txt --log LOG -o results.csv -apne 0.1 --normal 0.7 --unconcerned 0.6 &
		# ./gossple digg.txt --log LOG -o results.csv -apge 0.1 --normal 0.7 --unconcerned 0.6 &
		# ./gossple digg.txt --log LOG -o results.csv -apne 0.1 --normal 0.7 --unconcerned 0.7 &
		# ./gossple digg.txt --log LOG -o results.csv -apge 0.1 --normal 0.7 --unconcerned 0.7 &
		# wait
		# ./gossple delicious.txt --log LOG -o results.csv -a &
		# ./gossple delicious.txt --log LOG -o results.csv -apb &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 3 -s 1 -u 0 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 3 -s 1 -u 0.5 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 3 -s 1 -u 0.9 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 3 -s 2 -u 0 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 3 -s 2 -u 0.5 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 3 -s 2 -u 0.9 &
		# wait
		# ./gossple delicious.txt --log LOG -o results.csv -ape 3 -s 3 -u 0 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 3 -s 3 -u 0.5 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 3 -s 3 -u 0.9 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 3 -s 4 -u 0 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 3 -s 4 -u 0.5 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 3 -s 4 -u 0.9 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 3 -s 5 -u 0 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 3 -s 5 -u 0.5 &
		# wait
		# ./gossple delicious.txt --log LOG -o results.csv -ape 3 -s 5 -u 0.9 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 3 -s 6 -u 0 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 3 -s 6 -u 0.5 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 3 -s 6 -u 0.9 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 3 -s 7 -u 0 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 3 -s 7 -u 0.5 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 3 -s 7 -u 0.9 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 3 -s 8 -u 0 &
		# wait
		# ./gossple delicious.txt --log LOG -o results.csv -ape 3 -s 8 -u 0.5 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 3 -s 8 -u 0.9 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 3 -s 9 -u 0 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 3 -s 9 -u 0.5 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 3 -s 9 -u 0.9 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 3 -s 10 -u 0 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 3 -s 10 -u 0.5 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 3 -s 10 -u 0.9 &
		# wait
		# ./gossple delicious.txt --log LOG -o results.csv -apne 3 --normal 0.1 --unconcerned 0.1 &
		# ./gossple delicious.txt --log LOG -o results.csv -apge 3 --normal 0.1 --unconcerned 0.1 &
		# ./gossple delicious.txt --log LOG -o results.csv -apne 3 --normal 0.1 --unconcerned 0.2 &
		# ./gossple delicious.txt --log LOG -o results.csv -apge 3 --normal 0.1 --unconcerned 0.2 &
		# ./gossple delicious.txt --log LOG -o results.csv -apne 3 --normal 0.1 --unconcerned 0.6 &
		# ./gossple delicious.txt --log LOG -o results.csv -apge 3 --normal 0.1 --unconcerned 0.6 &
		# ./gossple delicious.txt --log LOG -o results.csv -apne 3 --normal 0.1 --unconcerned 0.7 &
		# ./gossple delicious.txt --log LOG -o results.csv -apge 3 --normal 0.1 --unconcerned 0.7 &
		# wait
		# ./gossple delicious.txt --log LOG -o results.csv -apne 3 --normal 0.2 --unconcerned 0.1 &
		# ./gossple delicious.txt --log LOG -o results.csv -apge 3 --normal 0.2 --unconcerned 0.1 &
		# ./gossple delicious.txt --log LOG -o results.csv -apne 3 --normal 0.2 --unconcerned 0.2 &
		# ./gossple delicious.txt --log LOG -o results.csv -apge 3 --normal 0.2 --unconcerned 0.2 &
		# ./gossple delicious.txt --log LOG -o results.csv -apne 3 --normal 0.2 --unconcerned 0.6 &
		# ./gossple delicious.txt --log LOG -o results.csv -apge 3 --normal 0.2 --unconcerned 0.6 &
		# ./gossple delicious.txt --log LOG -o results.csv -apne 3 --normal 0.2 --unconcerned 0.7 &
		# ./gossple delicious.txt --log LOG -o results.csv -apge 3 --normal 0.2 --unconcerned 0.7 &
		# wait
		# ./gossple delicious.txt --log LOG -o results.csv -apne 3 --normal 0.6 --unconcerned 0.1 &
		# ./gossple delicious.txt --log LOG -o results.csv -apge 3 --normal 0.6 --unconcerned 0.1 &
		# ./gossple delicious.txt --log LOG -o results.csv -apne 3 --normal 0.6 --unconcerned 0.2 &
		# ./gossple delicious.txt --log LOG -o results.csv -apge 3 --normal 0.6 --unconcerned 0.2 &
		# ./gossple delicious.txt --log LOG -o results.csv -apne 3 --normal 0.6 --unconcerned 0.6 &
		# ./gossple delicious.txt --log LOG -o results.csv -apge 3 --normal 0.6 --unconcerned 0.6 &
		# ./gossple delicious.txt --log LOG -o results.csv -apne 3 --normal 0.6 --unconcerned 0.7 &
		# ./gossple delicious.txt --log LOG -o results.csv -apge 3 --normal 0.6 --unconcerned 0.7 &
		# wait
		# ./gossple delicious.txt --log LOG -o results.csv -apne 3 --normal 0.7 --unconcerned 0.1 &
		# ./gossple delicious.txt --log LOG -o results.csv -apge 3 --normal 0.7 --unconcerned 0.1 &
		# ./gossple delicious.txt --log LOG -o results.csv -apne 3 --normal 0.7 --unconcerned 0.2 &
		# ./gossple delicious.txt --log LOG -o results.csv -apge 3 --normal 0.7 --unconcerned 0.2 &
		# ./gossple delicious.txt --log LOG -o results.csv -apne 3 --normal 0.7 --unconcerned 0.6 &
		# ./gossple delicious.txt --log LOG -o results.csv -apge 3 --normal 0.7 --unconcerned 0.6 &
		# ./gossple delicious.txt --log LOG -o results.csv -apne 3 --normal 0.7 --unconcerned 0.7 &
		# ./gossple delicious.txt --log LOG -o results.csv -apge 3 --normal 0.7 --unconcerned 0.7 &
		# wait
		# ./gossple delicious.txt --log LOG -o results.csv -ape 2 -s 1 -u 0 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 2 -s 1 -u 0.5 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 2 -s 1 -u 0.9 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 2 -s 2 -u 0 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 2 -s 2 -u 0.5 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 2 -s 2 -u 0.9 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 2 -s 3 -u 0 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 2 -s 3 -u 0.5 &
		# wait
		# ./gossple delicious.txt --log LOG -o results.csv -ape 2 -s 3 -u 0.9 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 2 -s 4 -u 0 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 2 -s 4 -u 0.5 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 2 -s 4 -u 0.9 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 2 -s 5 -u 0 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 2 -s 5 -u 0.5 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 2 -s 5 -u 0.9 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 2 -s 6 -u 0 &
		# wait
		# ./gossple delicious.txt --log LOG -o results.csv -ape 2 -s 6 -u 0.5 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 2 -s 6 -u 0.9 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 2 -s 7 -u 0 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 2 -s 7 -u 0.5 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 2 -s 7 -u 0.9 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 2 -s 8 -u 0 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 2 -s 8 -u 0.5 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 2 -s 8 -u 0.9 &
		# wait
		# ./gossple delicious.txt --log LOG -o results.csv -ape 2 -s 9 -u 0 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 2 -s 9 -u 0.5 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 2 -s 9 -u 0.9 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 2 -s 10 -u 0 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 2 -s 10 -u 0.5 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 2 -s 10 -u 0.9 &
		# ./gossple delicious.txt --log LOG -o results.csv -apne 2 --normal 0.1 --unconcerned 0.1 &
		# ./gossple delicious.txt --log LOG -o results.csv -apge 2 --normal 0.1 --unconcerned 0.1 &
		# wait
		# ./gossple delicious.txt --log LOG -o results.csv -apne 2 --normal 0.1 --unconcerned 0.2 &
		# ./gossple delicious.txt --log LOG -o results.csv -apge 2 --normal 0.1 --unconcerned 0.2 &
		# ./gossple delicious.txt --log LOG -o results.csv -apne 2 --normal 0.1 --unconcerned 0.6 &
		# ./gossple delicious.txt --log LOG -o results.csv -apge 2 --normal 0.1 --unconcerned 0.6 &
		# ./gossple delicious.txt --log LOG -o results.csv -apne 2 --normal 0.1 --unconcerned 0.7 &
		# ./gossple delicious.txt --log LOG -o results.csv -apge 2 --normal 0.1 --unconcerned 0.7 &
		# ./gossple delicious.txt --log LOG -o results.csv -apne 2 --normal 0.2 --unconcerned 0.1 &
		# ./gossple delicious.txt --log LOG -o results.csv -apge 2 --normal 0.2 --unconcerned 0.1 &
		# wait
		# ./gossple delicious.txt --log LOG -o results.csv -apne 2 --normal 0.2 --unconcerned 0.2 &
		# ./gossple delicious.txt --log LOG -o results.csv -apge 2 --normal 0.2 --unconcerned 0.2 &
		# ./gossple delicious.txt --log LOG -o results.csv -apne 2 --normal 0.2 --unconcerned 0.6 &
		# ./gossple delicious.txt --log LOG -o results.csv -apge 2 --normal 0.2 --unconcerned 0.6 &
		# ./gossple delicious.txt --log LOG -o results.csv -apne 2 --normal 0.2 --unconcerned 0.7 &
		# ./gossple delicious.txt --log LOG -o results.csv -apge 2 --normal 0.2 --unconcerned 0.7 &
		# ./gossple delicious.txt --log LOG -o results.csv -apne 2 --normal 0.6 --unconcerned 0.1 &
		# ./gossple delicious.txt --log LOG -o results.csv -apge 2 --normal 0.6 --unconcerned 0.1 &
		# wait
		# ./gossple delicious.txt --log LOG -o results.csv -apne 2 --normal 0.6 --unconcerned 0.2 &
		# ./gossple delicious.txt --log LOG -o results.csv -apge 2 --normal 0.6 --unconcerned 0.2 &
		# ./gossple delicious.txt --log LOG -o results.csv -apne 2 --normal 0.6 --unconcerned 0.6 &
		# ./gossple delicious.txt --log LOG -o results.csv -apge 2 --normal 0.6 --unconcerned 0.6 &
		# ./gossple delicious.txt --log LOG -o results.csv -apne 2 --normal 0.6 --unconcerned 0.7 &
		# ./gossple delicious.txt --log LOG -o results.csv -apge 2 --normal 0.6 --unconcerned 0.7 &
		# ./gossple delicious.txt --log LOG -o results.csv -apne 2 --normal 0.7 --unconcerned 0.1 &
		# ./gossple delicious.txt --log LOG -o results.csv -apge 2 --normal 0.7 --unconcerned 0.1 &
		# wait
		# ./gossple delicious.txt --log LOG -o results.csv -apne 2 --normal 0.7 --unconcerned 0.2 &
		# ./gossple delicious.txt --log LOG -o results.csv -apge 2 --normal 0.7 --unconcerned 0.2 &
		# ./gossple delicious.txt --log LOG -o results.csv -apne 2 --normal 0.7 --unconcerned 0.6 &
		# ./gossple delicious.txt --log LOG -o results.csv -apge 2 --normal 0.7 --unconcerned 0.6 &
		# ./gossple delicious.txt --log LOG -o results.csv -apne 2 --normal 0.7 --unconcerned 0.7 &
		# ./gossple delicious.txt --log LOG -o results.csv -apge 2 --normal 0.7 --unconcerned 0.7 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 1 -s 1 -u 0 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 1 -s 1 -u 0.5 &
		# wait
		# ./gossple delicious.txt --log LOG -o results.csv -ape 1 -s 1 -u 0.9 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 1 -s 2 -u 0 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 1 -s 2 -u 0.5 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 1 -s 2 -u 0.9 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 1 -s 3 -u 0 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 1 -s 3 -u 0.5 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 1 -s 3 -u 0.9 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 1 -s 4 -u 0 &
		# wait
		# ./gossple delicious.txt --log LOG -o results.csv -ape 1 -s 4 -u 0.5 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 1 -s 4 -u 0.9 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 1 -s 5 -u 0 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 1 -s 5 -u 0.5 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 1 -s 5 -u 0.9 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 1 -s 6 -u 0 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 1 -s 6 -u 0.5 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 1 -s 6 -u 0.9 &
		# wait
		# ./gossple delicious.txt --log LOG -o results.csv -ape 1 -s 7 -u 0 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 1 -s 7 -u 0.5 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 1 -s 7 -u 0.9 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 1 -s 8 -u 0 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 1 -s 8 -u 0.5 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 1 -s 8 -u 0.9 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 1 -s 9 -u 0 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 1 -s 9 -u 0.5 &
		# wait
		# ./gossple delicious.txt --log LOG -o results.csv -ape 1 -s 9 -u 0.9 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 1 -s 10 -u 0 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 1 -s 10 -u 0.5 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 1 -s 10 -u 0.9 &
		# ./gossple delicious.txt --log LOG -o results.csv -apne 1 --normal 0.1 --unconcerned 0.1 &
		# ./gossple delicious.txt --log LOG -o results.csv -apge 1 --normal 0.1 --unconcerned 0.1 &
		# ./gossple delicious.txt --log LOG -o results.csv -apne 1 --normal 0.1 --unconcerned 0.2 &
		# ./gossple delicious.txt --log LOG -o results.csv -apge 1 --normal 0.1 --unconcerned 0.2 &
		# wait
		# ./gossple delicious.txt --log LOG -o results.csv -apne 1 --normal 0.1 --unconcerned 0.6 &
		# ./gossple delicious.txt --log LOG -o results.csv -apge 1 --normal 0.1 --unconcerned 0.6 &
		# ./gossple delicious.txt --log LOG -o results.csv -apne 1 --normal 0.1 --unconcerned 0.7 &
		# ./gossple delicious.txt --log LOG -o results.csv -apge 1 --normal 0.1 --unconcerned 0.7 &
		# ./gossple delicious.txt --log LOG -o results.csv -apne 1 --normal 0.2 --unconcerned 0.1 &
		# ./gossple delicious.txt --log LOG -o results.csv -apge 1 --normal 0.2 --unconcerned 0.1 &
		# ./gossple delicious.txt --log LOG -o results.csv -apne 1 --normal 0.2 --unconcerned 0.2 &
		# ./gossple delicious.txt --log LOG -o results.csv -apge 1 --normal 0.2 --unconcerned 0.2 &
		# wait
		# ./gossple delicious.txt --log LOG -o results.csv -apne 1 --normal 0.2 --unconcerned 0.6 &
		# ./gossple delicious.txt --log LOG -o results.csv -apge 1 --normal 0.2 --unconcerned 0.6 &
		# ./gossple delicious.txt --log LOG -o results.csv -apne 1 --normal 0.2 --unconcerned 0.7 &
		# ./gossple delicious.txt --log LOG -o results.csv -apge 1 --normal 0.2 --unconcerned 0.7 &
		# ./gossple delicious.txt --log LOG -o results.csv -apne 1 --normal 0.6 --unconcerned 0.1 &
		# ./gossple delicious.txt --log LOG -o results.csv -apge 1 --normal 0.6 --unconcerned 0.1 &
		# ./gossple delicious.txt --log LOG -o results.csv -apne 1 --normal 0.6 --unconcerned 0.2 &
		# ./gossple delicious.txt --log LOG -o results.csv -apge 1 --normal 0.6 --unconcerned 0.2 &
		# wait
		# ./gossple delicious.txt --log LOG -o results.csv -apne 1 --normal 0.6 --unconcerned 0.6 &
		# ./gossple delicious.txt --log LOG -o results.csv -apge 1 --normal 0.6 --unconcerned 0.6 &
		# ./gossple delicious.txt --log LOG -o results.csv -apne 1 --normal 0.6 --unconcerned 0.7 &
		# ./gossple delicious.txt --log LOG -o results.csv -apge 1 --normal 0.6 --unconcerned 0.7 &
		# ./gossple delicious.txt --log LOG -o results.csv -apne 1 --normal 0.7 --unconcerned 0.1 &
		# ./gossple delicious.txt --log LOG -o results.csv -apge 1 --normal 0.7 --unconcerned 0.1 &
		# ./gossple delicious.txt --log LOG -o results.csv -apne 1 --normal 0.7 --unconcerned 0.2 &
		# ./gossple delicious.txt --log LOG -o results.csv -apge 1 --normal 0.7 --unconcerned 0.2 &
		# wait
		# ./gossple delicious.txt --log LOG -o results.csv -apne 1 --normal 0.7 --unconcerned 0.6 &
		# ./gossple delicious.txt --log LOG -o results.csv -apge 1 --normal 0.7 --unconcerned 0.6 &
		# ./gossple delicious.txt --log LOG -o results.csv -apne 1 --normal 0.7 --unconcerned 0.7 &
		# ./gossple delicious.txt --log LOG -o results.csv -apge 1 --normal 0.7 --unconcerned 0.7 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 0.5 -s 1 -u 0 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 0.5 -s 1 -u 0.5 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 0.5 -s 1 -u 0.9 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 0.5 -s 2 -u 0 &
		# wait
		# ./gossple delicious.txt --log LOG -o results.csv -ape 0.5 -s 2 -u 0.5 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 0.5 -s 2 -u 0.9 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 0.5 -s 3 -u 0 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 0.5 -s 3 -u 0.5 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 0.5 -s 3 -u 0.9 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 0.5 -s 4 -u 0 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 0.5 -s 4 -u 0.5 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 0.5 -s 4 -u 0.9 &
		# wait
		# ./gossple delicious.txt --log LOG -o results.csv -ape 0.5 -s 5 -u 0 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 0.5 -s 5 -u 0.5 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 0.5 -s 5 -u 0.9 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 0.5 -s 6 -u 0 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 0.5 -s 6 -u 0.5 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 0.5 -s 6 -u 0.9 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 0.5 -s 7 -u 0 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 0.5 -s 7 -u 0.5 &
		# wait
		# ./gossple delicious.txt --log LOG -o results.csv -ape 0.5 -s 7 -u 0.9 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 0.5 -s 8 -u 0 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 0.5 -s 8 -u 0.5 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 0.5 -s 8 -u 0.9 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 0.5 -s 9 -u 0 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 0.5 -s 9 -u 0.5 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 0.5 -s 9 -u 0.9 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 0.5 -s 10 -u 0 &
		# wait
		# ./gossple delicious.txt --log LOG -o results.csv -ape 0.5 -s 10 -u 0.5 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 0.5 -s 10 -u 0.9 &
		# ./gossple delicious.txt --log LOG -o results.csv -apne 0.5 --normal 0.1 --unconcerned 0.1 &
		# ./gossple delicious.txt --log LOG -o results.csv -apge 0.5 --normal 0.1 --unconcerned 0.1 &
		# ./gossple delicious.txt --log LOG -o results.csv -apne 0.5 --normal 0.1 --unconcerned 0.2 &
		# ./gossple delicious.txt --log LOG -o results.csv -apge 0.5 --normal 0.1 --unconcerned 0.2 &
		# ./gossple delicious.txt --log LOG -o results.csv -apne 0.5 --normal 0.1 --unconcerned 0.6 &
		# ./gossple delicious.txt --log LOG -o results.csv -apge 0.5 --normal 0.1 --unconcerned 0.6 &
		# wait
		# ./gossple delicious.txt --log LOG -o results.csv -apne 0.5 --normal 0.1 --unconcerned 0.7 &
		# ./gossple delicious.txt --log LOG -o results.csv -apge 0.5 --normal 0.1 --unconcerned 0.7 &
		# ./gossple delicious.txt --log LOG -o results.csv -apne 0.5 --normal 0.2 --unconcerned 0.1 &
		# ./gossple delicious.txt --log LOG -o results.csv -apge 0.5 --normal 0.2 --unconcerned 0.1 &
		# ./gossple delicious.txt --log LOG -o results.csv -apne 0.5 --normal 0.2 --unconcerned 0.2 &
		# ./gossple delicious.txt --log LOG -o results.csv -apge 0.5 --normal 0.2 --unconcerned 0.2 &
		# ./gossple delicious.txt --log LOG -o results.csv -apne 0.5 --normal 0.2 --unconcerned 0.6 &
		# ./gossple delicious.txt --log LOG -o results.csv -apge 0.5 --normal 0.2 --unconcerned 0.6 &
		# wait
		# ./gossple delicious.txt --log LOG -o results.csv -apne 0.5 --normal 0.2 --unconcerned 0.7 &
		# ./gossple delicious.txt --log LOG -o results.csv -apge 0.5 --normal 0.2 --unconcerned 0.7 &
		# ./gossple delicious.txt --log LOG -o results.csv -apne 0.5 --normal 0.6 --unconcerned 0.1 &
		# ./gossple delicious.txt --log LOG -o results.csv -apge 0.5 --normal 0.6 --unconcerned 0.1 &
		# ./gossple delicious.txt --log LOG -o results.csv -apne 0.5 --normal 0.6 --unconcerned 0.2 &
		# ./gossple delicious.txt --log LOG -o results.csv -apge 0.5 --normal 0.6 --unconcerned 0.2 &
		# ./gossple delicious.txt --log LOG -o results.csv -apne 0.5 --normal 0.6 --unconcerned 0.6 &
		# ./gossple delicious.txt --log LOG -o results.csv -apge 0.5 --normal 0.6 --unconcerned 0.6 &
		# wait
		# ./gossple delicious.txt --log LOG -o results.csv -apne 0.5 --normal 0.6 --unconcerned 0.7 &
		# ./gossple delicious.txt --log LOG -o results.csv -apge 0.5 --normal 0.6 --unconcerned 0.7 &
		# ./gossple delicious.txt --log LOG -o results.csv -apne 0.5 --normal 0.7 --unconcerned 0.1 &
		# ./gossple delicious.txt --log LOG -o results.csv -apge 0.5 --normal 0.7 --unconcerned 0.1 &
		# ./gossple delicious.txt --log LOG -o results.csv -apne 0.5 --normal 0.7 --unconcerned 0.2 &
		# ./gossple delicious.txt --log LOG -o results.csv -apge 0.5 --normal 0.7 --unconcerned 0.2 &
		# ./gossple delicious.txt --log LOG -o results.csv -apne 0.5 --normal 0.7 --unconcerned 0.6 &
		# ./gossple delicious.txt --log LOG -o results.csv -apge 0.5 --normal 0.7 --unconcerned 0.6 &
		# wait
		# ./gossple delicious.txt --log LOG -o results.csv -apne 0.5 --normal 0.7 --unconcerned 0.7 &
		# ./gossple delicious.txt --log LOG -o results.csv -apge 0.5 --normal 0.7 --unconcerned 0.7 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 0.1 -s 1 -u 0 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 0.1 -s 1 -u 0.5 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 0.1 -s 1 -u 0.9 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 0.1 -s 2 -u 0 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 0.1 -s 2 -u 0.5 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 0.1 -s 2 -u 0.9 &
		# wait
		# ./gossple delicious.txt --log LOG -o results.csv -ape 0.1 -s 3 -u 0 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 0.1 -s 3 -u 0.5 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 0.1 -s 3 -u 0.9 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 0.1 -s 4 -u 0 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 0.1 -s 4 -u 0.5 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 0.1 -s 4 -u 0.9 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 0.1 -s 5 -u 0 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 0.1 -s 5 -u 0.5 &
		# wait
		# ./gossple delicious.txt --log LOG -o results.csv -ape 0.1 -s 5 -u 0.9 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 0.1 -s 6 -u 0 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 0.1 -s 6 -u 0.5 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 0.1 -s 6 -u 0.9 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 0.1 -s 7 -u 0 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 0.1 -s 7 -u 0.5 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 0.1 -s 7 -u 0.9 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 0.1 -s 8 -u 0 &
		# wait
		# ./gossple delicious.txt --log LOG -o results.csv -ape 0.1 -s 8 -u 0.5 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 0.1 -s 8 -u 0.9 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 0.1 -s 9 -u 0 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 0.1 -s 9 -u 0.5 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 0.1 -s 9 -u 0.9 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 0.1 -s 10 -u 0 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 0.1 -s 10 -u 0.5 &
		# ./gossple delicious.txt --log LOG -o results.csv -ape 0.1 -s 10 -u 0.9 &
		# wait
		# ./gossple delicious.txt --log LOG -o results.csv -apne 0.1 --normal 0.1 --unconcerned 0.1 &
		# ./gossple delicious.txt --log LOG -o results.csv -apge 0.1 --normal 0.1 --unconcerned 0.1 &
		# ./gossple delicious.txt --log LOG -o results.csv -apne 0.1 --normal 0.1 --unconcerned 0.2 &
		# ./gossple delicious.txt --log LOG -o results.csv -apge 0.1 --normal 0.1 --unconcerned 0.2 &
		# ./gossple delicious.txt --log LOG -o results.csv -apne 0.1 --normal 0.1 --unconcerned 0.6 &
		# ./gossple delicious.txt --log LOG -o results.csv -apge 0.1 --normal 0.1 --unconcerned 0.6 &
		# ./gossple delicious.txt --log LOG -o results.csv -apne 0.1 --normal 0.1 --unconcerned 0.7 &
		# ./gossple delicious.txt --log LOG -o results.csv -apge 0.1 --normal 0.1 --unconcerned 0.7 &
		# wait
		# ./gossple delicious.txt --log LOG -o results.csv -apne 0.1 --normal 0.2 --unconcerned 0.1 &
		# ./gossple delicious.txt --log LOG -o results.csv -apge 0.1 --normal 0.2 --unconcerned 0.1 &
		# ./gossple delicious.txt --log LOG -o results.csv -apne 0.1 --normal 0.2 --unconcerned 0.2 &
		# ./gossple delicious.txt --log LOG -o results.csv -apge 0.1 --normal 0.2 --unconcerned 0.2 &
		# ./gossple delicious.txt --log LOG -o results.csv -apne 0.1 --normal 0.2 --unconcerned 0.6 &
		# ./gossple delicious.txt --log LOG -o results.csv -apge 0.1 --normal 0.2 --unconcerned 0.6 &
		# ./gossple delicious.txt --log LOG -o results.csv -apne 0.1 --normal 0.2 --unconcerned 0.7 &
		# ./gossple delicious.txt --log LOG -o results.csv -apge 0.1 --normal 0.2 --unconcerned 0.7 &
		# wait
		# ./gossple delicious.txt --log LOG -o results.csv -apne 0.1 --normal 0.6 --unconcerned 0.1 &
		# ./gossple delicious.txt --log LOG -o results.csv -apge 0.1 --normal 0.6 --unconcerned 0.1 &
		# ./gossple delicious.txt --log LOG -o results.csv -apne 0.1 --normal 0.6 --unconcerned 0.2 &
		# ./gossple delicious.txt --log LOG -o results.csv -apge 0.1 --normal 0.6 --unconcerned 0.2 &
		# ./gossple delicious.txt --log LOG -o results.csv -apne 0.1 --normal 0.6 --unconcerned 0.6 &
		# ./gossple delicious.txt --log LOG -o results.csv -apge 0.1 --normal 0.6 --unconcerned 0.6 &
		# ./gossple delicious.txt --log LOG -o results.csv -apne 0.1 --normal 0.6 --unconcerned 0.7 &
		# ./gossple delicious.txt --log LOG -o results.csv -apge 0.1 --normal 0.6 --unconcerned 0.7 &
		# wait
		# ./gossple delicious.txt --log LOG -o results.csv -apne 0.1 --normal 0.7 --unconcerned 0.1 &
		# ./gossple delicious.txt --log LOG -o results.csv -apge 0.1 --normal 0.7 --unconcerned 0.1 &
		# ./gossple delicious.txt --log LOG -o results.csv -apne 0.1 --normal 0.7 --unconcerned 0.2 &
		# ./gossple delicious.txt --log LOG -o results.csv -apge 0.1 --normal 0.7 --unconcerned 0.2 &
		# ./gossple delicious.txt --log LOG -o results.csv -apne 0.1 --normal 0.7 --unconcerned 0.6 &
		# ./gossple delicious.txt --log LOG -o results.csv -apge 0.1 --normal 0.7 --unconcerned 0.6 &
		# ./gossple delicious.txt --log LOG -o results.csv -apne 0.1 --normal 0.7 --unconcerned 0.7 &
		# ./gossple delicious.txt --log LOG -o results.csv -apge 0.1 --normal 0.7 --unconcerned 0.7 &
		# wait
		./gossple survey.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.1 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.1 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.1 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.1 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.1 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.1 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.1 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.1 --unconcerned 0.2 &
		wait
		./gossple survey.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.1 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.1 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.1 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.1 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.1 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.1 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.1 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.1 --unconcerned 0.7 &
		wait
		./gossple survey.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.1 --unconcerned 0.7 &
		./gossple survey.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.1 --unconcerned 0.7 &
		./gossple survey.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.1 --unconcerned 0.7 &
		./gossple survey.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.1 --unconcerned 0.7 &
		./gossple survey.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.2 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.2 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.2 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.2 --unconcerned 0.1 &
		wait
		./gossple survey.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.2 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.2 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.2 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.2 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.2 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.2 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.2 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.2 --unconcerned 0.6 &
		wait
		./gossple survey.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.2 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.2 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.2 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.2 --unconcerned 0.7 &
		./gossple survey.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.2 --unconcerned 0.7 &
		./gossple survey.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.2 --unconcerned 0.7 &
		./gossple survey.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.2 --unconcerned 0.7 &
		./gossple survey.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.2 --unconcerned 0.7 &
		wait
		./gossple survey.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.6 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.6 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.6 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.6 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.6 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.6 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.6 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.6 --unconcerned 0.2 &
		wait
		./gossple survey.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.6 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.6 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.6 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.6 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.6 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.6 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.6 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.6 --unconcerned 0.7 &
		wait
		./gossple survey.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.6 --unconcerned 0.7 &
		./gossple survey.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.6 --unconcerned 0.7 &
		./gossple survey.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.6 --unconcerned 0.7 &
		./gossple survey.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.6 --unconcerned 0.7 &
		./gossple survey.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.7 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.7 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.7 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.7 --unconcerned 0.1 &
		wait
		./gossple survey.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.7 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.7 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.7 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.7 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.7 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.7 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.7 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.7 --unconcerned 0.6 &
		wait
		./gossple survey.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.7 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.7 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.7 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.7 --unconcerned 0.7 &
		./gossple survey.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.7 --unconcerned 0.7 &
		./gossple survey.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.7 --unconcerned 0.7 &
		./gossple survey.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.7 --unconcerned 0.7 &
		./gossple survey.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.7 --unconcerned 0.7 &
		wait
		./gossple survey.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.1 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.1 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.1 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.1 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.1 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.1 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.1 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.1 --unconcerned 0.2 &
		wait
		./gossple survey.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.1 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.1 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.1 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.1 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.1 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.1 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.1 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.1 --unconcerned 0.7 &
		wait
		./gossple survey.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.1 --unconcerned 0.7 &
		./gossple survey.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.1 --unconcerned 0.7 &
		./gossple survey.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.1 --unconcerned 0.7 &
		./gossple survey.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.1 --unconcerned 0.7 &
		./gossple survey.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.2 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.2 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.2 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.2 --unconcerned 0.1 &
		wait
		./gossple survey.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.2 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.2 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.2 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.2 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.2 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.2 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.2 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.2 --unconcerned 0.6 &
		wait
		./gossple survey.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.2 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.2 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.2 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.2 --unconcerned 0.7 &
		./gossple survey.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.2 --unconcerned 0.7 &
		./gossple survey.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.2 --unconcerned 0.7 &
		./gossple survey.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.2 --unconcerned 0.7 &
		./gossple survey.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.2 --unconcerned 0.7 &
		wait
		./gossple survey.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.6 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.6 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.6 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.6 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.6 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.6 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.6 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.6 --unconcerned 0.2 &
		wait
		./gossple survey.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.6 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.6 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.6 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.6 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.6 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.6 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.6 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.6 --unconcerned 0.7 &
		wait
		./gossple survey.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.6 --unconcerned 0.7 &
		./gossple survey.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.6 --unconcerned 0.7 &
		./gossple survey.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.6 --unconcerned 0.7 &
		./gossple survey.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.6 --unconcerned 0.7 &
		./gossple survey.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.7 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.7 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.7 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.7 --unconcerned 0.1 &
		wait
		./gossple survey.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.7 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.7 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.7 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.7 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.7 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.7 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.7 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.7 --unconcerned 0.6 &
		wait
		./gossple survey.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.7 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.7 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.7 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.7 --unconcerned 0.7 &
		./gossple survey.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.7 --unconcerned 0.7 &
		./gossple survey.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.7 --unconcerned 0.7 &
		./gossple survey.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.7 --unconcerned 0.7 &
		./gossple survey.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.7 --unconcerned 0.7 &
		wait
		./gossple survey.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.1 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.1 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.1 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.1 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.1 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.1 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.1 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.1 --unconcerned 0.2 &
		wait
		./gossple survey.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.1 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.1 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.1 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.1 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.1 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.1 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.1 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.1 --unconcerned 0.7 &
		wait
		./gossple survey.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.1 --unconcerned 0.7 &
		./gossple survey.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.1 --unconcerned 0.7 &
		./gossple survey.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.1 --unconcerned 0.7 &
		./gossple survey.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.1 --unconcerned 0.7 &
		./gossple survey.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.2 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.2 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.2 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.2 --unconcerned 0.1 &
		wait
		./gossple survey.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.2 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.2 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.2 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.2 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.2 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.2 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.2 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.2 --unconcerned 0.6 &
		wait
		./gossple survey.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.2 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.2 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.2 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.2 --unconcerned 0.7 &
		./gossple survey.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.2 --unconcerned 0.7 &
		./gossple survey.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.2 --unconcerned 0.7 &
		./gossple survey.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.2 --unconcerned 0.7 &
		./gossple survey.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.2 --unconcerned 0.7 &
		wait
		./gossple survey.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.6 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.6 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.6 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.6 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.6 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.6 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.6 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.6 --unconcerned 0.2 &
		wait
		./gossple survey.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.6 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.6 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.6 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.6 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.6 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.6 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.6 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.6 --unconcerned 0.7 &
		wait
		./gossple survey.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.6 --unconcerned 0.7 &
		./gossple survey.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.6 --unconcerned 0.7 &
		./gossple survey.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.6 --unconcerned 0.7 &
		./gossple survey.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.6 --unconcerned 0.7 &
		./gossple survey.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.7 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.7 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.7 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.7 --unconcerned 0.1 &
		wait
		./gossple survey.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.7 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.7 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.7 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.7 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.7 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.7 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.7 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.7 --unconcerned 0.6 &
		wait
		./gossple survey.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.7 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.7 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.7 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.7 --unconcerned 0.7 &
		./gossple survey.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.7 --unconcerned 0.7 &
		./gossple survey.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.7 --unconcerned 0.7 &
		./gossple survey.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.7 --unconcerned 0.7 &
		./gossple survey.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.7 --unconcerned 0.7 &
		wait
		./gossple survey.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.1 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.1 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.1 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.1 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.1 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.1 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.1 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.1 --unconcerned 0.2 &
		wait
		./gossple survey.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.1 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.1 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.1 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.1 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.1 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.1 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.1 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.1 --unconcerned 0.7 &
		wait
		./gossple survey.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.1 --unconcerned 0.7 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.1 --unconcerned 0.7 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.1 --unconcerned 0.7 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.1 --unconcerned 0.7 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.2 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.2 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.2 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.2 --unconcerned 0.1 &
		wait
		./gossple survey.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.2 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.2 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.2 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.2 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.2 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.2 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.2 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.2 --unconcerned 0.6 &
		wait
		./gossple survey.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.2 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.2 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.2 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.2 --unconcerned 0.7 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.2 --unconcerned 0.7 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.2 --unconcerned 0.7 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.2 --unconcerned 0.7 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.2 --unconcerned 0.7 &
		wait
		./gossple survey.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.6 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.6 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.6 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.6 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.6 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.6 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.6 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.6 --unconcerned 0.2 &
		wait
		./gossple survey.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.6 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.6 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.6 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.6 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.6 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.6 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.6 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.6 --unconcerned 0.7 &
		wait
		./gossple survey.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.6 --unconcerned 0.7 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.6 --unconcerned 0.7 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.6 --unconcerned 0.7 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.6 --unconcerned 0.7 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.7 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.7 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.7 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.7 --unconcerned 0.1 &
		wait
		./gossple survey.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.7 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.7 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.7 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.7 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.7 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.7 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.7 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.7 --unconcerned 0.6 &
		wait
		./gossple survey.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.7 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.7 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.7 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.7 --unconcerned 0.7 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.7 --unconcerned 0.7 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.7 --unconcerned 0.7 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.7 --unconcerned 0.7 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.7 --unconcerned 0.7 &
		wait
		./gossple survey.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.1 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.1 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.1 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.1 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.1 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.1 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.1 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.1 --unconcerned 0.2 &
		wait
		./gossple survey.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.1 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.1 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.1 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.1 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.1 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.1 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.1 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.1 --unconcerned 0.7 &
		wait
		./gossple survey.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.1 --unconcerned 0.7 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.1 --unconcerned 0.7 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.1 --unconcerned 0.7 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.1 --unconcerned 0.7 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.2 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.2 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.2 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.2 --unconcerned 0.1 &
		wait
		./gossple survey.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.2 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.2 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.2 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.2 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.2 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.2 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.2 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.2 --unconcerned 0.6 &
		wait
		./gossple survey.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.2 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.2 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.2 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.2 --unconcerned 0.7 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.2 --unconcerned 0.7 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.2 --unconcerned 0.7 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.2 --unconcerned 0.7 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.2 --unconcerned 0.7 &
		wait
		./gossple survey.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.6 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.6 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.6 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.6 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.6 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.6 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.6 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.6 --unconcerned 0.2 &
		wait
		./gossple survey.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.6 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.6 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.6 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.6 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.6 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.6 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.6 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.6 --unconcerned 0.7 &
		wait
		./gossple survey.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.6 --unconcerned 0.7 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.6 --unconcerned 0.7 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.6 --unconcerned 0.7 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.6 --unconcerned 0.7 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.7 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.7 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.7 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.7 --unconcerned 0.1 &
		wait
		./gossple survey.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.7 --unconcerned 0.1 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.7 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.7 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.7 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.7 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.7 --unconcerned 0.2 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.7 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.7 --unconcerned 0.6 &
		wait
		./gossple survey.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.7 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.7 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.7 --unconcerned 0.6 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.7 --unconcerned 0.7 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.7 --unconcerned 0.7 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.7 --unconcerned 0.7 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.7 --unconcerned 0.7 &
		./gossple survey.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.7 --unconcerned 0.7 &
		wait
		./gossple digg.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.1 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.1 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.1 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.1 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.1 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.1 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.1 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.1 --unconcerned 0.2 &
		wait
		./gossple digg.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.1 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.1 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.1 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.1 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.1 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.1 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.1 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.1 --unconcerned 0.7 &
		wait
		./gossple digg.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.1 --unconcerned 0.7 &
		./gossple digg.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.1 --unconcerned 0.7 &
		./gossple digg.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.1 --unconcerned 0.7 &
		./gossple digg.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.1 --unconcerned 0.7 &
		./gossple digg.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.2 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.2 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.2 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.2 --unconcerned 0.1 &
		wait
		./gossple digg.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.2 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.2 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.2 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.2 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.2 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.2 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.2 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.2 --unconcerned 0.6 &
		wait
		./gossple digg.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.2 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.2 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.2 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.2 --unconcerned 0.7 &
		./gossple digg.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.2 --unconcerned 0.7 &
		./gossple digg.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.2 --unconcerned 0.7 &
		./gossple digg.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.2 --unconcerned 0.7 &
		./gossple digg.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.2 --unconcerned 0.7 &
		wait
		./gossple digg.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.6 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.6 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.6 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.6 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.6 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.6 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.6 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.6 --unconcerned 0.2 &
		wait
		./gossple digg.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.6 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.6 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.6 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.6 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.6 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.6 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.6 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.6 --unconcerned 0.7 &
		wait
		./gossple digg.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.6 --unconcerned 0.7 &
		./gossple digg.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.6 --unconcerned 0.7 &
		./gossple digg.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.6 --unconcerned 0.7 &
		./gossple digg.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.6 --unconcerned 0.7 &
		./gossple digg.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.7 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.7 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.7 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.7 --unconcerned 0.1 &
		wait
		./gossple digg.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.7 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.7 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.7 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.7 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.7 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.7 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.7 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.7 --unconcerned 0.6 &
		wait
		./gossple digg.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.7 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.7 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.7 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.7 --unconcerned 0.7 &
		./gossple digg.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.7 --unconcerned 0.7 &
		./gossple digg.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.7 --unconcerned 0.7 &
		./gossple digg.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.7 --unconcerned 0.7 &
		./gossple digg.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.7 --unconcerned 0.7 &
		wait
		./gossple digg.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.1 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.1 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.1 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.1 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.1 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.1 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.1 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.1 --unconcerned 0.2 &
		wait
		./gossple digg.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.1 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.1 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.1 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.1 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.1 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.1 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.1 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.1 --unconcerned 0.7 &
		wait
		./gossple digg.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.1 --unconcerned 0.7 &
		./gossple digg.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.1 --unconcerned 0.7 &
		./gossple digg.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.1 --unconcerned 0.7 &
		./gossple digg.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.1 --unconcerned 0.7 &
		./gossple digg.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.2 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.2 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.2 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.2 --unconcerned 0.1 &
		wait
		./gossple digg.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.2 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.2 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.2 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.2 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.2 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.2 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.2 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.2 --unconcerned 0.6 &
		wait
		./gossple digg.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.2 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.2 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.2 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.2 --unconcerned 0.7 &
		./gossple digg.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.2 --unconcerned 0.7 &
		./gossple digg.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.2 --unconcerned 0.7 &
		./gossple digg.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.2 --unconcerned 0.7 &
		./gossple digg.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.2 --unconcerned 0.7 &
		wait
		./gossple digg.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.6 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.6 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.6 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.6 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.6 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.6 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.6 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.6 --unconcerned 0.2 &
		wait
		./gossple digg.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.6 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.6 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.6 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.6 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.6 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.6 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.6 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.6 --unconcerned 0.7 &
		wait
		./gossple digg.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.6 --unconcerned 0.7 &
		./gossple digg.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.6 --unconcerned 0.7 &
		./gossple digg.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.6 --unconcerned 0.7 &
		./gossple digg.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.6 --unconcerned 0.7 &
		./gossple digg.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.7 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.7 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.7 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.7 --unconcerned 0.1 &
		wait
		./gossple digg.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.7 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.7 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.7 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.7 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.7 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.7 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.7 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.7 --unconcerned 0.6 &
		wait
		./gossple digg.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.7 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.7 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.7 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.7 --unconcerned 0.7 &
		./gossple digg.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.7 --unconcerned 0.7 &
		./gossple digg.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.7 --unconcerned 0.7 &
		./gossple digg.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.7 --unconcerned 0.7 &
		./gossple digg.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.7 --unconcerned 0.7 &
		wait
		./gossple digg.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.1 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.1 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.1 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.1 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.1 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.1 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.1 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.1 --unconcerned 0.2 &
		wait
		./gossple digg.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.1 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.1 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.1 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.1 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.1 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.1 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.1 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.1 --unconcerned 0.7 &
		wait
		./gossple digg.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.1 --unconcerned 0.7 &
		./gossple digg.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.1 --unconcerned 0.7 &
		./gossple digg.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.1 --unconcerned 0.7 &
		./gossple digg.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.1 --unconcerned 0.7 &
		./gossple digg.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.2 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.2 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.2 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.2 --unconcerned 0.1 &
		wait
		./gossple digg.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.2 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.2 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.2 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.2 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.2 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.2 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.2 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.2 --unconcerned 0.6 &
		wait
		./gossple digg.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.2 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.2 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.2 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.2 --unconcerned 0.7 &
		./gossple digg.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.2 --unconcerned 0.7 &
		./gossple digg.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.2 --unconcerned 0.7 &
		./gossple digg.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.2 --unconcerned 0.7 &
		./gossple digg.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.2 --unconcerned 0.7 &
		wait
		./gossple digg.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.6 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.6 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.6 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.6 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.6 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.6 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.6 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.6 --unconcerned 0.2 &
		wait
		./gossple digg.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.6 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.6 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.6 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.6 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.6 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.6 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.6 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.6 --unconcerned 0.7 &
		wait
		./gossple digg.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.6 --unconcerned 0.7 &
		./gossple digg.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.6 --unconcerned 0.7 &
		./gossple digg.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.6 --unconcerned 0.7 &
		./gossple digg.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.6 --unconcerned 0.7 &
		./gossple digg.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.7 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.7 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.7 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.7 --unconcerned 0.1 &
		wait
		./gossple digg.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.7 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.7 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.7 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.7 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.7 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.7 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.7 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.7 --unconcerned 0.6 &
		wait
		./gossple digg.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.7 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.7 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.7 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.7 --unconcerned 0.7 &
		./gossple digg.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.7 --unconcerned 0.7 &
		./gossple digg.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.7 --unconcerned 0.7 &
		./gossple digg.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.7 --unconcerned 0.7 &
		./gossple digg.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.7 --unconcerned 0.7 &
		wait
		./gossple digg.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.1 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.1 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.1 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.1 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.1 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.1 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.1 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.1 --unconcerned 0.2 &
		wait
		./gossple digg.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.1 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.1 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.1 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.1 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.1 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.1 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.1 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.1 --unconcerned 0.7 &
		wait
		./gossple digg.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.1 --unconcerned 0.7 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.1 --unconcerned 0.7 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.1 --unconcerned 0.7 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.1 --unconcerned 0.7 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.2 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.2 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.2 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.2 --unconcerned 0.1 &
		wait
		./gossple digg.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.2 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.2 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.2 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.2 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.2 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.2 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.2 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.2 --unconcerned 0.6 &
		wait
		./gossple digg.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.2 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.2 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.2 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.2 --unconcerned 0.7 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.2 --unconcerned 0.7 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.2 --unconcerned 0.7 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.2 --unconcerned 0.7 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.2 --unconcerned 0.7 &
		wait
		./gossple digg.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.6 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.6 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.6 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.6 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.6 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.6 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.6 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.6 --unconcerned 0.2 &
		wait
		./gossple digg.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.6 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.6 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.6 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.6 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.6 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.6 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.6 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.6 --unconcerned 0.7 &
		wait
		./gossple digg.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.6 --unconcerned 0.7 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.6 --unconcerned 0.7 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.6 --unconcerned 0.7 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.6 --unconcerned 0.7 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.7 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.7 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.7 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.7 --unconcerned 0.1 &
		wait
		./gossple digg.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.7 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.7 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.7 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.7 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.7 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.7 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.7 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.7 --unconcerned 0.6 &
		wait
		./gossple digg.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.7 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.7 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.7 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.7 --unconcerned 0.7 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.7 --unconcerned 0.7 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.7 --unconcerned 0.7 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.7 --unconcerned 0.7 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.7 --unconcerned 0.7 &
		wait
		./gossple digg.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.1 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.1 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.1 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.1 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.1 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.1 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.1 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.1 --unconcerned 0.2 &
		wait
		./gossple digg.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.1 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.1 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.1 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.1 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.1 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.1 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.1 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.1 --unconcerned 0.7 &
		wait
		./gossple digg.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.1 --unconcerned 0.7 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.1 --unconcerned 0.7 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.1 --unconcerned 0.7 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.1 --unconcerned 0.7 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.2 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.2 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.2 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.2 --unconcerned 0.1 &
		wait
		./gossple digg.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.2 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.2 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.2 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.2 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.2 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.2 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.2 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.2 --unconcerned 0.6 &
		wait
		./gossple digg.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.2 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.2 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.2 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.2 --unconcerned 0.7 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.2 --unconcerned 0.7 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.2 --unconcerned 0.7 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.2 --unconcerned 0.7 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.2 --unconcerned 0.7 &
		wait
		./gossple digg.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.6 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.6 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.6 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.6 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.6 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.6 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.6 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.6 --unconcerned 0.2 &
		wait
		./gossple digg.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.6 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.6 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.6 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.6 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.6 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.6 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.6 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.6 --unconcerned 0.7 &
		wait
		./gossple digg.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.6 --unconcerned 0.7 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.6 --unconcerned 0.7 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.6 --unconcerned 0.7 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.6 --unconcerned 0.7 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.7 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.7 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.7 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.7 --unconcerned 0.1 &
		wait
		./gossple digg.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.7 --unconcerned 0.1 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.7 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.7 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.7 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.7 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.7 --unconcerned 0.2 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.7 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.7 --unconcerned 0.6 &
		wait
		./gossple digg.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.7 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.7 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.7 --unconcerned 0.6 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.7 --unconcerned 0.7 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.7 --unconcerned 0.7 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.7 --unconcerned 0.7 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.7 --unconcerned 0.7 &
		./gossple digg.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.7 --unconcerned 0.7 &
		wait
		./gossple delicious.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.1 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.1 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.1 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.1 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.1 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.1 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.1 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.1 --unconcerned 0.2 &
		wait
		./gossple delicious.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.1 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.1 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.1 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.1 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.1 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.1 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.1 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.1 --unconcerned 0.7 &
		wait
		./gossple delicious.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.1 --unconcerned 0.7 &
		./gossple delicious.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.1 --unconcerned 0.7 &
		./gossple delicious.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.1 --unconcerned 0.7 &
		./gossple delicious.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.1 --unconcerned 0.7 &
		./gossple delicious.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.2 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.2 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.2 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.2 --unconcerned 0.1 &
		wait
		./gossple delicious.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.2 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.2 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.2 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.2 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.2 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.2 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.2 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.2 --unconcerned 0.6 &
		wait
		./gossple delicious.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.2 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.2 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.2 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.2 --unconcerned 0.7 &
		./gossple delicious.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.2 --unconcerned 0.7 &
		./gossple delicious.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.2 --unconcerned 0.7 &
		./gossple delicious.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.2 --unconcerned 0.7 &
		./gossple delicious.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.2 --unconcerned 0.7 &
		wait
		./gossple delicious.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.6 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.6 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.6 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.6 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.6 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.6 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.6 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.6 --unconcerned 0.2 &
		wait
		./gossple delicious.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.6 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.6 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.6 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.6 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.6 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.6 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.6 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.6 --unconcerned 0.7 &
		wait
		./gossple delicious.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.6 --unconcerned 0.7 &
		./gossple delicious.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.6 --unconcerned 0.7 &
		./gossple delicious.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.6 --unconcerned 0.7 &
		./gossple delicious.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.6 --unconcerned 0.7 &
		./gossple delicious.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.7 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.7 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.7 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.7 --unconcerned 0.1 &
		wait
		./gossple delicious.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.7 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.7 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.7 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.7 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.7 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.7 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.7 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.7 --unconcerned 0.6 &
		wait
		./gossple delicious.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.7 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.7 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.7 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 3 -x 0.0 --normal 0.7 --unconcerned 0.7 &
		./gossple delicious.txt --log LOG -o results.csv -apne 3 -x 0.2 --normal 0.7 --unconcerned 0.7 &
		./gossple delicious.txt --log LOG -o results.csv -apne 3 -x 0.4 --normal 0.7 --unconcerned 0.7 &
		./gossple delicious.txt --log LOG -o results.csv -apne 3 -x 0.6 --normal 0.7 --unconcerned 0.7 &
		./gossple delicious.txt --log LOG -o results.csv -apne 3 -x 0.8 --normal 0.7 --unconcerned 0.7 &
		wait
		./gossple delicious.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.1 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.1 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.1 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.1 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.1 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.1 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.1 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.1 --unconcerned 0.2 &
		wait
		./gossple delicious.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.1 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.1 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.1 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.1 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.1 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.1 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.1 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.1 --unconcerned 0.7 &
		wait
		./gossple delicious.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.1 --unconcerned 0.7 &
		./gossple delicious.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.1 --unconcerned 0.7 &
		./gossple delicious.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.1 --unconcerned 0.7 &
		./gossple delicious.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.1 --unconcerned 0.7 &
		./gossple delicious.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.2 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.2 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.2 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.2 --unconcerned 0.1 &
		wait
		./gossple delicious.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.2 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.2 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.2 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.2 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.2 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.2 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.2 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.2 --unconcerned 0.6 &
		wait
		./gossple delicious.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.2 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.2 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.2 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.2 --unconcerned 0.7 &
		./gossple delicious.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.2 --unconcerned 0.7 &
		./gossple delicious.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.2 --unconcerned 0.7 &
		./gossple delicious.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.2 --unconcerned 0.7 &
		./gossple delicious.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.2 --unconcerned 0.7 &
		wait
		./gossple delicious.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.6 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.6 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.6 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.6 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.6 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.6 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.6 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.6 --unconcerned 0.2 &
		wait
		./gossple delicious.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.6 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.6 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.6 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.6 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.6 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.6 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.6 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.6 --unconcerned 0.7 &
		wait
		./gossple delicious.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.6 --unconcerned 0.7 &
		./gossple delicious.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.6 --unconcerned 0.7 &
		./gossple delicious.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.6 --unconcerned 0.7 &
		./gossple delicious.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.6 --unconcerned 0.7 &
		./gossple delicious.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.7 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.7 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.7 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.7 --unconcerned 0.1 &
		wait
		./gossple delicious.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.7 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.7 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.7 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.7 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.7 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.7 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.7 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.7 --unconcerned 0.6 &
		wait
		./gossple delicious.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.7 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.7 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.7 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 2 -x 0.0 --normal 0.7 --unconcerned 0.7 &
		./gossple delicious.txt --log LOG -o results.csv -apne 2 -x 0.2 --normal 0.7 --unconcerned 0.7 &
		./gossple delicious.txt --log LOG -o results.csv -apne 2 -x 0.4 --normal 0.7 --unconcerned 0.7 &
		./gossple delicious.txt --log LOG -o results.csv -apne 2 -x 0.6 --normal 0.7 --unconcerned 0.7 &
		./gossple delicious.txt --log LOG -o results.csv -apne 2 -x 0.8 --normal 0.7 --unconcerned 0.7 &
		wait
		./gossple delicious.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.1 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.1 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.1 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.1 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.1 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.1 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.1 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.1 --unconcerned 0.2 &
		wait
		./gossple delicious.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.1 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.1 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.1 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.1 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.1 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.1 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.1 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.1 --unconcerned 0.7 &
		wait
		./gossple delicious.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.1 --unconcerned 0.7 &
		./gossple delicious.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.1 --unconcerned 0.7 &
		./gossple delicious.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.1 --unconcerned 0.7 &
		./gossple delicious.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.1 --unconcerned 0.7 &
		./gossple delicious.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.2 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.2 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.2 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.2 --unconcerned 0.1 &
		wait
		./gossple delicious.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.2 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.2 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.2 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.2 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.2 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.2 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.2 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.2 --unconcerned 0.6 &
		wait
		./gossple delicious.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.2 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.2 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.2 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.2 --unconcerned 0.7 &
		./gossple delicious.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.2 --unconcerned 0.7 &
		./gossple delicious.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.2 --unconcerned 0.7 &
		./gossple delicious.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.2 --unconcerned 0.7 &
		./gossple delicious.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.2 --unconcerned 0.7 &
		wait
		./gossple delicious.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.6 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.6 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.6 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.6 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.6 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.6 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.6 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.6 --unconcerned 0.2 &
		wait
		./gossple delicious.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.6 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.6 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.6 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.6 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.6 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.6 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.6 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.6 --unconcerned 0.7 &
		wait
		./gossple delicious.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.6 --unconcerned 0.7 &
		./gossple delicious.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.6 --unconcerned 0.7 &
		./gossple delicious.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.6 --unconcerned 0.7 &
		./gossple delicious.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.6 --unconcerned 0.7 &
		./gossple delicious.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.7 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.7 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.7 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.7 --unconcerned 0.1 &
		wait
		./gossple delicious.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.7 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.7 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.7 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.7 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.7 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.7 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.7 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.7 --unconcerned 0.6 &
		wait
		./gossple delicious.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.7 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.7 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.7 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 1 -x 0.0 --normal 0.7 --unconcerned 0.7 &
		./gossple delicious.txt --log LOG -o results.csv -apne 1 -x 0.2 --normal 0.7 --unconcerned 0.7 &
		./gossple delicious.txt --log LOG -o results.csv -apne 1 -x 0.4 --normal 0.7 --unconcerned 0.7 &
		./gossple delicious.txt --log LOG -o results.csv -apne 1 -x 0.6 --normal 0.7 --unconcerned 0.7 &
		./gossple delicious.txt --log LOG -o results.csv -apne 1 -x 0.8 --normal 0.7 --unconcerned 0.7 &
		wait
		./gossple delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.1 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.1 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.1 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.1 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.1 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.1 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.1 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.1 --unconcerned 0.2 &
		wait
		./gossple delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.1 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.1 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.1 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.1 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.1 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.1 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.1 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.1 --unconcerned 0.7 &
		wait
		./gossple delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.1 --unconcerned 0.7 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.1 --unconcerned 0.7 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.1 --unconcerned 0.7 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.1 --unconcerned 0.7 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.2 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.2 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.2 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.2 --unconcerned 0.1 &
		wait
		./gossple delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.2 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.2 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.2 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.2 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.2 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.2 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.2 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.2 --unconcerned 0.6 &
		wait
		./gossple delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.2 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.2 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.2 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.2 --unconcerned 0.7 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.2 --unconcerned 0.7 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.2 --unconcerned 0.7 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.2 --unconcerned 0.7 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.2 --unconcerned 0.7 &
		wait
		./gossple delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.6 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.6 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.6 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.6 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.6 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.6 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.6 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.6 --unconcerned 0.2 &
		wait
		./gossple delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.6 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.6 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.6 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.6 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.6 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.6 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.6 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.6 --unconcerned 0.7 &
		wait
		./gossple delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.6 --unconcerned 0.7 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.6 --unconcerned 0.7 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.6 --unconcerned 0.7 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.6 --unconcerned 0.7 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.7 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.7 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.7 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.7 --unconcerned 0.1 &
		wait
		./gossple delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.7 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.7 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.7 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.7 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.7 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.7 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.7 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.7 --unconcerned 0.6 &
		wait
		./gossple delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.7 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.7 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.7 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.0 --normal 0.7 --unconcerned 0.7 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.2 --normal 0.7 --unconcerned 0.7 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.4 --normal 0.7 --unconcerned 0.7 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.6 --normal 0.7 --unconcerned 0.7 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.5 -x 0.8 --normal 0.7 --unconcerned 0.7 &
		wait
		./gossple delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.1 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.1 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.1 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.1 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.1 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.1 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.1 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.1 --unconcerned 0.2 &
		wait
		./gossple delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.1 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.1 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.1 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.1 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.1 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.1 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.1 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.1 --unconcerned 0.7 &
		wait
		./gossple delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.1 --unconcerned 0.7 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.1 --unconcerned 0.7 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.1 --unconcerned 0.7 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.1 --unconcerned 0.7 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.2 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.2 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.2 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.2 --unconcerned 0.1 &
		wait
		./gossple delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.2 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.2 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.2 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.2 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.2 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.2 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.2 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.2 --unconcerned 0.6 &
		wait
		./gossple delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.2 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.2 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.2 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.2 --unconcerned 0.7 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.2 --unconcerned 0.7 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.2 --unconcerned 0.7 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.2 --unconcerned 0.7 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.2 --unconcerned 0.7 &
		wait
		./gossple delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.6 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.6 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.6 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.6 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.6 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.6 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.6 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.6 --unconcerned 0.2 &
		wait
		./gossple delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.6 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.6 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.6 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.6 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.6 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.6 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.6 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.6 --unconcerned 0.7 &
		wait
		./gossple delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.6 --unconcerned 0.7 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.6 --unconcerned 0.7 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.6 --unconcerned 0.7 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.6 --unconcerned 0.7 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.7 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.7 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.7 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.7 --unconcerned 0.1 &
		wait
		./gossple delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.7 --unconcerned 0.1 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.7 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.7 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.7 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.7 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.7 --unconcerned 0.2 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.7 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.7 --unconcerned 0.6 &
		wait
		./gossple delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.7 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.7 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.7 --unconcerned 0.6 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.0 --normal 0.7 --unconcerned 0.7 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.2 --normal 0.7 --unconcerned 0.7 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.4 --normal 0.7 --unconcerned 0.7 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.6 --normal 0.7 --unconcerned 0.7 &
		./gossple delicious.txt --log LOG -o results.csv -apne 0.1 -x 0.8 --normal 0.7 --unconcerned 0.7 &
		wait
		cd analysis
		./analyse
		cd ..
done
