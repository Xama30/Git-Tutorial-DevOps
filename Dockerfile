#use a node base image
FROM node:7-onbuild

HEALTHCHECK --interval=5s --timeout=3s CMD curl -f http://localhost:8000/ || exit 1

EXPOSE 8000