FROM quay.io/jupyter/minimal-notebook:afe30f0c9ad8

COPY conda-lock.yml conda-lock.yml

RUN mamba create --quiet --file conda-lock.yml \
  && fix-permissions "${CONDA_DIR}" \
  && fix-permissions "/home/${NB_USER}"