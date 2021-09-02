install:
	conda env update -f environment.yml
	cd darknet && make
	if [ ! -d data ]; then sh +x get-networks.sh; fi
