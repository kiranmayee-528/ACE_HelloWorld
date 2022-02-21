FROM ace-only:latest
 
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
