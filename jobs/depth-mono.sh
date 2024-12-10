#!/usr/bin/sh

# ns-train vanilla-nerf --vis viewer --pipeline.datamanager.train-num-rays-per-batch 4096 --machine.num_devices 2 --data data/nerfstudio/$1 nerfstudio-data

echo "MONO TRAINING"

echo "EGYPT"
ns-train depth-nerfacto --data data/nerfstudio/Egypt --pipeline.model.depth-loss-type SPARSENERF_RANKING --pipeline.datamanager.train-num-rays-per-batch 128 --viewer.quit-on-train-completion True
echo "FLOATING-TREE"
ns-train depth-nerfacto --data data/nerfstudio/floating-tree --pipeline.model.depth-loss-type SPARSENERF_RANKING --pipeline.datamanager.train-num-rays-per-batch 128 --viewer.quit-on-train-completion True
echo "PERSON"
ns-train depth-nerfacto --data data/nerfstudio/person --pipeline.model.depth-loss-type SPARSENERF_RANKING --pipeline.datamanager.train-num-rays-per-batch 128 --viewer.quit-on-train-completion True

# ns-train vanilla-nerf --vis viewer --data data/nerfstudio/poster nerfstudio-data