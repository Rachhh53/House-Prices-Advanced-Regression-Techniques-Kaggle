setup:
	python3 -m venv ~/.House-Prices-Advanced-Regression-Techniques-Kaggle 

install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest --nbval house_prices_kaggle.ipynb
	
format:
	jblack *.ipynb

lint:
	pylint --disable=R,C house_prices_kaggle.ipynb

all: install lint test
