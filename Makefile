#Install dependencies
install:
	pip install --upgrade pip &&  pip install -r requirements.txt

# Run tests
test:
		pytest --nbval book.ipynb

#Lint the code
lint:
		jupyter nbconvert --to script book.ipynb
		pylint --disable=R,C book.py

#Format Code
format:
	black book.ipynb

all: install test lint format
