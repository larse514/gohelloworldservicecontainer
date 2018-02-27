FROM scratch
ADD bin /
EXPOSE 8080
CMD ["/hello"]

