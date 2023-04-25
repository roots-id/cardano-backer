from setuptools import setup, find_packages
from os.path import splitext
from os.path import basename
from glob import glob


setup(
    name='backer', 
    version='0.1', 
    packages=find_packages('src'),
    package_dir={'': 'src'},
    py_modules=[splitext(basename(path))[0] for path in glob('src/*.py')],
    
    )