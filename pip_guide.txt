pip help : guide
pip help <command> : help for specific command
pip install --upgrade pip : upgrade pip
pip search <package> : searches pypi for package and returns name and info about package
pip install <package>
pip show <package> : details about the package, including version, location
pip list
pip uninstall <package>
pip list --outdated | pip list -o : returns outdated package versions; good for keeping tab if our packages are up-to-date
pip install -U | pip install --upgrade <package> 
pip freeze : returns all the pip list packages in a requirements.txt format
pip freeze --local : returns list only of inside a venv
pip freeze > requirements.txt : pip list requirements file that can be shared to others
pip install -r requirements.txt
pip install -r requirements.txt --upgrade --force-reinstall : install missing packages or force reinstall already installed packages

pip freeze --local | grep -v '^\-e' | cut -d = -f 1 | xargs -n1 pip install -U : upgrades all the outdated packages
