FROM devisty/xssh:v2
EXPOSE 80 2211

COPY . /app
RUN chmod +x /app/start.sh
RUN chmod +x /app/ini.sh
CMD ["/app/start.sh"]
