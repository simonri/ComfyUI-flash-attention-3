#!/usr/bin/env bash
set -euo pipefail

# pip install https://github.com/simonri/flash-attention-3-h100/releases/download/v1.0.0/flash_attn_3-3.0.0b1-cp39-abi3-linux_x86_64.whl
if [ -f "$HOME/miniconda3/etc/profile.d/conda.sh" ]; then
    set -h
    source "$HOME/miniconda3/etc/profile.d/conda.sh"
elif ! command -v conda >/dev/null 2>&1; then
    echo "conda is not available; install Miniconda or update start.sh with your Conda path." >&2
    exit 1
fi

conda activate comfy
exec python main.py --disable-auto-launch --disable-metadata --listen --use-flash-attention --fast fp16_accumulation autotune

# --highvram