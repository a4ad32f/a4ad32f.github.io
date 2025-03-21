# choose a base image
FROM python:3.9 AS base
RUN pip install mkdocs

# in case we need a project from scratch
FROM base AS new
RUN mkdocs new portfolio && cd portfolio
WORKDIR /portfolio
EXPOSE 8000
CMD ["mkdocs", "serve", "-a", "0.0.0.0:8000"]

# for local dev/testing
FROM base AS dev
COPY portfolio /portfolio
WORKDIR /portfolio
EXPOSE 8000
CMD ["mkdocs", "serve", "-a", "0.0.0.0:8000"]

# for releases into the main branch
FROM base AS release
COPY portfolio /portfolio
WORKDIR /portfolio
RUN mkdocs build