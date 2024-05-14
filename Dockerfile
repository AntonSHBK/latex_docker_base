# Full 4.3 Gb
FROM qmcgaw/latexdevcontainer:latest-full
# Slim 0.3 Gb
# FROM qmcgaw/latexdevcontainer:latest


# Installations
RUN tlmgr update --self && \
    tlmgr install latexindent \
    latexmk \
    mathexam \
    setspace \
    adjustbox \
    xkeyval \
    collectbox \
    enumitem \
    lastpage &&\
    texhash

# set work directory
ENV APP_HOME=/workspace/
RUN mkdir -p $APP_HOME
WORKDIR $APP_HOME

# copy project
COPY ./ $APP_HOME