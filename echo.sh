#!/bin/bash

# Your commands and configurations here

for file in /home/hicham.hboub/PTH1R_h/L/*.pdbqt; do
    "/home/hicham.hboub/PTH1R/autodock_vina_1_1_2_linux_x86/bin/vina" --receptor Q03431_PTH1R_model1.pdbqt --ligand "$file" --config config.txt
done

pause
