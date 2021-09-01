FROM 413491637885.dkr.ecr.us-west-2.amazonaws.com/docker-processor:master

COPY cenv.yaml ./

RUN set -ex \
 && mamba env update -f cenv.yaml -n base \ 
 && mamba clean --all --yes

COPY . .
