TTFDIR=../Fonts/TTF
VFDIR=../Fonts/VF
mkdir -p $TTFDIR
mkdir -p $VFDIR

# Build static instances
rm -r $TTFDIR/*.ttf
fontmake -g "../sources/Kufam_Arabic_Latin_Roman_Master.glyphs" -o ttf -f -i --output-dir $TTFDIR -a
fontmake -g "../sources/Kufam_Latin_Italic_Master.glyphs" -o ttf -f -i --output-dir $TTFDIR -a
for f in $TTFDIR/*.ttf
do
	echo Processing $f
	gftools fix-dsig --autofix $f
	gftools fix-hinting $f
	mv $f.fix $f
done

# Build variable font
rm -r $VFDIR/*.ttf
set -e
VF_FILENAME="$VFDIR/Kufam[wght].ttf"
fontmake -g "../sources/Kufam_Arabic_Latin_Roman_Master.glyphs" -o variable -f --output-path $VF_FILENAME
VF_FILENAME="$VFDIR/Kufam-Italic[wght].ttf"
fontmake -g "../sources/Kufam_Latin_Italic_Master.glyphs" -o variable -f --output-path $VF_FILENAME

for f in $VFDIR/*.ttf
do
	echo Processing $f
	gftools fix-dsig --autofix $f
	ttfautohint $f $f.fix
	mv $f.fix $f
	gftools fix-unwanted-tables $f
	gftools fix-hinting $f
	mv $f.fix $f
done

# STAT table
gftools gen-stat "$VFDIR/Kufam[wght].ttf" "$VFDIR/Kufam-Italic[wght].ttf" --axis-order wght ital --elided-values wght=400 --inplace
# gftools fix-vf-meta "$VFDIR/Kufam[wght].ttf" "$VFDIR/Kufam-Italic[wght].ttf"
# mv "$VFDIR/Kufam[wght].ttf.fix" "$VFDIR/Kufam[wght].ttf"
# mv "$VFDIR/Kufam-Italic[wght].ttf.fix" "$VFDIR/Kufam-Italic[wght].ttf"

# Clean up
rm -r instance_ufo
rm -r master_ufo
