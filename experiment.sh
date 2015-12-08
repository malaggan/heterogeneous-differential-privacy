#!/usr/bin/env bash
set -e # exit immediately on error

## when we do not remove all the concerned, we give them homogeneous privacy weight of 0.5
## that means, their privcy is subverted, and the utility should increase as we keep more and more
## of them, like in survey and digg. why then, in delicious this is not the case? why when we keep them
## the utility is low (when we randomly remove 10% of the users), but is high (when we do not remove 10%)?
## [to verify the latter after we fixed excess]

for DATASET in epinions-small.txt # survey.txt digg.txt delicious.txt
do
		# i cannot use the .all-users file because it was computed before fixing excess
		# ./gossple ${DATASET} --log LOG -o results.csv -a
		./gossple ${DATASET} --log LOG -o results.csv -a --all-peers
		# ./gossple ${DATASET} --log LOG -o results.csv -apb
		./gossple ${DATASET} --log LOG -o results.csv -apb --all-peers
		for e in 3 2 1 0.5 0.1
		do
				for s in {1..10}
				do
						for u in 0 0.5 0.9
						do
								# ./gossple ${DATASET} --log LOG -o results.csv -ape ${e} -s ${s} -u ${u}
								./gossple ${DATASET} --log LOG -o results.csv -ape ${e} -s ${s} -u ${u} --all-peers
						done
				done
				for n in 0.1 0.2 0.6 0.7
				do
						for u in 0.1 0.2 0.6 0.7
						do
								# ./gossple ${DATASET} --log LOG -o results.csv -apne ${e} --normal ${n} --unconcerned ${u}
								./gossple ${DATASET} --log LOG -o results.csv -apne ${e} --normal ${n} --unconcerned ${u} --all-peers
								for alpha in 0.0 0.2 0.4 0.6 0.8 # 1.0 = naive (above)
								do
										# ./gossple ${DATASET} --log LOG -o results.csv -apne ${e} -x ${alpha} --normal ${n} --unconcerned ${u}
										./gossple ${DATASET} --log LOG -o results.csv -apne ${e} -x ${alpha} --normal ${n} --unconcerned ${u} --all-peers
								done
								# ./gossple ${DATASET} --log LOG -o results.csv -apge ${e} --normal ${n} --unconcerned ${u}
								./gossple ${DATASET} --log LOG -o results.csv -apge ${e} --normal ${n} --unconcerned ${u} --all-peers
						done
				done
		done
done
