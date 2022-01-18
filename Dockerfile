FROM 11.0.0.10-r1-20200911-030305-amd64
 
USER root
 
COPY Bar /home/aceuser/bars
RUN  chmod -R ugo+rwx /home/aceuser
 
USER 1000
 
RUN ace_compile_bars.sh
 
USER root
 
RUN  chmod -R ugo+rwx /home/aceuser
 
USER 1000
