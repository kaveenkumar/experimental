pip install pipenv
pipenv install <package>  # creates a venv and then installs the package, also creates a pipfile that is similar to requirements.txt file and adds the package to this pipfile
pipenv shell  # activate venv ("shell" is not the venv name, its a keyword)
exit  # deactivate venv
pipenv run python  # runs python within the venv
pipenv run python script.py  # runs script.py inside pipenv python
pipenv install -r requirements.txt
pipenv lock -r  # creates a list of pip modules installed
pipenv install pytest --dev  # installs pytest but in dev list not under common, can be seen in pipfile
pipenv uninstall <package>
pipenv --python 3.6  # removes other python version and installs 3.6
pipenv --rm  # remove venv
pipenv --venv  # path to venv
pipenv check  # checks for security with installed packages, version conflicts etc..
pipenv graph  # packages and dependency to other packages
