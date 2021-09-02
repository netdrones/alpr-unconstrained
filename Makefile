.ONESHELL:
SHELL=/bin/bash
ENV_NAME=alpr
CONDA_ACTIVATE=source $$(conda info --base)/etc/profile.d/conda.sh ; conda activate ; conda activate

install:
	conda env update -f environment.yml
	if [ ! -d darknet/obj ]; then cd darknet && make; fi
	if [ ! -d data ]; then sh +x get-networks.sh; fi
	$(CONDA_ACTIVATE) ${ENV_NAME}
	pip install numpy --upgrade

car-test:
	if [ ! -d cars ]; then gsutil -m cp -r gs://lucas.netdron.es/cars .; fi
	sh +x run.sh -i cars -o results -c results/results.csv
