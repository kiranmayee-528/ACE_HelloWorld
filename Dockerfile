FROM 11.0.0.10-r1-20200911-030305-amd64@sha256:e864daabcc13d6ea9fd8c5ed12751e400f7c5f5e6cfdc1aecb1374a0d69a2585
 
USER root
 
COPY Bar /home/aceuser/bars
RUN  chmod -R ugo+rwx /home/aceuser
 
USER 1000
 
RUN ace_compile_bars.sh
 
USER root
 
RUN  chmod -R ugo+rwx /home/aceuser
 
USER 1000
