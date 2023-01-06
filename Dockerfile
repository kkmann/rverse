FROM rocker/verse:4.2.2

COPY install_jags.sh /rocker_scripts/install_jags.sh

RUN /rocker_scripts/install_jags.sh

ENV CRAN=https://packagemanager.posit.co/cran/__linux__/jammy/2023-01-02
