## Fontbakery report

Fontbakery version: 0.7.10

<details>
<summary><b>[1] Family checks</b></summary>
<details>
<summary>⚠ <b>WARN:</b> Is the command `ftxvalidator` (Apple Font Tool Suite) available?</summary>

* [com.google.fonts/check/ftxvalidator_is_available](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/ftxvalidator_is_available)
* ⚠ **WARN** ftxvalidator is not available.

</details>
<br>
</details>
<details>
<summary><b>[5] Kufam-Black.ttf</b></summary>
<details>
<summary>🔥 <b>FAIL:</b> Copyright notices match canonical pattern in fonts</summary>

* [com.google.fonts/check/font_copyright](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/font_copyright)
* 🔥 **FAIL** Name Table entry: Copyright notices should match a pattern similar to: "Copyright 2019 The Familyname Project Authors (git url)"
But instead we have got:
"Copyright 2018 Kufam Project Authors (https://github.com/originaltype/kufam)" [code: bad-notice-format]
* 🔥 **FAIL** Name Table entry: Copyright notices should match a pattern similar to: "Copyright 2019 The Familyname Project Authors (git url)"
But instead we have got:
"Copyright 2018 Kufam Project Authors (https://github.com/originaltype/kufam)" [code: bad-notice-format]

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
Glyph name: uni20A9	Contours detected: 5	Expected: 1, 3, 4 or 7
Glyph name: uni25CC	Contours detected: 18	Expected: 16 or 12
Glyph name: ij	Contours detected: 2	Expected: 3 or 4
Glyph name: uni2116	Contours detected: 5	Expected: 3 or 4 [code: contour-count]

</details>
<details>
<summary>⚠ <b>WARN:</b> Does GPOS table have kerning information?</summary>

* [com.google.fonts/check/gpos_kerning_info](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/gpos.html#com.google.fonts/check/gpos_kerning_info)
* ⚠ **WARN** GPOS table lacks kerning information.

</details>
<br>
</details>

### Summary

| 💔 ERROR | 🔥 FAIL | ⚠ WARN | 💤 SKIP | ℹ INFO | 🍞 PASS |
|:-----:|:----:|:----:|:----:|:----:|:----:|
| 0 | 1 | 5 | 72 | 7 | 73 |
| 0% | 1% | 3% | 46% | 4% | 46% |

**Note:** The following loglevels were omitted in this report:
* **SKIP**
* **INFO**
* **PASS**
