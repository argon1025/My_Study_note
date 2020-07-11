# Anaconda python2.7ver SyntaxError: invalid syntax



Anaconda2 python2.7환경에서 특정패키지를 인스톨할때 SyntaxError: invalid syntax오류가 뜨면서 제대로 설치되지 않는 경우가 있다

[python konlpy](https://github.com/konlpy/konlpy)  설치도중 문제가 발생하여 이슈보고를 하였고 아래와같은 해결책을 찾을 수 있었다.

-----

[Jpype Doc](https://jpype.readthedocs.io/en/latest/install.html#binary-install)

````
JPype can be installed as pre-compiled binary if you are using the Anaconda Python stack. Binaries are available for Linux, OSX, and windows on conda-forge.

Ensure you have installed Anaconda/Miniconda. Instructions can be found here.

Install from the conda-forge software channel:

conda install -c conda-forge jpype1
````

jpype를 conda-forge로 설치하고, 패키지를 설치하면 된다.



-----

jpype를 conda-forge로 설치하고, 패키지를 설치하면 된다.

````
# conda install -c conda-forge jpype1
# pip install konlpy
````

