#!/bin/sh
sh dreamerv3/embodied/scripts/xvfb_run.sh python3 dreamerv3/train.py \
  --logdir "/logdir/$(date +%Y%m%d-%H%M%S)" \
  --configs dmc_vision --task dmc_walker_walk
