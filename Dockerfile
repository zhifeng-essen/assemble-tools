FROM continuumio/anaconda:5.2.0

RUN conda config --add channels bioconda \
  && conda config --add channels conda-forge

RUN conda install megahit spades quast prokka cd-hit emboss salmon eggnog-mapper

ENV PATH="/opt/conda/bin:${PATH}"
