FROM python:3.12-slim AS base_image
USER root

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        sudo \
        ca-certificates \
        psmisc \
        git \
        tig \
        vim \
        mc \
        gitk \
        curl \
        wget \
        nodejs \
        python3-tk \
        openssh-client

COPY --from=ghcr.io/astral-sh/uv:0.8.17 /uv /uvx /bin/

SHELL ["/usr/bin/bash", "-c"]

# ################### STAGE: development image #####################

FROM base_image AS dev_image

USER root

ARG USERNAME=dev
ARG USER_UID=1000
ARG USER_GID=$USER_UID

RUN groupadd --gid $USER_GID $USERNAME \
    && useradd --uid $USER_UID --gid $USER_GID -m $USERNAME \
    && echo $USERNAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME \
    && chmod 0440 /etc/sudoers.d/$USERNAME

USER $USERNAME
WORKDIR "/home/$USERNAME/"
COPY ./pyproject.toml ./

ENV UV_LINK_MODE=copy
RUN uv sync
