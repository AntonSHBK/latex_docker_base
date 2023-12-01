FROM qmcgaw/latexdevcontainer

# Installations
RUN tlmgr update --self && \
    tlmgr install latexindent latexmk && \
    tlmgr install mathexam setspace adjustbox xkeyval collectbox enumitem lastpage && \
    texhash

# set work directory
ENV APP_HOME=/workspace/
RUN mkdir -p $APP_HOME
WORKDIR $APP_HOME