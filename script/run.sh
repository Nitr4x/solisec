#!/bin/bash

for item in $(ls *.sol); do 
    echo -e "\n============ $item ============\n"
    
    myth -x $item
    slither $item
    
    surya inheritance $item | dot -Tpng > "$item.png"
done

echo -e "\n============ Surya Analysis ============\n"

surya describe *.sol

echo -e "\n============ Generating call graph ============\n"

surya graph *.sol | dot -Tpng > Contracts.png
