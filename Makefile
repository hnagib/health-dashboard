SHELL=/bin/bash

install-env:
	conda create -n health-dashboard python=3.9
	source activate health-dashboard && pip install -r requirements.txt
	conda install ipykernel
	python -m ipykernel install --user --name health-dashboard --display-name "health-dashboard"

uninstall-env:
	conda remove --name health-dashboard --all
