FROM almalinux:9
RUN dnf install nginx -y
CMD ["nginx", "-g", "daemon off;"]
RUN rm -f /usr/share/nginx/html/index.html
ADD https://raw.githubusercontent.com/Vidhyasai-R/dockerfiles/refs/heads/main/RUN/Dockerfile /usr/share/nginx/html/index.html
RUN chmod +r /usr/share/nginx/html/index.html