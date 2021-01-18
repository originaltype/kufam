mkdir "../Fonts/VF/SUBSETTEMP"
pyftsubset "../Fonts/VF/Kufam[wght].ttf" --layout-features=* --glyphs-file="./arabic-subset.txt" --output-file="../Fonts/VF/SUBSETTEMP/Kufam[wght].ttf"
fonttools merge "../Fonts/VF/Kufam-Italic[wght]copy.ttf" "../Fonts/VF/SUBSETTEMP/Kufam[wght].ttf"