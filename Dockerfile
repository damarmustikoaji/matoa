FROM python:3

LABEL name="Python 3 AT Website"

ENV PIP_NO_CACHE_DIR=1
ENV PIP_DISABLE_PIP_VERSION_CHECK=1

RUN apt-get update

RUN apt-get install libgconf2-4 libnss3-1d libxss1
# RUN apt-get install -y xvfb wget ca-certificates fonts-liberation libasound2 libatk-bridge2.0-0 libatk1.0-0 \
#        libatspi2.0-0 libcups2 libdbus-1-3 libgbm1 libgtk-3-0 libnspr4 libnss3 \
#        libxcomposite1 libxkbcommon0 libxrandr2 xdg-utils ntpdate openssl

# RUN python3 -m pip install --upgrade pip

# RUN python3 -m pip install --disable-pip-version-check robotframework &&  pip install robotframework-selenium2library \
#     && pip install xvfbwrapper && pip install robotframework-xvfb && pip install selenium

RUN wget -q https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb \
    && dpkg -i google-chrome*.deb \
    && rm google-chrome*.deb \
#     && wget -q https://chromedriver.storage.googleapis.com/103.0.5060.53/chromedriver_linux64.zip \
#     && unzip chromedriver_linux64.zip \
#     && rm chromedriver_linux64.zip \
#     && mv chromedriver /usr/local/bin \
#     && chmod +x /usr/local/bin/chromedriver
