FROM 413491637885.dkr.ecr.us-west-2.amazonaws.com/docker-processor:master

RUN apt-get update \
 && apt-get install -y curl git \
 && curl -sSL -o- "https://raw.githubusercontent.com/microsoft/vscode-dev-containers/v0.134.0/script-library/common-debian.sh" | bash - \
 && apt-get clean -y && rm -rf /var/lib/apt/lists/*

COPY cenv.yaml .

RUN set -ex \
 && mamba env update -f cenv.yaml -n base \ 
 && mamba clean --all --yes \
 && touch /opt/lastools/exe/lastoolslicense.txt \ 
 && chown vscode: /opt/lastools/exe/lastoolslicense.txt \
 && sudo -u vscode /opt/conda/bin/conda init
