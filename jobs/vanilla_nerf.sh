#!/usr/bin/sh

# ns-train vanilla-nerf --vis viewer --pipeline.datamanager.train-num-rays-per-batch 4096 --machine.num_devices 2 --data data/nerfstudio/$1 nerfstudio-data

ns-train vanilla-nerf --vis viewer --max-num-iterations 80000 --pipeline.datamanager.train-num-rays-per-batch 4096 --machine.num_devices 2 --data data/nerfstudio/Egypt nerfstudio-data
ns-train vanilla-nerf --vis viewer --max-num-iterations 80000 --pipeline.datamanager.train-num-rays-per-batch 4096 --machine.num_devices 2 --data data/nerfstudio/floating-truee nerfstudio-data
ns-train vanilla-nerf --vis viewer --max-num-iterations 80000 --pipeline.datamanager.train-num-rays-per-batch 4096 --machine.num_devices 2 --data data/nerfstudio/person nerfstudio-data

# ns-train vanilla-nerf --vis viewer --data data/nerfstudio/poster nerfstudio-data