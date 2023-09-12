#!/bin/bash

# Read the ALL.txt file line by line
while IFS=$'\t' read -r name smiles; do
    # Remove any leading/trailing whitespaces
    name=$(echo "$name" | awk '{$1=$1};1')
    smiles=$(echo "$smiles" | awk '{$1=$1};1')

    # Generate the PDBQT file using obabel
    obabel -:"$smiles" -O "${name}.pdbqt" --gen3d

    echo "Converted $name to PDBQT"
done < ALL.txt
