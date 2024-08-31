FROM ubuntu:jammy

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get upgrade -qq -y
RUN apt-get install -qq -y \
    sudo \
    git \
    nano \
    build-essential \
    python3 \
    ca-certificates \
    jq \
    postgresql-14 \
    redis \
    sqlite3 \
    python3-venv \
    python3-pip \
    clang-15 \
    locales \
    wget \
    man-db \
    coreutils \
    gettext \
    language-pack-pt \
    language-pack-en

RUN yes | sudo unminimize
RUN update-locale LANG=en_US.UTF-8
RUN dpkg-reconfigure locales

# See: https://code.visualstudio.com/remote/advancedcontainers/add-nonroot-user
ARG USERNAME=alnvdl
ARG USER_UID=1000
ARG USER_GID=$USER_UID
RUN groupadd --gid $USER_GID $USERNAME && useradd --uid $USER_UID --gid $USER_GID -m $USERNAME
RUN echo "$USERNAME ALL=(root, postgres) NOPASSWD:ALL" > /etc/sudoers.d/$USERNAME && chmod 0440 /etc/sudoers.d/$USERNAME
USER $USERNAME
