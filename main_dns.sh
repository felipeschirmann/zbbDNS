#! /bin/bash
d=$(date +"%T;%F")

#data hora do inicio da consulta (falta estudar como incluir no arquivo csv)
#echo " -- $d -- " >> /home/felipeschirmann/log.txt

while read r
    do
        echo -e "$r"
	while read t
	    do
		#echo -e "$r " " $t"
		bash q_dns.sh $r $t&
	    done < targets.txt
    done < resolvers.txt
