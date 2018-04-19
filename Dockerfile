# A container with scientific python libraries installed
# Your analysis container should inherit this one with
# `FROM everware/science-python`

FROM everware/base

MAINTAINER Project Everware

USER root

# For python 3
RUN conda install --yes numpy scipy scikit-learn matplotlib pandas seaborn 
RUN pip install tensorflow
RUN pip install keras
RUN pip install lasio
RUN pip install pyqt4

USER jupyter
WORKDIR /home/jupyter/

EXPOSE 8888
