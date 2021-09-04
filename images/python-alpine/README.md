
Info
----
Contains `mariadb-connector-c-dev, gcc`

And pypi `pybump twine wheel flake8 virtualenv coverage`

Also contains `pillow` dependencies 
```
jpeg-dev zlib-dev freetype-dev lcms2-dev openjpeg-dev
tiff-dev tk-dev tcl-dev harfbuzz-dev fribidi-dev
```
Build
-----
Execute:  
```bash
export dockerRepo=docker.io pythonVersion=3.9-alpine
./build.sh
```