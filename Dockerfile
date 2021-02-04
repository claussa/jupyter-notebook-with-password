FROM jupyter/minimal-notebook:latest

RUN conda config --add channels conda-forge
RUN conda install --quiet --yes fenics mshr
RUN pip install matplotlib

COPY start-notebook.sh /usr/local/bin/
ENTRYPOINT ["/usr/local/bin/start-notebook.sh"]
