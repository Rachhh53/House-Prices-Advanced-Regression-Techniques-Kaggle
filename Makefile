setup:
	python3 -m venv ~/.House-Prices-Advanced-Regression-Techniques-Kaggle 

install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest -vv --cov=House-Prices-Advanced-Regression-Techniques-Kagglelib tests/*.py
	python -m pytest --nbval house_prices_kaggle.ipynb


lint:
	pylint --disable=R,C House-Prices-Advanced-Regression-Techniques-Kagglelib cli web

all: install lint test
