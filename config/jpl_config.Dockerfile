FROM leandatascience/jupyterlabconfiguration

# Dependencies
RUN pip install numpy
RUN pip install scipy
RUN pip install pandas
RUN pip install torch torchvision
RUN pip install transformers
RUN pip install streamlit
RUN pip install spacy
RUN pip install spacy-streamlit
RUN python -m spacy download en_core_web_sm

ENV MAIN_PATH=/usr/local/bin/jpl_config
ENV LIBS_PATH=${MAIN_PATH}/libs
ENV CONFIG_PATH=${MAIN_PATH}/config
ENV NOTEBOOK_PATH=${MAIN_PATH}/notebooks

EXPOSE 8888

CMD cd ${MAIN_PATH} && sh config/run_jupyter.sh
