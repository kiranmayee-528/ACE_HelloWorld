FROM icr.io/appc-dev/ace-server@sha256:980a561ba72fcc53f46e909f9f94c521aa66bf11a3e286480c8074d4e8bb40fe
 
USER root
 
COPY Bar /home/aceuser/initial-config/bars
COPY propertyFile.properties /home/aceuser/initial-config/bar_overrides
RUN  chmod -R ugo+rwx /home/aceuser
 
USER 1000
 
RUN ace_config_bar_overrides.sh
COPY /home/aceuser/initial-config/bars /home/aceuser/bars
RUN ace_compile_bars.sh 

USER root
 
RUN  chmod -R ugo+rwx /home/aceuser
 
USER 1000
