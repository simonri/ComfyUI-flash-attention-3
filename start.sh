#!/usr/bin/env bash
set -euo pipefail

set -h
source "$HOME/miniconda3/etc/profile.d/conda.sh"

conda activate comfy
exec /home/ubuntu/miniconda3/envs/comfy/bin/python main.py --disable-auto-launch --disable-metadata --listen --use-flash-attention