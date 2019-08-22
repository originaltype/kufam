## Fontbakery report

Fontbakery version: 0.7.10

<details>
<summary><b>[2] Family checks</b></summary>
<details>
<summary>🔥 <b>FAIL:</b> Verify that each group of fonts with the same nameID 1 has maximum of 4 fonts</summary>

* [com.adobe.fonts/check/family/max_4_fonts_per_family_name](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/name.html#com.adobe.fonts/check/family/max_4_fonts_per_family_name)
* 🔥 **FAIL** Family 'Kufam' has 5 fonts (should be 4 or fewer).

</details>
<details>
<summary>⚠ <b>WARN:</b> Is the command `ftxvalidator` (Apple Font Tool Suite) available?</summary>

* [com.google.fonts/check/ftxvalidator_is_available](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/ftxvalidator_is_available)
* ⚠ **WARN** ftxvalidator is not available.

</details>
<br>
</details>
<details>
<summary><b>[16] Kufam-BlackItalic.ttf</b></summary>
<details>
<summary>🔥 <b>FAIL:</b> Check glyph coverage.</summary>

* [com.google.fonts/check/glyph_coverage](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/glyph_coverage)
* 🔥 **FAIL** Missing required codepoints: 0x000D (CARRIAGE RETURN) [code: missing-codepoints]

</details>
<details>
<summary>🔥 <b>FAIL:</b> Substitute copyright, registered and trademark symbols in name table entries.</summary>

* [com.google.fonts/check/name/unwanted_chars](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/name/unwanted_chars)
* 🔥 **FAIL** NAMEID #0 contains symbols that should be replaced by '(c)'. [code: unwanted-chars]
* 🔥 **FAIL** NAMEID #7 contains symbols that should be replaced by '(c)'. [code: unwanted-chars]
* 🔥 **FAIL** NAMEID #0 contains symbols that should be replaced by '(c)'. [code: unwanted-chars]
* 🔥 **FAIL** NAMEID #7 contains symbols that should be replaced by '(c)'. [code: unwanted-chars]

</details>
<details>
<summary>🔥 <b>FAIL:</b> Are there non-ASCII characters in ASCII-only NAME table entries?</summary>

* [com.google.fonts/check/name/ascii_only_entries](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/name/ascii_only_entries)
* 🔥 **FAIL** There are 2 strings containing non-ASCII characters in the ASCII-only NAME table entries. [code: non-ascii-strings]

</details>
<details>
<summary>🔥 <b>FAIL:</b> Copyright notices match canonical pattern in fonts</summary>

* [com.google.fonts/check/font_copyright](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/font_copyright)
* 🔥 **FAIL** Name Table entry: Copyright notices should match a pattern similar to: "Copyright 2019 The Familyname Project Authors (git url)"
But instead we have got:
"Copyright © 2018 by Artur Schmal. All rights reserved." [code: bad-notice-format]
* 🔥 **FAIL** Name Table entry: Copyright notices should match a pattern similar to: "Copyright 2019 The Familyname Project Authors (git url)"
But instead we have got:
"Copyright © 2018 by Artur Schmal. All rights reserved." [code: bad-notice-format]

</details>
<details>
<summary>🔥 <b>FAIL:</b> Checking OS/2 fsSelection value.</summary>

* [com.google.fonts/check/fsselection](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/fsselection)
* 🔥 **FAIL** OS/2 fsSelection REGULAR bit should be reset. [code: bad-REGULAR]
* 🔥 **FAIL** OS/2 fsSelection ITALIC bit should be set. [code: bad-ITALIC]

</details>
<details>
<summary>🔥 <b>FAIL:</b> Checking head.macStyle value.</summary>

* [com.google.fonts/check/mac_style](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/mac_style)
* 🔥 **FAIL** head macStyle ITALIC bit should be set. [code: bad-ITALIC]

</details>
<details>
<summary>🔥 <b>FAIL:</b> Check name table: FONT_FAMILY_NAME entries. </summary>

* [com.google.fonts/check/name/familyname](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/name/familyname)
* 🔥 **FAIL** Entry [FONT_FAMILY_NAME(1):WINDOWS(3)] on the "name" table: Expected "Kufam Black" but got "Kufam Black Italic". [code: mismatch]

</details>
<details>
<summary>🔥 <b>FAIL:</b> Check name table: FONT_SUBFAMILY_NAME entries. </summary>

* [com.google.fonts/check/name/subfamilyname](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/name/subfamilyname)
* 🔥 **FAIL** SUBFAMILY_NAME for Win "Regular" must be "Italic" [code: bad-familyname]

</details>
<details>
<summary>🔥 <b>FAIL:</b> PPEM must be an integer on hinted fonts.</summary>

* [com.google.fonts/check/integer_ppem_if_hinted](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/integer_ppem_if_hinted)
* 🔥 **FAIL** This is a hinted font, so it must have bit 3 set on the flags of the head table, so that PPEM values will be rounded into an integer value.

This can be accomplished by using the 'gftools fix-hinting' command.

# create virtualenvpython3 -m venv venv
# activate virtualenvsource venv/bin/activate
# install gftoolspip install git+https://www.github.com/googlefonts/tools [code: bad-flags]

</details>
<details>
<summary>🔥 <b>FAIL:</b> Checking OS/2 usWinAscent & usWinDescent.</summary>

* [com.google.fonts/check/family/win_ascent_and_descent](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/family/win_ascent_and_descent)
* 🔥 **FAIL** OS/2.usWinAscent value should be equal or greater than 1228, but got 1202 instead [code: ascent]
* 🔥 **FAIL** OS/2.usWinDescent value 685 is too large. It should be less than double the yMin. Current absolute yMin value is 335 [code: descent]

</details>
<details>
<summary>⚠ <b>WARN:</b> Checking OS/2 achVendID.</summary>

* [com.google.fonts/check/vendor_id](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/vendor_id)
* ⚠ **WARN** OS/2 VendorID value '????' is not a known registered id. You should set it to your own 4 character code, and register that code with Microsoft at https://www.microsoft.com/typography/links/vendorlist.aspx [code: unknown]

</details>
<details>
<summary>⚠ <b>WARN:</b> Stricter unitsPerEm criteria for Google Fonts. </summary>

* [com.google.fonts/check/unitsperem_strict](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/unitsperem_strict)
* ⚠ **WARN** Even though unitsPerEm (1000) in this font is reasonable. It is strongly advised to consider changing it to 2000, since it will likely improve the quality of Variable Fonts by avoiding excessive rounding of coordinates on interpolations. [code: legacy-value]

</details>
<details>
<summary>⚠ <b>WARN:</b> Check if each glyph has the recommended amount of contours.</summary>

* [com.google.fonts/check/contour_count](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/contour_count)
* ⚠ **WARN** This check inspects the glyph outlines and detects the total number of contours in each of them. The expected values are infered from the typical ammounts of contours observed in a large collection of reference font families. The divergences listed below may simply indicate a significantly different design on some of your glyphs. On the other hand, some of these may flag actual bugs in the font such as glyphs mapped to an incorrect codepoint. Please consider reviewing the design and codepoint assignment of these to make sure they are correct.

The following glyphs do not have the recommended number of contours:

Glyph name: G	Contours detected: 2	Expected: 1
Glyph name: Gcircumflex	Contours detected: 3	Expected: 2
Glyph name: Gbreve	Contours detected: 3	Expected: 2
Glyph name: Gdotaccent	Contours detected: 3	Expected: 2
Glyph name: uni0122	Contours detected: 3	Expected: 2
Glyph name: Uogonek	Contours detected: 2	Expected: 1
Glyph name: uni01C8	Contours detected: 2	Expected: 3
Glyph name: uni01C9	Contours detected: 2	Expected: 3
Glyph name: uni01CC	Contours detected: 2	Expected: 3
Glyph name: Gcaron	Contours detected: 3	Expected: 2
Glyph name: second	Contours detected: 0	Expected: 2
Glyph name: uni02B9	Contours detected: 0	Expected: 1
Glyph name: uni02BB	Contours detected: 0	Expected: 1
Glyph name: uni02C8	Contours detected: 0	Expected: 1
Glyph name: uni02CA	Contours detected: 0	Expected: 1
Glyph name: uni02CB	Contours detected: 0	Expected: 1
Glyph name: uni02CC	Contours detected: 0	Expected: 1
Glyph name: emptyset	Contours detected: 0	Expected: 3
Glyph name: uni20A9	Contours detected: 0	Expected: 1, 3, 4 or 7
Glyph name: dong	Contours detected: 0	Expected: 3 or 4
Glyph name: uni20AD	Contours detected: 0	Expected: 1
Glyph name: uni20B1	Contours detected: 0	Expected: 1, 2 or 4
Glyph name: uni20B2	Contours detected: 0	Expected: 1, 2 or 3
Glyph name: uni20B5	Contours detected: 0	Expected: 1 or 2
Glyph name: uni20B9	Contours detected: 0	Expected: 1
Glyph name: uni20BA	Contours detected: 0	Expected: 1
Glyph name: uni20BC	Contours detected: 0	Expected: 1
Glyph name: uni20BD	Contours detected: 0	Expected: 2
Glyph name: triagup	Contours detected: 0	Expected: 1
Glyph name: uni25B3	Contours detected: 0	Expected: 2
Glyph name: triagdn	Contours detected: 0	Expected: 1
Glyph name: uni25BD	Contours detected: 0	Expected: 2
Glyph name: uni25C6	Contours detected: 0	Expected: 1
Glyph name: uni25C7	Contours detected: 0	Expected: 2
Glyph name: ij	Contours detected: 2	Expected: 3 or 4
Glyph name: uni1E20	Contours detected: 3	Expected: 2
Glyph name: uni2116	Contours detected: 5	Expected: 3 or 4
Glyph name: uni1EE0	Contours detected: 2	Expected: 3 or 4
Glyph name: uni1EE1	Contours detected: 2	Expected: 3 [code: contour-count]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are there caret positions declared for every ligature?</summary>

* [com.google.fonts/check/ligature_carets](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/ligature_carets)
* ⚠ **WARN** This font lacks caret positioning values for these ligature glyphs:
	- fi
	- fl

   [code: incomplete-caret-pos-data]

</details>
<details>
<summary>⚠ <b>WARN:</b> Is there kerning info for non-ligated sequences?</summary>

* [com.google.fonts/check/kerning_for_non_ligated_sequences](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/kerning_for_non_ligated_sequences)
* ⚠ **WARN** GPOS table lacks kerning info for the following non-ligated sequences:
	- f + f
	- f + i
	- i + f
	- f + l
	- l + f
	- i + l
	- l + i.loclTRK

   [code: lacks-kern-info]

</details>
<details>
<summary>⚠ <b>WARN:</b> Checking Vertical Metric Linegaps.</summary>

* [com.google.fonts/check/linegaps](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/hhea.html#com.google.fonts/check/linegaps)
* ⚠ **WARN** hhea lineGap is not equal to 0. [code: hhea]

</details>
<br>
</details>
<details>
<summary><b>[17] Kufam-BoldItalic.ttf</b></summary>
<details>
<summary>🔥 <b>FAIL:</b> Check glyph coverage.</summary>

* [com.google.fonts/check/glyph_coverage](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/glyph_coverage)
* 🔥 **FAIL** Missing required codepoints: 0x000D (CARRIAGE RETURN) [code: missing-codepoints]

</details>
<details>
<summary>🔥 <b>FAIL:</b> Substitute copyright, registered and trademark symbols in name table entries.</summary>

* [com.google.fonts/check/name/unwanted_chars](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/name/unwanted_chars)
* 🔥 **FAIL** NAMEID #0 contains symbols that should be replaced by '(c)'. [code: unwanted-chars]
* 🔥 **FAIL** NAMEID #7 contains symbols that should be replaced by '(c)'. [code: unwanted-chars]
* 🔥 **FAIL** NAMEID #0 contains symbols that should be replaced by '(c)'. [code: unwanted-chars]
* 🔥 **FAIL** NAMEID #7 contains symbols that should be replaced by '(c)'. [code: unwanted-chars]

</details>
<details>
<summary>🔥 <b>FAIL:</b> Are there non-ASCII characters in ASCII-only NAME table entries?</summary>

* [com.google.fonts/check/name/ascii_only_entries](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/name/ascii_only_entries)
* 🔥 **FAIL** There are 2 strings containing non-ASCII characters in the ASCII-only NAME table entries. [code: non-ascii-strings]

</details>
<details>
<summary>🔥 <b>FAIL:</b> Copyright notices match canonical pattern in fonts</summary>

* [com.google.fonts/check/font_copyright](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/font_copyright)
* 🔥 **FAIL** Name Table entry: Copyright notices should match a pattern similar to: "Copyright 2019 The Familyname Project Authors (git url)"
But instead we have got:
"Copyright © 2018 by Artur Schmal. All rights reserved." [code: bad-notice-format]
* 🔥 **FAIL** Name Table entry: Copyright notices should match a pattern similar to: "Copyright 2019 The Familyname Project Authors (git url)"
But instead we have got:
"Copyright © 2018 by Artur Schmal. All rights reserved." [code: bad-notice-format]

</details>
<details>
<summary>🔥 <b>FAIL:</b> Checking OS/2 fsSelection value.</summary>

* [com.google.fonts/check/fsselection](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/fsselection)
* 🔥 **FAIL** OS/2 fsSelection REGULAR bit should be reset. [code: bad-REGULAR]
* 🔥 **FAIL** OS/2 fsSelection ITALIC bit should be set. [code: bad-ITALIC]
* 🔥 **FAIL** OS/2 fsSelection BOLD bit should be set. [code: bad-BOLD]

</details>
<details>
<summary>🔥 <b>FAIL:</b> Checking head.macStyle value.</summary>

* [com.google.fonts/check/mac_style](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/mac_style)
* 🔥 **FAIL** head macStyle ITALIC bit should be set. [code: bad-ITALIC]
* 🔥 **FAIL** head macStyle BOLD bit should be set. [code: bad-BOLD]

</details>
<details>
<summary>🔥 <b>FAIL:</b> Check name table: FONT_FAMILY_NAME entries. </summary>

* [com.google.fonts/check/name/familyname](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/name/familyname)
* 🔥 **FAIL** Entry [FONT_FAMILY_NAME(1):WINDOWS(3)] on the "name" table: Expected "Kufam" but got "Kufam Bold Italic". [code: mismatch]

</details>
<details>
<summary>🔥 <b>FAIL:</b> Check name table: FONT_SUBFAMILY_NAME entries. </summary>

* [com.google.fonts/check/name/subfamilyname](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/name/subfamilyname)
* 🔥 **FAIL** SUBFAMILY_NAME for Win "Regular" must be "Bold Italic" [code: bad-familyname]

</details>
<details>
<summary>🔥 <b>FAIL:</b> Check name table: TYPOGRAPHIC_FAMILY_NAME entries. </summary>

* [com.google.fonts/check/name/typographicfamilyname](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/name/typographicfamilyname)
* 🔥 **FAIL** Font style is "BoldItalic" and, for that reason, it is not expected to have a [TYPOGRAPHIC_FAMILY_NAME(16):WINDOWS(3)] entry! [code: ribbi]

</details>
<details>
<summary>🔥 <b>FAIL:</b> PPEM must be an integer on hinted fonts.</summary>

* [com.google.fonts/check/integer_ppem_if_hinted](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/integer_ppem_if_hinted)
* 🔥 **FAIL** This is a hinted font, so it must have bit 3 set on the flags of the head table, so that PPEM values will be rounded into an integer value.

This can be accomplished by using the 'gftools fix-hinting' command.

# create virtualenvpython3 -m venv venv
# activate virtualenvsource venv/bin/activate
# install gftoolspip install git+https://www.github.com/googlefonts/tools [code: bad-flags]

</details>
<details>
<summary>🔥 <b>FAIL:</b> Checking OS/2 usWinAscent & usWinDescent.</summary>

* [com.google.fonts/check/family/win_ascent_and_descent](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/family/win_ascent_and_descent)
* 🔥 **FAIL** OS/2.usWinAscent value should be equal or greater than 1228, but got 1202 instead [code: ascent]
* 🔥 **FAIL** OS/2.usWinDescent value 685 is too large. It should be less than double the yMin. Current absolute yMin value is 335 [code: descent]

</details>
<details>
<summary>⚠ <b>WARN:</b> Checking OS/2 achVendID.</summary>

* [com.google.fonts/check/vendor_id](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/vendor_id)
* ⚠ **WARN** OS/2 VendorID value '????' is not a known registered id. You should set it to your own 4 character code, and register that code with Microsoft at https://www.microsoft.com/typography/links/vendorlist.aspx [code: unknown]

</details>
<details>
<summary>⚠ <b>WARN:</b> Stricter unitsPerEm criteria for Google Fonts. </summary>

* [com.google.fonts/check/unitsperem_strict](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/unitsperem_strict)
* ⚠ **WARN** Even though unitsPerEm (1000) in this font is reasonable. It is strongly advised to consider changing it to 2000, since it will likely improve the quality of Variable Fonts by avoiding excessive rounding of coordinates on interpolations. [code: legacy-value]

</details>
<details>
<summary>⚠ <b>WARN:</b> Check if each glyph has the recommended amount of contours.</summary>

* [com.google.fonts/check/contour_count](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/contour_count)
* ⚠ **WARN** This check inspects the glyph outlines and detects the total number of contours in each of them. The expected values are infered from the typical ammounts of contours observed in a large collection of reference font families. The divergences listed below may simply indicate a significantly different design on some of your glyphs. On the other hand, some of these may flag actual bugs in the font such as glyphs mapped to an incorrect codepoint. Please consider reviewing the design and codepoint assignment of these to make sure they are correct.

The following glyphs do not have the recommended number of contours:

Glyph name: quotedblleft	Contours detected: 1	Expected: 2
Glyph name: quotedblright	Contours detected: 1	Expected: 2
Glyph name: quotedblbase	Contours detected: 1	Expected: 2
Glyph name: quotedbl	Contours detected: 1	Expected: 2
Glyph name: colon	Contours detected: 1	Expected: 2
Glyph name: Uogonek	Contours detected: 2	Expected: 1
Glyph name: uni01C8	Contours detected: 2	Expected: 3
Glyph name: uni01C9	Contours detected: 2	Expected: 3
Glyph name: integral	Contours detected: 3	Expected: 1
Glyph name: second	Contours detected: 0	Expected: 2
Glyph name: uni02B9	Contours detected: 0	Expected: 1
Glyph name: uni02BB	Contours detected: 0	Expected: 1
Glyph name: uni02C8	Contours detected: 0	Expected: 1
Glyph name: uni02CA	Contours detected: 0	Expected: 1
Glyph name: uni02CB	Contours detected: 0	Expected: 1
Glyph name: uni02CC	Contours detected: 0	Expected: 1
Glyph name: emptyset	Contours detected: 0	Expected: 3
Glyph name: uni20A9	Contours detected: 0	Expected: 1, 3, 4 or 7
Glyph name: dong	Contours detected: 0	Expected: 3 or 4
Glyph name: uni20AD	Contours detected: 0	Expected: 1
Glyph name: uni20B1	Contours detected: 0	Expected: 1, 2 or 4
Glyph name: uni20B2	Contours detected: 0	Expected: 1, 2 or 3
Glyph name: uni20B5	Contours detected: 0	Expected: 1 or 2
Glyph name: uni20B9	Contours detected: 0	Expected: 1
Glyph name: uni20BA	Contours detected: 0	Expected: 1
Glyph name: uni20BC	Contours detected: 0	Expected: 1
Glyph name: uni20BD	Contours detected: 0	Expected: 2
Glyph name: triagup	Contours detected: 0	Expected: 1
Glyph name: uni25B3	Contours detected: 0	Expected: 2
Glyph name: triagdn	Contours detected: 0	Expected: 1
Glyph name: uni25BD	Contours detected: 0	Expected: 2
Glyph name: uni25C6	Contours detected: 0	Expected: 1
Glyph name: uni25C7	Contours detected: 0	Expected: 2
Glyph name: ij	Contours detected: 2	Expected: 3 or 4
Glyph name: uni2116	Contours detected: 5	Expected: 3 or 4 [code: contour-count]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are there caret positions declared for every ligature?</summary>

* [com.google.fonts/check/ligature_carets](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/ligature_carets)
* ⚠ **WARN** This font lacks caret positioning values for these ligature glyphs:
	- fi
	- fl

   [code: incomplete-caret-pos-data]

</details>
<details>
<summary>⚠ <b>WARN:</b> Is there kerning info for non-ligated sequences?</summary>

* [com.google.fonts/check/kerning_for_non_ligated_sequences](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/kerning_for_non_ligated_sequences)
* ⚠ **WARN** GPOS table lacks kerning info for the following non-ligated sequences:
	- f + f
	- f + i
	- i + f
	- f + l
	- l + f
	- i + l
	- l + i.loclTRK

   [code: lacks-kern-info]

</details>
<details>
<summary>⚠ <b>WARN:</b> Checking Vertical Metric Linegaps.</summary>

* [com.google.fonts/check/linegaps](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/hhea.html#com.google.fonts/check/linegaps)
* ⚠ **WARN** hhea lineGap is not equal to 0. [code: hhea]

</details>
<br>
</details>
<details>
<summary><b>[16] Kufam-MediumItalic.ttf</b></summary>
<details>
<summary>🔥 <b>FAIL:</b> Check glyph coverage.</summary>

* [com.google.fonts/check/glyph_coverage](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/glyph_coverage)
* 🔥 **FAIL** Missing required codepoints: 0x000D (CARRIAGE RETURN) [code: missing-codepoints]

</details>
<details>
<summary>🔥 <b>FAIL:</b> Substitute copyright, registered and trademark symbols in name table entries.</summary>

* [com.google.fonts/check/name/unwanted_chars](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/name/unwanted_chars)
* 🔥 **FAIL** NAMEID #0 contains symbols that should be replaced by '(c)'. [code: unwanted-chars]
* 🔥 **FAIL** NAMEID #7 contains symbols that should be replaced by '(c)'. [code: unwanted-chars]
* 🔥 **FAIL** NAMEID #0 contains symbols that should be replaced by '(c)'. [code: unwanted-chars]
* 🔥 **FAIL** NAMEID #7 contains symbols that should be replaced by '(c)'. [code: unwanted-chars]

</details>
<details>
<summary>🔥 <b>FAIL:</b> Are there non-ASCII characters in ASCII-only NAME table entries?</summary>

* [com.google.fonts/check/name/ascii_only_entries](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/name/ascii_only_entries)
* 🔥 **FAIL** There are 2 strings containing non-ASCII characters in the ASCII-only NAME table entries. [code: non-ascii-strings]

</details>
<details>
<summary>🔥 <b>FAIL:</b> Copyright notices match canonical pattern in fonts</summary>

* [com.google.fonts/check/font_copyright](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/font_copyright)
* 🔥 **FAIL** Name Table entry: Copyright notices should match a pattern similar to: "Copyright 2019 The Familyname Project Authors (git url)"
But instead we have got:
"Copyright © 2018 by Artur Schmal. All rights reserved." [code: bad-notice-format]
* 🔥 **FAIL** Name Table entry: Copyright notices should match a pattern similar to: "Copyright 2019 The Familyname Project Authors (git url)"
But instead we have got:
"Copyright © 2018 by Artur Schmal. All rights reserved." [code: bad-notice-format]

</details>
<details>
<summary>🔥 <b>FAIL:</b> Checking OS/2 fsSelection value.</summary>

* [com.google.fonts/check/fsselection](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/fsselection)
* 🔥 **FAIL** OS/2 fsSelection REGULAR bit should be reset. [code: bad-REGULAR]
* 🔥 **FAIL** OS/2 fsSelection ITALIC bit should be set. [code: bad-ITALIC]

</details>
<details>
<summary>🔥 <b>FAIL:</b> Checking head.macStyle value.</summary>

* [com.google.fonts/check/mac_style](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/mac_style)
* 🔥 **FAIL** head macStyle ITALIC bit should be set. [code: bad-ITALIC]

</details>
<details>
<summary>🔥 <b>FAIL:</b> Check name table: FONT_FAMILY_NAME entries. </summary>

* [com.google.fonts/check/name/familyname](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/name/familyname)
* 🔥 **FAIL** Entry [FONT_FAMILY_NAME(1):WINDOWS(3)] on the "name" table: Expected "Kufam Medium" but got "Kufam Medium Italic". [code: mismatch]

</details>
<details>
<summary>🔥 <b>FAIL:</b> Check name table: FONT_SUBFAMILY_NAME entries. </summary>

* [com.google.fonts/check/name/subfamilyname](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/name/subfamilyname)
* 🔥 **FAIL** SUBFAMILY_NAME for Win "Regular" must be "Italic" [code: bad-familyname]

</details>
<details>
<summary>🔥 <b>FAIL:</b> PPEM must be an integer on hinted fonts.</summary>

* [com.google.fonts/check/integer_ppem_if_hinted](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/integer_ppem_if_hinted)
* 🔥 **FAIL** This is a hinted font, so it must have bit 3 set on the flags of the head table, so that PPEM values will be rounded into an integer value.

This can be accomplished by using the 'gftools fix-hinting' command.

# create virtualenvpython3 -m venv venv
# activate virtualenvsource venv/bin/activate
# install gftoolspip install git+https://www.github.com/googlefonts/tools [code: bad-flags]

</details>
<details>
<summary>🔥 <b>FAIL:</b> Checking OS/2 usWinAscent & usWinDescent.</summary>

* [com.google.fonts/check/family/win_ascent_and_descent](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/family/win_ascent_and_descent)
* 🔥 **FAIL** OS/2.usWinAscent value should be equal or greater than 1228, but got 1202 instead [code: ascent]
* 🔥 **FAIL** OS/2.usWinDescent value 685 is too large. It should be less than double the yMin. Current absolute yMin value is 335 [code: descent]

</details>
<details>
<summary>⚠ <b>WARN:</b> Checking OS/2 achVendID.</summary>

* [com.google.fonts/check/vendor_id](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/vendor_id)
* ⚠ **WARN** OS/2 VendorID value '????' is not a known registered id. You should set it to your own 4 character code, and register that code with Microsoft at https://www.microsoft.com/typography/links/vendorlist.aspx [code: unknown]

</details>
<details>
<summary>⚠ <b>WARN:</b> Stricter unitsPerEm criteria for Google Fonts. </summary>

* [com.google.fonts/check/unitsperem_strict](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/unitsperem_strict)
* ⚠ **WARN** Even though unitsPerEm (1000) in this font is reasonable. It is strongly advised to consider changing it to 2000, since it will likely improve the quality of Variable Fonts by avoiding excessive rounding of coordinates on interpolations. [code: legacy-value]

</details>
<details>
<summary>⚠ <b>WARN:</b> Check if each glyph has the recommended amount of contours.</summary>

* [com.google.fonts/check/contour_count](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/contour_count)
* ⚠ **WARN** This check inspects the glyph outlines and detects the total number of contours in each of them. The expected values are infered from the typical ammounts of contours observed in a large collection of reference font families. The divergences listed below may simply indicate a significantly different design on some of your glyphs. On the other hand, some of these may flag actual bugs in the font such as glyphs mapped to an incorrect codepoint. Please consider reviewing the design and codepoint assignment of these to make sure they are correct.

The following glyphs do not have the recommended number of contours:

Glyph name: quotedblleft	Contours detected: 1	Expected: 2
Glyph name: quotedblright	Contours detected: 1	Expected: 2
Glyph name: quotedblbase	Contours detected: 1	Expected: 2
Glyph name: quotedbl	Contours detected: 1	Expected: 2
Glyph name: Uogonek	Contours detected: 2	Expected: 1
Glyph name: uni01C8	Contours detected: 2	Expected: 3
Glyph name: uni01C9	Contours detected: 2	Expected: 3
Glyph name: uni01CC	Contours detected: 2	Expected: 3
Glyph name: second	Contours detected: 0	Expected: 2
Glyph name: uni02B9	Contours detected: 0	Expected: 1
Glyph name: uni02BB	Contours detected: 0	Expected: 1
Glyph name: uni02C8	Contours detected: 0	Expected: 1
Glyph name: uni02CA	Contours detected: 0	Expected: 1
Glyph name: uni02CB	Contours detected: 0	Expected: 1
Glyph name: uni02CC	Contours detected: 0	Expected: 1
Glyph name: emptyset	Contours detected: 0	Expected: 3
Glyph name: uni20A9	Contours detected: 0	Expected: 1, 3, 4 or 7
Glyph name: dong	Contours detected: 0	Expected: 3 or 4
Glyph name: uni20AD	Contours detected: 0	Expected: 1
Glyph name: uni20B1	Contours detected: 0	Expected: 1, 2 or 4
Glyph name: uni20B2	Contours detected: 0	Expected: 1, 2 or 3
Glyph name: uni20B5	Contours detected: 0	Expected: 1 or 2
Glyph name: uni20B9	Contours detected: 0	Expected: 1
Glyph name: uni20BA	Contours detected: 0	Expected: 1
Glyph name: uni20BC	Contours detected: 0	Expected: 1
Glyph name: uni20BD	Contours detected: 0	Expected: 2
Glyph name: triagup	Contours detected: 0	Expected: 1
Glyph name: uni25B3	Contours detected: 0	Expected: 2
Glyph name: triagdn	Contours detected: 0	Expected: 1
Glyph name: uni25BD	Contours detected: 0	Expected: 2
Glyph name: uni25C6	Contours detected: 0	Expected: 1
Glyph name: uni25C7	Contours detected: 0	Expected: 2
Glyph name: ij	Contours detected: 2	Expected: 3 or 4
Glyph name: uni2116	Contours detected: 5	Expected: 3 or 4 [code: contour-count]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are there caret positions declared for every ligature?</summary>

* [com.google.fonts/check/ligature_carets](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/ligature_carets)
* ⚠ **WARN** This font lacks caret positioning values for these ligature glyphs:
	- fi
	- fl

   [code: incomplete-caret-pos-data]

</details>
<details>
<summary>⚠ <b>WARN:</b> Is there kerning info for non-ligated sequences?</summary>

* [com.google.fonts/check/kerning_for_non_ligated_sequences](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/kerning_for_non_ligated_sequences)
* ⚠ **WARN** GPOS table lacks kerning info for the following non-ligated sequences:
	- f + f
	- f + i
	- i + f
	- f + l
	- l + f
	- i + l
	- l + i.loclTRK

   [code: lacks-kern-info]

</details>
<details>
<summary>⚠ <b>WARN:</b> Checking Vertical Metric Linegaps.</summary>

* [com.google.fonts/check/linegaps](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/hhea.html#com.google.fonts/check/linegaps)
* ⚠ **WARN** hhea lineGap is not equal to 0. [code: hhea]

</details>
<br>
</details>
<details>
<summary><b>[15] Kufam-NormalItalic.ttf</b></summary>
<details>
<summary>🔥 <b>FAIL:</b> Checking file is named canonically.</summary>

* [com.google.fonts/check/canonical_filename](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/canonical_filename)
* 🔥 **FAIL** Style name used in "Kufam-NormalItalic.ttf" is not canonical. You should rebuild the font using any of the following style names: "Thin", "ExtraLight", "Light", "Regular", "Medium", "SemiBold", "Bold", "ExtraBold", "Black", "Thin Italic", "ExtraLight Italic", "Light Italic", "Italic", "Medium Italic", "SemiBold Italic", "Bold Italic", "ExtraBold Italic", "Black Italic". [code: bad-static-filename]

</details>
<details>
<summary>🔥 <b>FAIL:</b> Check glyph coverage.</summary>

* [com.google.fonts/check/glyph_coverage](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/glyph_coverage)
* 🔥 **FAIL** Missing required codepoints: 0x000D (CARRIAGE RETURN) [code: missing-codepoints]

</details>
<details>
<summary>🔥 <b>FAIL:</b> Substitute copyright, registered and trademark symbols in name table entries.</summary>

* [com.google.fonts/check/name/unwanted_chars](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/name/unwanted_chars)
* 🔥 **FAIL** NAMEID #0 contains symbols that should be replaced by '(c)'. [code: unwanted-chars]
* 🔥 **FAIL** NAMEID #7 contains symbols that should be replaced by '(c)'. [code: unwanted-chars]
* 🔥 **FAIL** NAMEID #0 contains symbols that should be replaced by '(c)'. [code: unwanted-chars]
* 🔥 **FAIL** NAMEID #7 contains symbols that should be replaced by '(c)'. [code: unwanted-chars]

</details>
<details>
<summary>🔥 <b>FAIL:</b> Are there non-ASCII characters in ASCII-only NAME table entries?</summary>

* [com.google.fonts/check/name/ascii_only_entries](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/name/ascii_only_entries)
* 🔥 **FAIL** There are 2 strings containing non-ASCII characters in the ASCII-only NAME table entries. [code: non-ascii-strings]

</details>
<details>
<summary>🔥 <b>FAIL:</b> Copyright notices match canonical pattern in fonts</summary>

* [com.google.fonts/check/font_copyright](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/font_copyright)
* 🔥 **FAIL** Name Table entry: Copyright notices should match a pattern similar to: "Copyright 2019 The Familyname Project Authors (git url)"
But instead we have got:
"Copyright © 2018 by Artur Schmal. All rights reserved." [code: bad-notice-format]
* 🔥 **FAIL** Name Table entry: Copyright notices should match a pattern similar to: "Copyright 2019 The Familyname Project Authors (git url)"
But instead we have got:
"Copyright © 2018 by Artur Schmal. All rights reserved." [code: bad-notice-format]

</details>
<details>
<summary>🔥 <b>FAIL:</b> Check name table: FONT_SUBFAMILY_NAME entries. </summary>

* [com.google.fonts/check/name/subfamilyname](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/name/subfamilyname)
* 🔥 **FAIL** SUBFAMILY_NAME for Mac "Normal Italic" must be "Italic" [code: bad-familyname]

</details>
<details>
<summary>🔥 <b>FAIL:</b> Check name table: TYPOGRAPHIC_SUBFAMILY_NAME entries. </summary>

* [com.google.fonts/check/name/typographicsubfamilyname](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/name/typographicsubfamilyname)
* 🔥 **FAIL** TYPOGRAPHIC_SUBFAMILY_NAME entry for Win "Normal Italic" must be "Italic". Please note, since the font style is RIBBI, this record can be safely deleted. [code: bad-win-name]

</details>
<details>
<summary>🔥 <b>FAIL:</b> PPEM must be an integer on hinted fonts.</summary>

* [com.google.fonts/check/integer_ppem_if_hinted](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/integer_ppem_if_hinted)
* 🔥 **FAIL** This is a hinted font, so it must have bit 3 set on the flags of the head table, so that PPEM values will be rounded into an integer value.

This can be accomplished by using the 'gftools fix-hinting' command.

# create virtualenvpython3 -m venv venv
# activate virtualenvsource venv/bin/activate
# install gftoolspip install git+https://www.github.com/googlefonts/tools [code: bad-flags]

</details>
<details>
<summary>🔥 <b>FAIL:</b> Checking OS/2 usWinAscent & usWinDescent.</summary>

* [com.google.fonts/check/family/win_ascent_and_descent](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/family/win_ascent_and_descent)
* 🔥 **FAIL** OS/2.usWinAscent value should be equal or greater than 1228, but got 1202 instead [code: ascent]
* 🔥 **FAIL** OS/2.usWinDescent value 685 is too large. It should be less than double the yMin. Current absolute yMin value is 335 [code: descent]

</details>
<details>
<summary>⚠ <b>WARN:</b> Checking OS/2 achVendID.</summary>

* [com.google.fonts/check/vendor_id](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/vendor_id)
* ⚠ **WARN** OS/2 VendorID value '????' is not a known registered id. You should set it to your own 4 character code, and register that code with Microsoft at https://www.microsoft.com/typography/links/vendorlist.aspx [code: unknown]

</details>
<details>
<summary>⚠ <b>WARN:</b> Stricter unitsPerEm criteria for Google Fonts. </summary>

* [com.google.fonts/check/unitsperem_strict](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/unitsperem_strict)
* ⚠ **WARN** Even though unitsPerEm (1000) in this font is reasonable. It is strongly advised to consider changing it to 2000, since it will likely improve the quality of Variable Fonts by avoiding excessive rounding of coordinates on interpolations. [code: legacy-value]

</details>
<details>
<summary>⚠ <b>WARN:</b> Check if each glyph has the recommended amount of contours.</summary>

* [com.google.fonts/check/contour_count](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/contour_count)
* ⚠ **WARN** This check inspects the glyph outlines and detects the total number of contours in each of them. The expected values are infered from the typical ammounts of contours observed in a large collection of reference font families. The divergences listed below may simply indicate a significantly different design on some of your glyphs. On the other hand, some of these may flag actual bugs in the font such as glyphs mapped to an incorrect codepoint. Please consider reviewing the design and codepoint assignment of these to make sure they are correct.

The following glyphs do not have the recommended number of contours:

Glyph name: Uogonek	Contours detected: 2	Expected: 1
Glyph name: uni01C8	Contours detected: 2	Expected: 3
Glyph name: uni01C9	Contours detected: 2	Expected: 3
Glyph name: uni01CC	Contours detected: 2	Expected: 3
Glyph name: second	Contours detected: 0	Expected: 2
Glyph name: uni02B9	Contours detected: 0	Expected: 1
Glyph name: uni02BB	Contours detected: 0	Expected: 1
Glyph name: uni02C8	Contours detected: 0	Expected: 1
Glyph name: uni02CA	Contours detected: 0	Expected: 1
Glyph name: uni02CB	Contours detected: 0	Expected: 1
Glyph name: uni02CC	Contours detected: 0	Expected: 1
Glyph name: emptyset	Contours detected: 0	Expected: 3
Glyph name: uni20A9	Contours detected: 0	Expected: 1, 3, 4 or 7
Glyph name: dong	Contours detected: 0	Expected: 3 or 4
Glyph name: uni20AD	Contours detected: 0	Expected: 1
Glyph name: uni20B1	Contours detected: 0	Expected: 1, 2 or 4
Glyph name: uni20B2	Contours detected: 0	Expected: 1, 2 or 3
Glyph name: uni20B5	Contours detected: 0	Expected: 1 or 2
Glyph name: uni20B9	Contours detected: 0	Expected: 1
Glyph name: uni20BA	Contours detected: 0	Expected: 1
Glyph name: uni20BC	Contours detected: 0	Expected: 1
Glyph name: uni20BD	Contours detected: 0	Expected: 2
Glyph name: triagup	Contours detected: 0	Expected: 1
Glyph name: uni25B3	Contours detected: 0	Expected: 2
Glyph name: triagdn	Contours detected: 0	Expected: 1
Glyph name: uni25BD	Contours detected: 0	Expected: 2
Glyph name: uni25C6	Contours detected: 0	Expected: 1
Glyph name: uni25C7	Contours detected: 0	Expected: 2
Glyph name: ij	Contours detected: 2	Expected: 3 or 4
Glyph name: uni2116	Contours detected: 5	Expected: 3 or 4 [code: contour-count]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are there caret positions declared for every ligature?</summary>

* [com.google.fonts/check/ligature_carets](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/ligature_carets)
* ⚠ **WARN** This font lacks caret positioning values for these ligature glyphs:
	- fi
	- fl

   [code: incomplete-caret-pos-data]

</details>
<details>
<summary>⚠ <b>WARN:</b> Is there kerning info for non-ligated sequences?</summary>

* [com.google.fonts/check/kerning_for_non_ligated_sequences](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/kerning_for_non_ligated_sequences)
* ⚠ **WARN** GPOS table lacks kerning info for the following non-ligated sequences:
	- f + f
	- f + i
	- i + f
	- f + l
	- l + f
	- i + l
	- l + i.loclTRK

   [code: lacks-kern-info]

</details>
<details>
<summary>⚠ <b>WARN:</b> Checking Vertical Metric Linegaps.</summary>

* [com.google.fonts/check/linegaps](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/hhea.html#com.google.fonts/check/linegaps)
* ⚠ **WARN** hhea lineGap is not equal to 0. [code: hhea]

</details>
<br>
</details>
<details>
<summary><b>[17] Kufam-SemiBoldItalic.ttf</b></summary>
<details>
<summary>🔥 <b>FAIL:</b> Check glyph coverage.</summary>

* [com.google.fonts/check/glyph_coverage](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/glyph_coverage)
* 🔥 **FAIL** Missing required codepoints: 0x000D (CARRIAGE RETURN) [code: missing-codepoints]

</details>
<details>
<summary>🔥 <b>FAIL:</b> Substitute copyright, registered and trademark symbols in name table entries.</summary>

* [com.google.fonts/check/name/unwanted_chars](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/name/unwanted_chars)
* 🔥 **FAIL** NAMEID #0 contains symbols that should be replaced by '(c)'. [code: unwanted-chars]
* 🔥 **FAIL** NAMEID #7 contains symbols that should be replaced by '(c)'. [code: unwanted-chars]
* 🔥 **FAIL** NAMEID #0 contains symbols that should be replaced by '(c)'. [code: unwanted-chars]
* 🔥 **FAIL** NAMEID #7 contains symbols that should be replaced by '(c)'. [code: unwanted-chars]

</details>
<details>
<summary>🔥 <b>FAIL:</b> Are there non-ASCII characters in ASCII-only NAME table entries?</summary>

* [com.google.fonts/check/name/ascii_only_entries](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/name/ascii_only_entries)
* 🔥 **FAIL** There are 2 strings containing non-ASCII characters in the ASCII-only NAME table entries. [code: non-ascii-strings]

</details>
<details>
<summary>🔥 <b>FAIL:</b> Copyright notices match canonical pattern in fonts</summary>

* [com.google.fonts/check/font_copyright](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/font_copyright)
* 🔥 **FAIL** Name Table entry: Copyright notices should match a pattern similar to: "Copyright 2019 The Familyname Project Authors (git url)"
But instead we have got:
"Copyright © 2018 by Artur Schmal. All rights reserved." [code: bad-notice-format]
* 🔥 **FAIL** Name Table entry: Copyright notices should match a pattern similar to: "Copyright 2019 The Familyname Project Authors (git url)"
But instead we have got:
"Copyright © 2018 by Artur Schmal. All rights reserved." [code: bad-notice-format]

</details>
<details>
<summary>🔥 <b>FAIL:</b> Checking OS/2 fsSelection value.</summary>

* [com.google.fonts/check/fsselection](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/fsselection)
* 🔥 **FAIL** OS/2 fsSelection REGULAR bit should be reset. [code: bad-REGULAR]
* 🔥 **FAIL** OS/2 fsSelection ITALIC bit should be set. [code: bad-ITALIC]

</details>
<details>
<summary>🔥 <b>FAIL:</b> Checking head.macStyle value.</summary>

* [com.google.fonts/check/mac_style](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/mac_style)
* 🔥 **FAIL** head macStyle ITALIC bit should be set. [code: bad-ITALIC]

</details>
<details>
<summary>🔥 <b>FAIL:</b> Check name table: FONT_FAMILY_NAME entries. </summary>

* [com.google.fonts/check/name/familyname](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/name/familyname)
* 🔥 **FAIL** Entry [FONT_FAMILY_NAME(1):WINDOWS(3)] on the "name" table: Expected "Kufam SemiBold" but got "Kufam SemiBold Italic". [code: mismatch]

</details>
<details>
<summary>🔥 <b>FAIL:</b> Check name table: FONT_SUBFAMILY_NAME entries. </summary>

* [com.google.fonts/check/name/subfamilyname](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/name/subfamilyname)
* 🔥 **FAIL** SUBFAMILY_NAME for Win "Regular" must be "Italic" [code: bad-familyname]

</details>
<details>
<summary>🔥 <b>FAIL:</b> PPEM must be an integer on hinted fonts.</summary>

* [com.google.fonts/check/integer_ppem_if_hinted](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/integer_ppem_if_hinted)
* 🔥 **FAIL** This is a hinted font, so it must have bit 3 set on the flags of the head table, so that PPEM values will be rounded into an integer value.

This can be accomplished by using the 'gftools fix-hinting' command.

# create virtualenvpython3 -m venv venv
# activate virtualenvsource venv/bin/activate
# install gftoolspip install git+https://www.github.com/googlefonts/tools [code: bad-flags]

</details>
<details>
<summary>🔥 <b>FAIL:</b> Checking OS/2 usWinAscent & usWinDescent.</summary>

* [com.google.fonts/check/family/win_ascent_and_descent](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/family/win_ascent_and_descent)
* 🔥 **FAIL** OS/2.usWinAscent value should be equal or greater than 1228, but got 1202 instead [code: ascent]
* 🔥 **FAIL** OS/2.usWinDescent value 685 is too large. It should be less than double the yMin. Current absolute yMin value is 335 [code: descent]

</details>
<details>
<summary>⚠ <b>WARN:</b> Checking OS/2 achVendID.</summary>

* [com.google.fonts/check/vendor_id](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/vendor_id)
* ⚠ **WARN** OS/2 VendorID value '????' is not a known registered id. You should set it to your own 4 character code, and register that code with Microsoft at https://www.microsoft.com/typography/links/vendorlist.aspx [code: unknown]

</details>
<details>
<summary>⚠ <b>WARN:</b> Stricter unitsPerEm criteria for Google Fonts. </summary>

* [com.google.fonts/check/unitsperem_strict](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/unitsperem_strict)
* ⚠ **WARN** Even though unitsPerEm (1000) in this font is reasonable. It is strongly advised to consider changing it to 2000, since it will likely improve the quality of Variable Fonts by avoiding excessive rounding of coordinates on interpolations. [code: legacy-value]

</details>
<details>
<summary>⚠ <b>WARN:</b> Check if each glyph has the recommended amount of contours.</summary>

* [com.google.fonts/check/contour_count](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/contour_count)
* ⚠ **WARN** This check inspects the glyph outlines and detects the total number of contours in each of them. The expected values are infered from the typical ammounts of contours observed in a large collection of reference font families. The divergences listed below may simply indicate a significantly different design on some of your glyphs. On the other hand, some of these may flag actual bugs in the font such as glyphs mapped to an incorrect codepoint. Please consider reviewing the design and codepoint assignment of these to make sure they are correct.

The following glyphs do not have the recommended number of contours:

Glyph name: quotedblleft	Contours detected: 1	Expected: 2
Glyph name: quotedblright	Contours detected: 1	Expected: 2
Glyph name: quotedblbase	Contours detected: 1	Expected: 2
Glyph name: quotedbl	Contours detected: 1	Expected: 2
Glyph name: colon	Contours detected: 1	Expected: 2
Glyph name: Uogonek	Contours detected: 2	Expected: 1
Glyph name: uni01C8	Contours detected: 2	Expected: 3
Glyph name: uni01C9	Contours detected: 2	Expected: 3
Glyph name: uni01CC	Contours detected: 2	Expected: 3
Glyph name: integral	Contours detected: 3	Expected: 1
Glyph name: second	Contours detected: 0	Expected: 2
Glyph name: uni02B9	Contours detected: 0	Expected: 1
Glyph name: uni02BB	Contours detected: 0	Expected: 1
Glyph name: uni02C8	Contours detected: 0	Expected: 1
Glyph name: uni02CA	Contours detected: 0	Expected: 1
Glyph name: uni02CB	Contours detected: 0	Expected: 1
Glyph name: uni02CC	Contours detected: 0	Expected: 1
Glyph name: emptyset	Contours detected: 0	Expected: 3
Glyph name: uni20A9	Contours detected: 0	Expected: 1, 3, 4 or 7
Glyph name: dong	Contours detected: 0	Expected: 3 or 4
Glyph name: uni20AD	Contours detected: 0	Expected: 1
Glyph name: uni20B1	Contours detected: 0	Expected: 1, 2 or 4
Glyph name: uni20B2	Contours detected: 0	Expected: 1, 2 or 3
Glyph name: uni20B5	Contours detected: 0	Expected: 1 or 2
Glyph name: uni20B9	Contours detected: 0	Expected: 1
Glyph name: uni20BA	Contours detected: 0	Expected: 1
Glyph name: uni20BC	Contours detected: 0	Expected: 1
Glyph name: uni20BD	Contours detected: 0	Expected: 2
Glyph name: triagup	Contours detected: 0	Expected: 1
Glyph name: uni25B3	Contours detected: 0	Expected: 2
Glyph name: triagdn	Contours detected: 0	Expected: 1
Glyph name: uni25BD	Contours detected: 0	Expected: 2
Glyph name: uni25C6	Contours detected: 0	Expected: 1
Glyph name: uni25C7	Contours detected: 0	Expected: 2
Glyph name: ij	Contours detected: 2	Expected: 3 or 4
Glyph name: uni2116	Contours detected: 5	Expected: 3 or 4 [code: contour-count]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are there caret positions declared for every ligature?</summary>

* [com.google.fonts/check/ligature_carets](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/ligature_carets)
* ⚠ **WARN** This font lacks caret positioning values for these ligature glyphs:
	- fi
	- fl

   [code: incomplete-caret-pos-data]

</details>
<details>
<summary>⚠ <b>WARN:</b> Is there kerning info for non-ligated sequences?</summary>

* [com.google.fonts/check/kerning_for_non_ligated_sequences](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/kerning_for_non_ligated_sequences)
* ⚠ **WARN** GPOS table lacks kerning info for the following non-ligated sequences:
	- f + f
	- f + i
	- i + f
	- f + l
	- l + f
	- i + l
	- l + i.loclTRK

   [code: lacks-kern-info]

</details>
<details>
<summary>⚠ <b>WARN:</b> Combined length of family and style must not exceed 27 characters.</summary>

* [com.google.fonts/check/name/family_and_style_max_length](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/name/family_and_style_max_length)
* ⚠ **WARN** The combined length of family and style exceeds 27 chars in the following 'WINDOWS' entries:
 FONT_FAMILY_NAME = 'Kufam SemiBold Italic' / SUBFAMILY_NAME = 'Regular'

Please take a look at the conversation at https://github.com/googlefonts/fontbakery/issues/2179 in order to understand the reasoning behind these name table records max-length criteria. [code: too-long]

</details>
<details>
<summary>⚠ <b>WARN:</b> Checking Vertical Metric Linegaps.</summary>

* [com.google.fonts/check/linegaps](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/hhea.html#com.google.fonts/check/linegaps)
* ⚠ **WARN** hhea lineGap is not equal to 0. [code: hhea]

</details>
<br>
</details>

### Summary

| 💔 ERROR | 🔥 FAIL | ⚠ WARN | 💤 SKIP | ℹ INFO | 🍞 PASS |
|:-----:|:----:|:----:|:----:|:----:|:----:|
| 0 | 51 | 32 | 297 | 31 | 271 |
| 0% | 7% | 5% | 44% | 5% | 40% |

**Note:** The following loglevels were omitted in this report:
* **SKIP**
* **INFO**
* **PASS**
