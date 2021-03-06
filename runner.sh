#!/bin/bash

# export nnFormer_raw_data_base="/local/DEEPLEARNING/nnformer/DATASET/nnFormer_raw"
# export nnFormer_preprocessed="/local/DEEPLEARNING/nnformer/DATASET/nnFormer_preprocessed"
# export RESULTS_FOLDER="/local/DEEPLEARNING/nnformer/DATASET/nnFormer_trained_models"

export nnFormer_raw_data_base="/etudiants/siscol/t/themyr_l/DATASET/nnFormer_raw"
export nnFormer_preprocessed="/etudiants/siscol/t/themyr_l/DATASET/nnFormer_preprocessed"
export RESULTS_FOLDER="/etudiants/siscol/t/themyr_l/DATASET/nnFormer_trained_models"

cd
source activate nnFormer

cd ~/medtransgt

# $TRAINER=nnFormerTrainerV2_Synapse
# TRAINER="nnFormerGT0TrainerV2_Synapse"
TRAINER="nnFormerGT1TrainerV2_SynapseV2"
# TRAINER="nnFormerGT5TrainerV2_Synapse"

nnFormer_train 3d_fullres $TRAINER 2 0
# nnFormer_predict -i ../DATASET/nnFormer_raw/nnFormer_raw_data/Task002_Synapse/imagesTs -o ../DATASET/nnFormer_raw/nnFormer_raw_data/Task002_Synapse/inferTs/output -m 3d_fullres -f 0 -t 2 -chk model_best -tr $TRAINER
# python ./nnformer/Synapse_dice_and_hd/inference.py