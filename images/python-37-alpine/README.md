
Info
----
Contains `mariadb-connector-c-dev, gcc`

And pypi `pybump twine wheel virtualenv`

Also contains `pillow` dependencies 
```
jpeg-dev zlib-dev freetype-dev lcms2-dev openjpeg-dev
tiff-dev tk-dev tcl-dev harfbuzz-dev fribidi-dev
```
Build
-----
Execute:  
```bash
dockerRepo=docker.io

./build.sh ${dockerRepo}
```