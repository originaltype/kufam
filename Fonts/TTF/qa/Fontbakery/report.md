## Fontbakery report

Fontbakery version: 0.7.34

<details>
<summary><b>[1] Family checks</b></summary>
<details>
<summary>⚠ <b>WARN:</b> Is the command `ftxvalidator` (Apple Font Tool Suite) available?</summary>

* [com.google.fonts/check/ftxvalidator_is_available](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/ftxvalidator_is_available)
<pre>--- Rationale ---

There&#x27;s no reasonable (and legal) way to run the command `ftxvalidator` of the
Apple Font Tool Suite on a non-macOS machine. I.e. on GNU+Linux or Windows etc.

If Font Bakery is not running on an OSX machine, the machine running Font
Bakery could access `ftxvalidator` on OSX, e.g. via ssh or a remote procedure
call (rpc).

There&#x27;s an ssh example implementation at:
https://github.com/googlefonts/fontbakery/blob/master/prebuilt/workarounds
/ftxvalidator/ssh-implementation/ftxvalidator


</pre>

* ⚠ **WARN** Could not find ftxvalidator.

</details>
<br>
</details>
<details>
<summary><b>[10] Kufam-BlackItalic.ttf</b></summary>
<details>
<summary>💔 <b>ERROR:</b> Version number has increased since previous release on Google Fonts?</summary>

* [com.google.fonts/check/version_bump](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/version_bump)

* 💔 **ERROR** The condition <FontBakeryCondition:api_gfonts_ttFont> had an error: FailedConditionError: The condition <FontBakeryCondition:remote_styles> had an error: BadCertificateSetupException: You probably installed official Mac python from python.org but forgot to also install the certificates. There is a note in the installer Readme about that. Check the Python folder in the Applications directory, you should find a shell script to install the certificates.

</details>
<details>
<summary>💔 <b>ERROR:</b> Glyphs are similiar to Google Fonts version?</summary>

* [com.google.fonts/check/production_glyphs_similarity](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/production_glyphs_similarity)

* 💔 **ERROR** The condition <FontBakeryCondition:api_gfonts_ttFont> had an error: FailedConditionError: The condition <FontBakeryCondition:remote_styles> had an error: BadCertificateSetupException: You probably installed official Mac python from python.org but forgot to also install the certificates. There is a note in the installer Readme about that. Check the Python folder in the Applications directory, you should find a shell script to install the certificates.

</details>
<details>
<summary>💔 <b>ERROR:</b> Check if the vertical metrics of a family are similar to the same family hosted on Google Fonts.</summary>

* [com.google.fonts/check/vertical_metrics_regressions](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/vertical_metrics_regressions)
<pre>--- Rationale ---

If the family already exists on Google Fonts, we need to ensure that the
checked family&#x27;s vertical metrics are similar. This check will test the
following schema which was outlined in Fontbakery issue #1162 [1]:

- The family should visually have the same vertical metrics as the Regular
style hosted on Google Fonts.
- If the family on Google Fonts has differing hhea and typo metrics, the family
being checked should use the typo metrics for both the hhea and typo entries.
- If the family on Google Fonts has use typo metrics not enabled and the family
being checked has it enabled, the hhea and typo metrics should use the family
on Google Fonts winAscent and winDescent values.
- If the upms differ, the values must be scaled so the visual appearance is the
same.

[1] https://github.com/googlefonts/fontbakery/issues/1162


</pre>

* 💔 **ERROR** The condition <FontBakeryCondition:remote_styles> had an error: BadCertificateSetupException: You probably installed official Mac python from python.org but forgot to also install the certificates. There is a note in the installer Readme about that. Check the Python folder in the Applications directory, you should find a shell script to install the certificates.

</details>
<details>
<summary>💔 <b>ERROR:</b> Check font follows the Google Fonts CJK vertical metric schema</summary>

* [com.google.fonts/check/cjk_vertical_metrics](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/cjk_vertical_metrics)
<pre>--- Rationale ---

CJK fonts have different vertical metrics when compared to Latin fonts. We
follow the schema developed by dr Ken Lunde for Source Han Sans and the Noto
CJK fonts.

Our documentation includes further information:
https://github.com/googlefonts/gf-docs/tree/master/Spec#cjk-vertical-metrics


</pre>

* 💔 **ERROR** The condition <FontBakeryCondition:remote_styles> had an error: BadCertificateSetupException: You probably installed official Mac python from python.org but forgot to also install the certificates. There is a note in the installer Readme about that. Check the Python folder in the Applications directory, you should find a shell script to install the certificates.

</details>
<details>
<summary>🔥 <b>FAIL:</b> Check glyphs do not have components which are themselves components.</summary>

* [com.google.fonts/check/glyf_nested_components](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/glyf.html#com.google.fonts/check/glyf_nested_components)
<pre>--- Rationale ---

There have been bugs rendering variable fonts with nested components.
Additionally, some static fonts with nested components have been reported to
have rendering and printing issues.

For more info, see:
* https://github.com/googlefonts/fontbakery/issues/2961
* https://github.com/arrowtype/recursive/issues/412


</pre>

* 🔥 **FAIL** The following glyphs have components which themselves are component glyphs:
	* Aacute
	* Abreve
	* Acircumflex
	* Adieresis
	* uni1EA0
	* Agrave
	* Amacron
	* Aogonek
	* Aring
	* Aringacute and 529 more. [code: found-nested-components]

</details>
<details>
<summary>⚠ <b>WARN:</b> Check if each glyph has the recommended amount of contours.</summary>

* [com.google.fonts/check/contour_count](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/contour_count)
<pre>--- Rationale ---

Visually QAing thousands of glyphs by hand is tiring. Most glyphs can only be
constructured in a handful of ways. This means a glyph&#x27;s contour count will
only differ slightly amongst different fonts, e.g a &#x27;g&#x27; could either be 2 or 3
contours, depending on whether its double story or single story.

However, a quotedbl should have 2 contours, unless the font belongs to a
display family.

This check currently does not cover variable fonts because there&#x27;s plenty of
alternative ways of constructing glyphs with multiple outlines for each feature
in a VarFont. The expected contour count data for this check is currently
optimized for the typical construction of glyphs in static fonts.


</pre>

* ⚠ **WARN** This check inspects the glyph outlines and detects the total number of contours in each of them. The expected values are infered from the typical ammounts of contours observed in a large collection of reference font families. The divergences listed below may simply indicate a significantly different design on some of your glyphs. On the other hand, some of these may flag actual bugs in the font such as glyphs mapped to an incorrect codepoint. Please consider reviewing the design and codepoint assignment of these to make sure they are correct.

The following glyphs do not have the recommended number of contours:

Glyph name: aogonek	Contours detected: 3	Expected: 2
Glyph name: eogonek	Contours detected: 3	Expected: 2
Glyph name: Uogonek	Contours detected: 2	Expected: 1
Glyph name: uogonek	Contours detected: 2	Expected: 1
Glyph name: ohorn	Contours detected: 3	Expected: 2
Glyph name: Uhorn	Contours detected: 2	Expected: 1
Glyph name: uhorn	Contours detected: 2	Expected: 1
Glyph name: uni01EA	Contours detected: 3	Expected: 2
Glyph name: uni01EB	Contours detected: 3	Expected: 2
Glyph name: uni1E08	Contours detected: 3	Expected: 2
Glyph name: uni1E09	Contours detected: 3	Expected: 2
Glyph name: uni1E1C	Contours detected: 3	Expected: 2
Glyph name: uni1E1D	Contours detected: 4	Expected: 3
Glyph name: uni1EDB	Contours detected: 4	Expected: 3
Glyph name: uni1EDD	Contours detected: 4	Expected: 3
Glyph name: uni1EDF	Contours detected: 4	Expected: 3
Glyph name: uni1EE1	Contours detected: 4	Expected: 3
Glyph name: uni1EE3	Contours detected: 4	Expected: 3
Glyph name: uni1EE8	Contours detected: 3	Expected: 2
Glyph name: uni1EE9	Contours detected: 3	Expected: 2
Glyph name: uni1EEA	Contours detected: 3	Expected: 2
Glyph name: uni1EEB	Contours detected: 3	Expected: 2
Glyph name: uni1EEC	Contours detected: 3	Expected: 2
Glyph name: uni1EED	Contours detected: 3	Expected: 2
Glyph name: uni1EEE	Contours detected: 3	Expected: 2
Glyph name: uni1EEF	Contours detected: 3	Expected: 2
Glyph name: uni1EF0	Contours detected: 3	Expected: 2
Glyph name: uni1EF1	Contours detected: 3	Expected: 2
Glyph name: uni20A9	Contours detected: 5	Expected: 1, 3, 4 or 7
Glyph name: uni2116	Contours detected: 5	Expected: 3 or 4
Glyph name: uni25CC	Contours detected: 18	Expected: 16 or 12
Glyph name: Uhorn	Contours detected: 2	Expected: 1
Glyph name: Uogonek	Contours detected: 2	Expected: 1
Glyph name: aogonek	Contours detected: 3	Expected: 2
Glyph name: eogonek	Contours detected: 3	Expected: 2
Glyph name: fi	Contours detected: 2	Expected: 3
Glyph name: ohorn	Contours detected: 3	Expected: 2
Glyph name: uhorn	Contours detected: 2	Expected: 1
Glyph name: uni1E08	Contours detected: 3	Expected: 2
Glyph name: uni1E09	Contours detected: 3	Expected: 2
Glyph name: uni1E1C	Contours detected: 3	Expected: 2
Glyph name: uni1E1D	Contours detected: 4	Expected: 3
Glyph name: uni1EDB	Contours detected: 4	Expected: 3
Glyph name: uni1EDD	Contours detected: 4	Expected: 3
Glyph name: uni1EDF	Contours detected: 4	Expected: 3
Glyph name: uni1EE1	Contours detected: 4	Expected: 3
Glyph name: uni1EE3	Contours detected: 4	Expected: 3
Glyph name: uni1EE8	Contours detected: 3	Expected: 2
Glyph name: uni1EE9	Contours detected: 3	Expected: 2
Glyph name: uni1EEA	Contours detected: 3	Expected: 2
Glyph name: uni1EEB	Contours detected: 3	Expected: 2
Glyph name: uni1EEC	Contours detected: 3	Expected: 2
Glyph name: uni1EED	Contours detected: 3	Expected: 2
Glyph name: uni1EEE	Contours detected: 3	Expected: 2
Glyph name: uni1EEF	Contours detected: 3	Expected: 2
Glyph name: uni1EF0	Contours detected: 3	Expected: 2
Glyph name: uni1EF1	Contours detected: 3	Expected: 2
Glyph name: uni20A9	Contours detected: 5	Expected: 1, 3, 4 or 7
Glyph name: uni2116	Contours detected: 5	Expected: 3 or 4
Glyph name: uni25CC	Contours detected: 18	Expected: 16 or 12
Glyph name: uogonek	Contours detected: 2	Expected: 1 [code: contour-count]

</details>
<details>
<summary>⚠ <b>WARN:</b> Are there caret positions declared for every ligature?</summary>

* [com.google.fonts/check/ligature_carets](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/ligature_carets)
<pre>--- Rationale ---

All ligatures in a font must have corresponding caret (text cursor) positions
defined in the GDEF table, otherwhise, users may experience issues with caret
rendering.

If using GlyphsApp, ligature carets can be set directly on canvas by accessing
the `Glyph -&gt; Set Anchors` menu option or by pressing the `Cmd+U` keyboard
shortcut.

If designing with UFOs, (as of Oct 2020) ligature carets are not yet compiled
by ufo2ft, and therefore will not build via FontMake. See
googlefonts/ufo2ft/issues/329


</pre>

* ⚠ **WARN** This font lacks caret positioning values for these ligature glyphs:
	- fi
	- fl
	- lam_lam_yehar
	- uniFC31
	- uniFC32
	- uniFC40
	- uniFEFB.short
	- yeh_hamzaar

   [code: incomplete-caret-pos-data]

</details>
<details>
<summary>⚠ <b>WARN:</b> Is there kerning info for non-ligated sequences?</summary>

* [com.google.fonts/check/kerning_for_non_ligated_sequences](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/googlefonts.html#com.google.fonts/check/kerning_for_non_ligated_sequences)
<pre>--- Rationale ---

Fonts with ligatures should have kerning on the corresponding non-ligated
sequences for text where ligatures aren&#x27;t used (eg
https://github.com/impallari/Raleway/issues/14).


</pre>

* ⚠ **WARN** GPOS table lacks kerning info for the following non-ligated sequences:
	- f + f
	- f + i
	- i + f
	- f + l
	- l + f
	- i + i.loclTRK
	- i.loclTRK + l
	- uniFED3 + uniFEF0
	- uniFEF0 + uniFEF2
	- uni0644 + uni0627.short
	- uniFEDF + uniFEE0
	- uniFEE0 + uniFEF2
	- uniFEF2 + uniFEA2
	- uniFEA2 + uniFEE0
	- uniFEF3 + uni0621

   [code: lacks-kern-info]

</details>
<details>
<summary>⚠ <b>WARN:</b> Glyph names are all valid?</summary>

* [com.google.fonts/check/valid_glyphnames](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/universal.html#com.google.fonts/check/valid_glyphnames)
<pre>--- Rationale ---

Microsoft&#x27;s recommendations for OpenType Fonts states the following:

&#x27;NOTE: The PostScript glyph name must be no longer than 31 characters, include
only uppercase or lowercase English letters, European digits, the period or the
underscore, i.e. from the set [A-Za-z0-9_.] and should start with a letter,
except the special glyph name &quot;.notdef&quot; which starts with a period.&#x27;

https://docs.microsoft.com/en-us/typography/opentype/spec/recom#post-table


In practice, though, particularly in modern environments, glyph names can be as
long as 63 characters.
According to the &quot;Adobe Glyph List Specification&quot; available at:

https://github.com/adobe-type-tools/agl-specification


</pre>

* ⚠ **WARN** The following glyph names may be too long for some legacy systems which may expect a maximum 31-char length limit:
hahTahTwodotshorizontalbelowar.fina.h2 and hahTahTwodotshorizontalbelowar.medi.h2 [code: legacy-long-names]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any jaggy segments?</summary>

* [com.google.fonts/check/outline_jaggy_segments](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_jaggy_segments)
<pre>--- Rationale ---

This test heuristically detects outline segments which form a particularly
small angle, indicative of an outline error. This may cause false positives in
cases such as extreme ink traps, so should be regarded as advisory and backed
up by manual inspection.


</pre>

* ⚠ **WARN** The following glyphs have jaggy segments:
	* braceleft.case: B<<328.5,401.5>-<291.0,365.0>-<236.0,360.0>>/B<<236.0,360.0>-<292.0,353.0>-<312.5,314.5>> = 12.319445256636563
	* braceleft.sc: B<<279.0,300.5>-<247.0,272.0>-<196.0,268.0>>/B<<196.0,268.0>-<249.0,262.0>-<265.5,229.5>> = 10.943422388263281
	* braceleft: B<<324.5,377.5>-<287.0,341.0>-<232.0,336.0>>/B<<232.0,336.0>-<288.0,329.0>-<308.5,290.5>> = 12.319445256636563
	* braceright.case: B<<193.0,318.5>-<230.0,355.0>-<285.0,360.0>>/B<<285.0,360.0>-<230.0,368.0>-<209.0,406.0>> = 13.470321734810023
	* braceright.sc: B<<163.0,231.5>-<195.0,260.0>-<246.0,264.0>>/B<<246.0,264.0>-<194.0,270.0>-<177.0,302.5>> = 11.06655066472264
	* braceright: B<<188.0,294.5>-<225.0,331.0>-<280.0,336.0>>/B<<280.0,336.0>-<225.0,344.0>-<204.0,382.0>> = 13.470321734810023
	* hamzaabove_sukunar: B<<128.0,544.0>-<110.0,551.0>-<89.0,548.0>>/L<<89.0,548.0>--<128.0,544.0>> = 13.986115939584893
	* uni0620.init.h1: B<<121.0,435.0>-<132.0,442.0>-<138.0,452.0>>/L<<138.0,452.0>--<121.0,435.0>> = 14.036243467926484
	* uni0620.init.h1: L<<138.0,452.0>--<121.0,435.0>>/B<<121.0,435.0>-<132.0,442.0>-<138.0,452.0>> = 12.52880770915155
	* uni0621: B<<198.5,185.0>-<197.0,164.0>-<200.0,136.0>>/L<<200.0,136.0>--<206.0,220.0>> = 10.201120346260263 and 130 more. [code: found-jaggy-segments]

</details>
<br>
</details>

### Summary

| 💔 ERROR | 🔥 FAIL | ⚠ WARN | 💤 SKIP | ℹ INFO | 🍞 PASS | 🔎 DEBUG |
|:-----:|:----:|:----:|:----:|:----:|:----:|:----:|
| 4 | 1 | 6 | 90 | 7 | 87 | 0 |
| 2% | 1% | 3% | 46% | 4% | 45% | 0% |

**Note:** The following loglevels were omitted in this report:
* **SKIP**
* **INFO**
* **PASS**
* **DEBUG**
