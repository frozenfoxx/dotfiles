FROM ubuntu:latest

MAINTAINER frozenfoxx@cultoffoxx.net

# Variables
ENV DEPS="git sudo zsh" \
  DEBIAN_FRONTEND=noninteractive \
  SHELL_USER="bot"

# Requisites
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y \
      ${DEPS}

# Create test user and add to sudoers
RUN useradd -m -s /bin/zsh ${SHELL_USER} && \
  usermod -aG sudo ${SHELL_USER} && \
  echo "${SHELL_USER}   ALL=(ALL:ALL) NOPASSWD: ALL" > /etc/sudoers

# Add dotfiles
ADD . /home/${SHELL_USER}/dotfiles
RUN chown -R ${SHELL_USER}:${SHELL_USER} /home/${SHELL_USER}

# Switch user
USER ${SHELL_USER}
ENV HOME /home/${SHELL_USER}

# Change working directory
WORKDIR /home/${SHELL_USER}/dotfiles

# Run install
RUN ./install

CMD ["/bin/zsh"]

