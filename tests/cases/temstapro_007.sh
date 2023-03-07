#!/bin/sh

# Testing passing loading sequences' embeddings from cache

if test -f "tests/outputs/mean_5d817ae8188e00eca8913c80312e2669d6551777fbed0d1764e1c09386638c0a.pt"; then
    rm tests/outputs/mean_5d817ae8188e00eca8913c80312e2669d6551777fbed0d1764e1c09386638c0a.pt
fi

if test -f "tests/outputs/mean_adc7fcd839ba2802998088a0c7b2310d3abdef0229cc020c55fcb82a492c2d8d.pt"; then
    rm tests/outputs/mean_adc7fcd839ba2802998088a0c7b2310d3abdef0229cc020c55fcb82a492c2d8d.pt
fi

if test -f "tests/outputs/mean_c425721d82cb786570760210076eaa21403b210aa6566882a41c4ac70df2defd.pt"; then
    rm tests/outputs/mean_c425721d82cb786570760210076eaa21403b210aa6566882a41c4ac70df2defd.pt
fi

./temstapro -f ./tests/data/multiple_sequences.fasta -e tests/outputs/ -d './ProtTrans/'

./temstapro -f ./tests/data/multiple_sequences.fasta -e tests/outputs/ -d './ProtTrans/'

