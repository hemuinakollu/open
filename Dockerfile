FROM hemuinakollu/open
MAINTAINER Inakollu Hemanth <hemuinakollu@gmail.com>

# ensure the expected DNX is available
ENV PATH /root/.dnx/runtimes/dnx-coreclr-linux-x64.1.0.0-rc1-update2/bin:$PATH

# deploy the Hello World app
COPY /open1 /opt/open1
RUN cd /opt/open1 && dnu restore
CMD cd /opt/open1 && dnx run
