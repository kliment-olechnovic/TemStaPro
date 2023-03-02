#!/bin/sh

# Testing making per-residue inferences

if test -f "tests/outputs/b6f8b4d2f6602ee040278b1d64ab7cf588baa33d74a126030e252fd91ac00601.pt"; then
    rm tests/outputs/b6f8b4d2f6602ee040278b1d64ab7cf588baa33d74a126030e252fd91ac00601.pt
fi

./thermoclass2 -f tests/data/long_sequence.fasta -e './tests/outputs/' \
    -d './ProtTrans/' --mean-output tests/outputs/011_mean.tmp \
    --per-res-output tests/outputs/011_per_res.tmp

rm ./tests/outputs/011_mean.tmp tests/outputs/011_per_res.tmp
