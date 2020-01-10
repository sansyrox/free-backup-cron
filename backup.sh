#!/bin/bash
currDir=$(pwd);

if [[ ! -d "uds.zip" ]];then
	curl -LJOs https://github.com/stealthanthrax/uds/tarball/master
fi

#echo "$currDir/master"
if [ -f *.gz ]; then
	tar -xzf *.gz
	rm *.gz
	mv stealthanthrax*/ uds/
fi

# now install the dependencies

if [ -d "uds" ];then
	cd uds
	virtualenv -p python3 uds-venv
	if [ -d uds-venv ]; then
		source uds-venv/bin/activate
	fi
	pip install -r requirements.txt
	$(cd $(currDir))
fi


#$(date '+%Y-%m-%d')

