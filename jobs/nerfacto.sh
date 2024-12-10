#!/usr/bin/sh

ns-train depth-nerfacto --data data/nerfstudio/Egypt --pipeline.datamanager.train-num-rays-per-batch 4096 --machine.num_devices 2