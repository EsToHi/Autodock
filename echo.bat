#!/bin/bash

# Your commands and configurations here

for file in /home/hicham.hboub/PTH1R/L/*.pdbqt; do
    "/home/hicham.hboub/PTH1R/vina.exe" --ligand "$file" --config config.txt
done

pause
