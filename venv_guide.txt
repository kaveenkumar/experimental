# virtualenv

pip install virtualenv
virtualenv <venv-name> : create a venv
source venv-name/bin/activate : activate venv
which python : path to python
type python : path to python
which pip : path to pip
pip freeze : returns pip list as requirements.txt format
pip freeze --local : returns local venv pip list as a requirements format
deactivate : out of venv
rm -rf <venv-name>

import os, sys
os.path.dirname(sys.executable) : python interpreter location

virtualenv -p /usr/bin/python3.9 venv_name : creates a venv with specified python version
source venv_name/bin/activate

# python virtualenv setup (this is the path where the python environment and code will reside.
# make sure the folders are created after adding them here.)
export WORKON_HOME=~/Python/.envs
export PROJECT_HOME=~/Python/projects

# virtualenvwrapper aliases (for easier access over command line)
alias venv="workon"
alias venv.exit="deactivate"
alias venv.ls="lsvirtualenv"
alias venv.show="showvirtualenv"
alias venv.init="mkvirtualenv"
alias venv.rm="rmvirtualenv"
alias venv.switch="workon"
alias venv.add="add2virtualenv"
alias venv.cd="cdproject"
alias venv.cdsp="cdsitepackages"
alias venv.cdenv="cdvirtualenv"
alias venv.lssp="lssitepackages"
alias venv.proj="mkproject"
alias venv.setproj="setvirtualenvproject"
alias venv.wipe="wipeenv"

venv.proj --python=$(which python3.<version>) <venv_name>

venv <venv_name> : enter venv
venv.exit : exit venv

# venv : python3.3 and above, this is built-in and is different from pip install virtualenv shown above

## linux
python -m venv venv_name : create venv
source venv/bin/activate : activate venv
deactivate : deactivate venv
rm -rf venv_name/ : remove venv_name directory which is the venv
python -m venv venv_name --system-site-packages : creates venv with system packages pre-installed
pip list --local : lists only local packages, ignores system packages
pip freeze --local : returns local venv pip list as a requirements format
  
## windows
python -m venv venv_name : create venv
venv_name\scripts\activate.bat : activate venv
pip freeze
deactivate : deactivate venv
rmdir venv_name /s : remove venv_name directory which is the venv, /s indicates to delete even if empty / sub-dirs
python -m venv venv_name --system-site-packages : creates venv with system packages pre-installed
pip list --local : lists only local packages, ignores system packages
pip freeze --local : returns local venv pip list as a requirements format
