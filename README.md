# jupyter-notebook-with-password

Image docker based on `jupyter/minimal-notebook:latest`

This docker image should be run with:
```
docker run -it -p 8888:8888 aclauss/jupyter-notebook-with-password user password
```

The password would be ask to access the notebook.
