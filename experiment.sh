#!/usr/bin/env bash
set -e # exit immediately on error
SHA1="d6c386d789d211bae6993a0a36ffe8774568f53c"
for DATASET in survey.txt # digg.txt delicious.txt # epinions-small.txt
do
		./gossple ${DATASET} --log LOG -o results.csv -a # baseline
		./gossple ${DATASET} --log LOG -o results.csv -apb # blind
		for r in {1..300}
		do
				for e in 3 2 1 0.5 0.1
				do
						for s in {1..10}
						do
								for u in 0 0.5 0.9
								do
										set -o xtrace
										./gossple ${DATASET} --log LOG -o results.csv -ape ${e} -s ${s} -u ${u} &
										set +o xtrace
								done
						done
						# for n in 0.1 0.2 0.6 0.7
						# do
						#			for u in 0.1 0.2 0.6 0.7
						#			do
						#					set -o xtrace
						#					./gossple ${DATASET} --log LOG -o results.csv -apne ${e} --normal ${n} --unconcerned ${u} &
						#					./gossple ${DATASET} --log LOG -o results.csv -apge ${e} --normal ${n} --unconcerned ${u} &
						#					set +o xtrace
						#			done
						# done
						wait
				done
		done
done
