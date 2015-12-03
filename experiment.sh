#!/usr/bin/env bash
set -e # exit immediately on error
for DATASET in survey.txt digg.txt delicious.txt # epinions-small.txt
do
		echo ./gossple ${DATASET} --log LOG -o results.csv -a
		echo ./gossple ${DATASET} --log LOG -o results.csv -apb
		for e in 3 2 1 0.5 0.1
		do
				for s in {1..10}
				do
						for u in 0 0.5 0.9
						do
								echo ./gossple ${DATASET} --log LOG -o results.csv -ape ${e} -s ${s} -u ${u}
						done
				done
				for n in 0.1 0.2 0.6 0.7
				do
						for u in 0.1 0.2 0.6 0.7
						do
								echo ./gossple ${DATASET} --log LOG -o results.csv -apne ${e} --normal ${n} --unconcerned ${u}
								for alpha in 0.0 0.2 0.4 0.6 0.8 # 1.0 = naive (above)
								do
										echo ./gossple ${DATASET} --log LOG -o results.csv -apne ${e} -x ${alpha} --normal ${n} --unconcerned ${u}
								done
								echo ./gossple ${DATASET} --log LOG -o results.csv -apge ${e} --normal ${n} --unconcerned ${u}
						done
				done
		done
done
