FROM almalinux:minimal

COPY ./nginx.repo /etc/yum.repos.d/nginx.repo
#RUN microdnf config-manager --enable nginx-mainline 
#RUN microdnf makecache
RUN microdnf install -y nginx
COPY ./conf/*  /etc/nginx/conf.d/
ENTRYPOINT ["nginx", "-g", "daemon off;"]

