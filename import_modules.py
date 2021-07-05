echo $PATH  # on a terminal, returns the paths that the os looks at for programs
export PATH='/User/bin/dir:$PATH'  # add your own path to os path environment
source .bashrc | restart terminal

# python3 from path specified, instead of checking the PATH
/usr/local/bin/python3  # running this manually always runs the program specified instead of checking the path
anaconda/bin/python  # runs anaconda python irrespective of what base python is, irrespective of anaconda in environment PATH or not
