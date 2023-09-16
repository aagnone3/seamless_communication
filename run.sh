#!/usr/bin/env bash
set -eou pipefail

# scripts/m4t/predict/predict.py
docker run \
    --privileged \
    -it \
    -v "${PWD}/checkpoints":/root/.cache/torch/hub \
    -v "${PWD}/results":/app/results \
    seamless:latest \
        m4t_predict \
            "This is a very nice and simple test!" \
            t2tt \
            deu \
            --src_lang eng \
            --output_path /app/results/$(date +%Y-%m-%d_%H-%M-%S).txt