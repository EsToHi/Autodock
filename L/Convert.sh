#!/bin/bash

# Define the input text file and output directory
input_file="molecule_list.txt"
output_dir="output_pdbqt_files"

# Create the output directory if it doesn't exist
mkdir -p "$output_dir"

# Loop through each line in the input file
while IFS=$'\t' read -r name smile; do
  # Remove spaces from the name to create a valid output filename
  output_filename="${name// /_}.pdbqt"
  
  # Use Open Babel to convert the SMILES string to PDBQT format
  obabel -:"$smile" -O "$output_dir/$output_filename" --gen3d
  
  echo "Converted $name to $output_filename"
done < "$input_file"

echo "Conversion complete!"