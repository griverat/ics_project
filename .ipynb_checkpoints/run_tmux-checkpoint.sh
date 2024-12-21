#!/usr/bin/bash
module load conda
conda activate /glade/work/griverat/conda-envs/keras

for i in {0..7}; do
    tmux new-session -d -s load$i "papermill get_data.ipynb output/get_data_$i.ipynb -p n $i -k keras"
done
