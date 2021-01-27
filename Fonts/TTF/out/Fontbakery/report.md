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
<summary><b>[10] Kufam-Black.ttf</b></summary>
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
	* a.sc: B<<503.0,362.0>-<497.0,369.0>-<491.0,375.0>>/L<<491.0,375.0>--<503.0,362.0>> = 2.2906100426384346
	* a.sc: L<<491.0,375.0>--<503.0,362.0>>/B<<503.0,362.0>-<497.0,369.0>-<491.0,375.0>> = 2.1080953123569413
	* aacute.sc: B<<503.0,362.0>-<497.0,369.0>-<491.0,375.0>>/L<<491.0,375.0>--<503.0,362.0>> = 2.2906100426384346
	* aacute.sc: L<<491.0,375.0>--<503.0,362.0>>/B<<503.0,362.0>-<497.0,369.0>-<491.0,375.0>> = 2.1080953123569413
	* abreve.sc: B<<503.0,362.0>-<497.0,369.0>-<491.0,375.0>>/L<<491.0,375.0>--<503.0,362.0>> = 2.2906100426384346
	* abreve.sc: L<<491.0,375.0>--<503.0,362.0>>/B<<503.0,362.0>-<497.0,369.0>-<491.0,375.0>> = 2.1080953123569413
	* acircumflex.sc: B<<503.0,362.0>-<497.0,369.0>-<491.0,375.0>>/L<<491.0,375.0>--<503.0,362.0>> = 2.2906100426384346
	* acircumflex.sc: L<<491.0,375.0>--<503.0,362.0>>/B<<503.0,362.0>-<497.0,369.0>-<491.0,375.0>> = 2.1080953123569413
	* adieresis.sc: B<<503.0,362.0>-<497.0,369.0>-<491.0,375.0>>/L<<491.0,375.0>--<503.0,362.0>> = 2.2906100426384346
	* adieresis.sc: L<<491.0,375.0>--<503.0,362.0>>/B<<503.0,362.0>-<497.0,369.0>-<491.0,375.0>> = 2.1080953123569413 and 180 more. [code: found-jaggy-segments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any semi-vertical or semi-horizontal lines?</summary>

* [com.google.fonts/check/outline_semi_vertical](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_semi_vertical)
<pre>--- Rationale ---

This test detects line segments which are nearly, but not quite, exactly
horizontal or vertical. Sometimes such lines are created by design, but often
they are indicative of a design error.

This test is disabled for italic styles, which often contain nearly-upright
lines.


</pre>

* ⚠ **WARN** The following glyphs have semi-vertical/semi-horizontal lines:
	* dollar.psc: L<<188.0,567.0>--<187.0,691.0>>
	* dollar.psc: L<<355.0,693.0>--<356.0,578.0>>
	* dollar.sc: L<<206.0,567.0>--<205.0,691.0>>
	* dollar.sc: L<<373.0,693.0>--<374.0,578.0>>
	* hahTahTwodotshorizontalbelowar.medi.h2: L<<772.0,0.0>--<-20.0,-1.0>>
	* uni0602: L<<1297.0,0.0>--<344.0,-1.0>>
	* uni0602: L<<623.0,175.0>--<1297.0,176.0>>
	* uni060E: L<<1249.0,0.0>--<344.0,-1.0>>
	* uni060E: L<<623.0,175.0>--<1297.0,176.0>>
	* uni061F: L<<361.0,238.0>--<181.0,239.0>> and 100 more. [code: found-semi-vertical]

</details>
<br>
</details>
<details>
<summary><b>[9] Kufam-BlackItalic.ttf</b></summary>
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
<details>
<summary><b>[11] Kufam-Bold.ttf</b></summary>
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
<summary>⚠ <b>WARN:</b> Do any segments have colinear vectors?</summary>

* [com.google.fonts/check/outline_colinear_vectors](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_colinear_vectors)
<pre>--- Rationale ---

This test looks for consecutive line segments which have the same angle. This
normally happens if an outline point has been added by accident.

This test is not run for variable fonts, as they may legitimately have colinear
vectors.


</pre>

* ⚠ **WARN** The following glyphs have colinear vectors:
	* lslash.sc: L<<275.0,407.0>--<302.0,424.0>> -> L<<302.0,424.0>--<405.0,476.0>>
	* r.sc: L<<327.0,125.0>--<323.0,125.0>> -> L<<323.0,125.0>--<247.0,125.0>>
	* racute.sc: L<<327.0,125.0>--<323.0,125.0>> -> L<<323.0,125.0>--<247.0,125.0>>
	* rcaron.sc: L<<327.0,125.0>--<323.0,125.0>> -> L<<323.0,125.0>--<247.0,125.0>>
	* uni0157.sc: L<<327.0,125.0>--<323.0,125.0>> -> L<<323.0,125.0>--<247.0,125.0>>
	* uni0211.sc: L<<327.0,125.0>--<323.0,125.0>> -> L<<323.0,125.0>--<247.0,125.0>>
	* uni0213.sc: L<<327.0,125.0>--<323.0,125.0>> -> L<<323.0,125.0>--<247.0,125.0>>
	* uni0658: L<<206.0,756.0>--<294.0,764.0>> -> L<<294.0,764.0>--<300.0,764.0>>
	* uni0673.fina: L<<186.0,-261.0>--<188.0,-188.0>> -> L<<188.0,-188.0>--<188.0,-186.0>>
	* uni0673.fina: L<<188.0,-186.0>--<188.0,-185.0>> -> L<<188.0,-185.0>--<189.0,-153.0>> and 10 more. [code: found-colinear-vectors]

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
	* hamzaabove_sukunar: B<<120.0,527.0>-<109.0,530.0>-<97.0,530.0>>/L<<97.0,530.0>--<120.0,527.0>> = 7.431407971172489
	* hamzaabove_sukunar: L<<163.0,522.0>--<204.0,517.0>>/B<<204.0,517.0>-<182.0,525.0>-<163.0,522.0>> = 13.030149053726042
	* hamzaabove_sukunar: L<<97.0,530.0>--<120.0,527.0>>/B<<120.0,527.0>-<109.0,530.0>-<97.0,530.0>> = 7.823710731885245
	* lam_alefWavyhamzaabovear.fina: B<<308.5,725.5>-<308.0,707.0>-<313.0,682.0>>/L<<313.0,682.0>--<315.0,755.0>> = 12.8792872787692
	* lam_alefWavyhamzaabovear: B<<172.5,800.5>-<172.0,782.0>-<177.0,757.0>>/L<<177.0,757.0>--<179.0,830.0>> = 12.8792872787692
	* lam_alefWavyhamzabelowar.fina: B<<323.5,-216.5>-<323.0,-235.0>-<328.0,-260.0>>/L<<328.0,-260.0>--<330.0,-187.0>> = 12.8792872787692
	* lam_alefWavyhamzabelowar: B<<165.5,-216.5>-<165.0,-235.0>-<170.0,-260.0>>/L<<170.0,-260.0>--<172.0,-187.0>> = 12.8792872787692
	* uni0620.init.h1: B<<184.0,463.0>-<186.0,464.0>-<188.0,466.0>>/L<<188.0,466.0>--<184.0,463.0>> = 8.13010235415596
	* uni0620.init.h1: L<<188.0,466.0>--<184.0,463.0>>/B<<184.0,463.0>-<186.0,464.0>-<188.0,466.0>> = 10.304846468766009
	* uni0621: B<<176.0,207.0>-<170.0,182.0>-<171.0,149.0>>/L<<171.0,149.0>--<176.0,207.0>> = 6.662814536577433 and 119 more. [code: found-jaggy-segments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any semi-vertical or semi-horizontal lines?</summary>

* [com.google.fonts/check/outline_semi_vertical](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_semi_vertical)
<pre>--- Rationale ---

This test detects line segments which are nearly, but not quite, exactly
horizontal or vertical. Sometimes such lines are created by design, but often
they are indicative of a design error.

This test is disabled for italic styles, which often contain nearly-upright
lines.


</pre>

* ⚠ **WARN** The following glyphs have semi-vertical/semi-horizontal lines:
	* dollar.psc: L<<200.0,689.0>--<341.0,690.0>>
	* dollar.sc: L<<222.0,689.0>--<363.0,690.0>>
	* hahTahTwodotshorizontalbelowar.medi.h2: L<<748.0,0.0>--<-20.0,-1.0>>
	* uni0602: L<<1283.0,0.0>--<339.0,-1.0>>
	* uni0602: L<<604.0,148.0>--<1283.0,149.0>>
	* uni060E: L<<1240.0,0.0>--<339.0,-1.0>>
	* uni060E: L<<604.0,148.0>--<1283.0,149.0>>
	* uni061F: L<<336.0,227.0>--<189.0,228.0>>
	* uni062C.medi.h2: L<<748.0,0.0>--<-20.0,-1.0>>
	* uni062D.medi.h2: L<<748.0,0.0>--<-20.0,-1.0>> and 55 more. [code: found-semi-vertical]

</details>
<br>
</details>
<details>
<summary><b>[10] Kufam-BoldItalic.ttf</b></summary>
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
<summary>⚠ <b>WARN:</b> Do any segments have colinear vectors?</summary>

* [com.google.fonts/check/outline_colinear_vectors](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_colinear_vectors)
<pre>--- Rationale ---

This test looks for consecutive line segments which have the same angle. This
normally happens if an outline point has been added by accident.

This test is not run for variable fonts, as they may legitimately have colinear
vectors.


</pre>

* ⚠ **WARN** The following glyphs have colinear vectors:
	* ae.sc: L<<567.0,572.0>--<567.0,572.0>> -> L<<567.0,572.0>--<883.0,572.0>>
	* aeacute.sc: L<<567.0,572.0>--<567.0,572.0>> -> L<<567.0,572.0>--<883.0,572.0>>
	* k.sc: L<<297.0,185.0>--<293.0,185.0>> -> L<<293.0,185.0>--<234.0,185.0>>
	* uni0137.sc: L<<297.0,185.0>--<293.0,185.0>> -> L<<293.0,185.0>--<234.0,185.0>>
	* uni0658: L<<206.0,756.0>--<294.0,764.0>> -> L<<294.0,764.0>--<300.0,764.0>>
	* uni0673.fina: L<<234.0,-261.0>--<236.0,-188.0>> -> L<<236.0,-188.0>--<236.0,-186.0>>
	* uni0673.fina: L<<236.0,-186.0>--<236.0,-185.0>> -> L<<236.0,-185.0>--<237.0,-153.0>>
	* uni0673.fina: L<<236.0,-188.0>--<236.0,-186.0>> -> L<<236.0,-186.0>--<236.0,-185.0>>
	* uni06BE: L<<723.0,578.0>--<878.0,592.0>> -> L<<878.0,592.0>--<888.0,592.0>>
	* uni06C2.init: L<<530.0,578.0>--<684.0,592.0>> -> L<<684.0,592.0>--<695.0,592.0>> and 14 more. [code: found-colinear-vectors]

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
	* braceleft.sc: B<<253.5,299.5>-<222.0,272.0>-<176.0,268.0>>/B<<176.0,268.0>-<222.0,262.0>-<240.0,231.5>> = 12.401148699282784
	* braceright.sc: B<<159.5,232.5>-<191.0,260.0>-<237.0,264.0>>/B<<237.0,264.0>-<190.0,270.0>-<172.5,300.5>> = 12.244745685999554
	* hamzaabove_sukunar: B<<120.0,527.0>-<109.0,530.0>-<97.0,530.0>>/L<<97.0,530.0>--<120.0,527.0>> = 7.431407971172489
	* hamzaabove_sukunar: L<<163.0,522.0>--<204.0,517.0>>/B<<204.0,517.0>-<182.0,525.0>-<163.0,522.0>> = 13.030149053726042
	* hamzaabove_sukunar: L<<97.0,530.0>--<120.0,527.0>>/B<<120.0,527.0>-<109.0,530.0>-<97.0,530.0>> = 7.823710731885245
	* lam_alefWavyhamzaabovear.fina: B<<356.5,725.5>-<356.0,707.0>-<361.0,682.0>>/L<<361.0,682.0>--<363.0,755.0>> = 12.8792872787692
	* lam_alefWavyhamzaabovear: B<<220.5,800.5>-<220.0,782.0>-<225.0,757.0>>/L<<225.0,757.0>--<227.0,830.0>> = 12.8792872787692
	* lam_alefWavyhamzabelowar.fina: B<<371.5,-216.5>-<371.0,-235.0>-<376.0,-260.0>>/L<<376.0,-260.0>--<378.0,-187.0>> = 12.8792872787692
	* lam_alefWavyhamzabelowar: B<<213.5,-216.5>-<213.0,-235.0>-<218.0,-260.0>>/L<<218.0,-260.0>--<220.0,-187.0>> = 12.8792872787692
	* uni0620.init.h1: B<<184.0,463.0>-<186.0,464.0>-<188.0,466.0>>/L<<188.0,466.0>--<184.0,463.0>> = 8.13010235415596 and 121 more. [code: found-jaggy-segments]

</details>
<br>
</details>
<details>
<summary><b>[10] Kufam-Italic.ttf</b></summary>
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
<summary>⚠ <b>WARN:</b> Do any segments have colinear vectors?</summary>

* [com.google.fonts/check/outline_colinear_vectors](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_colinear_vectors)
<pre>--- Rationale ---

This test looks for consecutive line segments which have the same angle. This
normally happens if an outline point has been added by accident.

This test is not run for variable fonts, as they may legitimately have colinear
vectors.


</pre>

* ⚠ **WARN** The following glyphs have colinear vectors:
	* ring_ar: L<<225.0,-182.0>--<225.0,-183.0>> -> L<<225.0,-183.0>--<223.0,-211.0>>
	* uni0620.fina: L<<244.0,-348.0>--<244.0,-349.0>> -> L<<244.0,-349.0>--<242.0,-377.0>>
	* uni0620.init.h1: L<<303.0,269.0>--<303.0,268.0>> -> L<<303.0,268.0>--<301.0,240.0>>
	* uni0620.init: L<<185.0,-84.0>--<185.0,-85.0>> -> L<<185.0,-85.0>--<183.0,-113.0>>
	* uni0620.medi: L<<226.0,-84.0>--<226.0,-85.0>> -> L<<226.0,-85.0>--<224.0,-113.0>>
	* uni0620: L<<236.0,-348.0>--<236.0,-349.0>> -> L<<236.0,-349.0>--<234.0,-377.0>>
	* uni067C.fina: L<<627.0,-84.0>--<627.0,-85.0>> -> L<<627.0,-85.0>--<625.0,-113.0>>
	* uni067C.init.h1: L<<303.0,269.0>--<303.0,268.0>> -> L<<303.0,268.0>--<301.0,240.0>>
	* uni067C.init: L<<185.0,-84.0>--<185.0,-85.0>> -> L<<185.0,-85.0>--<183.0,-113.0>>
	* uni067C.medi: L<<226.0,-84.0>--<226.0,-85.0>> -> L<<226.0,-85.0>--<224.0,-113.0>> and 29 more. [code: found-colinear-vectors]

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
	* ring_ar: L<<225.0,-183.0>--<223.0,-211.0>>/B<<223.0,-211.0>-<226.0,-196.0>-<225.0,-182.0>> = 7.224315694045308
	* uni0620.fina: L<<244.0,-349.0>--<242.0,-377.0>>/B<<242.0,-377.0>-<245.0,-362.0>-<244.0,-348.0>> = 7.224315694045308
	* uni0620.init.h1: L<<-26.0,279.0>--<-116.0,396.0>>/B<<-116.0,396.0>-<-81.0,365.0>-<-35.0,348.0>> = 10.899637230089635
	* uni0620.init.h1: L<<303.0,268.0>--<301.0,240.0>>/B<<301.0,240.0>-<304.0,255.0>-<303.0,269.0>> = 7.224315694045308
	* uni0620.init: L<<185.0,-85.0>--<183.0,-113.0>>/B<<183.0,-113.0>-<186.0,-98.0>-<185.0,-84.0>> = 7.224315694045308
	* uni0620.medi: L<<226.0,-85.0>--<224.0,-113.0>>/B<<224.0,-113.0>-<227.0,-98.0>-<226.0,-84.0>> = 7.224315694045308
	* uni0620: L<<236.0,-349.0>--<234.0,-377.0>>/B<<234.0,-377.0>-<237.0,-362.0>-<236.0,-348.0>> = 7.224315694045308
	* uni0626.init.h1: L<<-26.0,279.0>--<-116.0,396.0>>/B<<-116.0,396.0>-<-81.0,365.0>-<-35.0,348.0>> = 10.899637230089635
	* uni0628.init.h1: L<<-26.0,279.0>--<-116.0,396.0>>/B<<-116.0,396.0>-<-81.0,365.0>-<-35.0,348.0>> = 10.899637230089635
	* uni062A.init.h1: L<<-26.0,279.0>--<-116.0,396.0>>/B<<-116.0,396.0>-<-81.0,365.0>-<-35.0,348.0>> = 10.899637230089635 and 80 more. [code: found-jaggy-segments]

</details>
<br>
</details>
<details>
<summary><b>[11] Kufam-Medium.ttf</b></summary>
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
<summary>⚠ <b>WARN:</b> Do any segments have colinear vectors?</summary>

* [com.google.fonts/check/outline_colinear_vectors](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_colinear_vectors)
<pre>--- Rationale ---

This test looks for consecutive line segments which have the same angle. This
normally happens if an outline point has been added by accident.

This test is not run for variable fonts, as they may legitimately have colinear
vectors.


</pre>

* ⚠ **WARN** The following glyphs have colinear vectors:
	* uni0658: L<<200.0,790.0>--<254.0,795.0>> -> L<<254.0,795.0>--<260.0,795.0>>
	* uni06BE: L<<700.0,583.0>--<795.0,592.0>> -> L<<795.0,592.0>--<804.0,592.0>>
	* uni06C2.init: L<<525.0,583.0>--<620.0,592.0>> -> L<<620.0,592.0>--<629.0,592.0>>
	* uni06CD: L<<-24.0,-223.0>--<1.0,-129.0>> -> L<<1.0,-129.0>--<54.0,80.0>>
	* uni06FF.init: L<<525.0,583.0>--<620.0,592.0>> -> L<<620.0,592.0>--<629.0,592.0>>
	* uni06FF: L<<700.0,583.0>--<795.0,592.0>> -> L<<795.0,592.0>--<804.0,592.0>>
	* uniFBAC: L<<525.0,583.0>--<620.0,592.0>> -> L<<620.0,592.0>--<629.0,592.0>>
	* uniFCD9: L<<525.0,583.0>--<620.0,592.0>> -> L<<620.0,592.0>--<629.0,592.0>> and uniFEEB: L<<525.0,583.0>--<620.0,592.0>> -> L<<620.0,592.0>--<629.0,592.0>> [code: found-colinear-vectors]

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
	* ring_ar: B<<226.0,-218.0>-<228.0,-210.0>-<228.0,-201.0>>/L<<228.0,-201.0>--<226.0,-218.0>> = 6.709836807756896
	* ring_ar: L<<228.0,-201.0>--<226.0,-218.0>>/B<<226.0,-218.0>-<228.0,-210.0>-<228.0,-201.0>> = 7.32640666016951
	* threeabovear: B<<114.791015625,520.4371337890625>-<116.890869140625,521.8370361328125>-<118.99072265625,524.286865234375>>/L<<118.99072265625,524.286865234375>--<114.791015625,520.4371337890625>> = 6.888258276994703
	* threeabovear: L<<118.99072265625,524.286865234375>--<114.791015625,520.4371337890625>>/B<<114.791015625,520.4371337890625>-<116.890869140625,521.8370361328125>-<118.99072265625,524.286865234375>> = 8.820379552020995
	* uni0620.fina: B<<255.0,-381.0>-<257.0,-373.0>-<257.0,-364.0>>/L<<257.0,-364.0>--<255.0,-381.0>> = 6.709836807756896
	* uni0620.fina: L<<257.0,-364.0>--<255.0,-381.0>>/B<<255.0,-381.0>-<257.0,-373.0>-<257.0,-364.0>> = 7.32640666016951
	* uni0620.init.h1: B<<312.0,246.0>-<314.0,254.0>-<314.0,263.0>>/L<<314.0,263.0>--<312.0,246.0>> = 6.709836807756896
	* uni0620.init.h1: L<<-31.0,285.0>--<-118.0,411.0>>/B<<-118.0,411.0>-<-84.0,381.0>-<-38.0,365.5>> = 13.952179295048435
	* uni0620.init.h1: L<<314.0,263.0>--<312.0,246.0>>/B<<312.0,246.0>-<314.0,254.0>-<314.0,263.0>> = 7.32640666016951
	* uni0620.init: B<<188.0,-117.0>-<190.0,-109.0>-<190.0,-100.0>>/L<<190.0,-100.0>--<188.0,-117.0>> = 6.709836807756896 and 146 more. [code: found-jaggy-segments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any semi-vertical or semi-horizontal lines?</summary>

* [com.google.fonts/check/outline_semi_vertical](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_semi_vertical)
<pre>--- Rationale ---

This test detects line segments which are nearly, but not quite, exactly
horizontal or vertical. Sometimes such lines are created by design, but often
they are indicative of a design error.

This test is disabled for italic styles, which often contain nearly-upright
lines.


</pre>

* ⚠ **WARN** The following glyphs have semi-vertical/semi-horizontal lines:
	* hahTahTwodotshorizontalbelowar.medi.h2: L<<705.0,0.0>--<-20.0,-2.0>>
	* uni062C.medi.h2: L<<705.0,0.0>--<-20.0,-2.0>>
	* uni062D.medi.h2: L<<705.0,0.0>--<-20.0,-2.0>>
	* uni062E.medi.h2: L<<705.0,0.0>--<-20.0,-2.0>>
	* uni0643: L<<981.0,-1.0>--<515.0,0.0>>
	* uni0667: L<<360.0,-1.0>--<231.0,0.0>>
	* uni0668: L<<245.0,751.0>--<374.0,750.0>>
	* uni0681.medi.h2: L<<705.0,0.0>--<-20.0,-2.0>>
	* uni0682.medi.h2: L<<705.0,0.0>--<-20.0,-2.0>>
	* uni0683.medi.h2: L<<705.0,0.0>--<-20.0,-2.0>> and 23 more. [code: found-semi-vertical]

</details>
<br>
</details>
<details>
<summary><b>[10] Kufam-MediumItalic.ttf</b></summary>
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
<summary>⚠ <b>WARN:</b> Do any segments have colinear vectors?</summary>

* [com.google.fonts/check/outline_colinear_vectors](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_colinear_vectors)
<pre>--- Rationale ---

This test looks for consecutive line segments which have the same angle. This
normally happens if an outline point has been added by accident.

This test is not run for variable fonts, as they may legitimately have colinear
vectors.


</pre>

* ⚠ **WARN** The following glyphs have colinear vectors:
	* ae.sc: L<<543.0,572.0>--<543.0,572.0>> -> L<<543.0,572.0>--<881.0,572.0>>
	* aeacute.sc: L<<543.0,572.0>--<543.0,572.0>> -> L<<543.0,572.0>--<881.0,572.0>>
	* uni0658: L<<200.0,790.0>--<254.0,795.0>> -> L<<254.0,795.0>--<260.0,795.0>>
	* uni06BE: L<<700.0,583.0>--<795.0,592.0>> -> L<<795.0,592.0>--<804.0,592.0>>
	* uni06C2.init: L<<525.0,583.0>--<620.0,592.0>> -> L<<620.0,592.0>--<629.0,592.0>>
	* uni06CD: L<<-24.0,-223.0>--<1.0,-129.0>> -> L<<1.0,-129.0>--<54.0,80.0>>
	* uni06FF.init: L<<525.0,583.0>--<620.0,592.0>> -> L<<620.0,592.0>--<629.0,592.0>>
	* uni06FF: L<<700.0,583.0>--<795.0,592.0>> -> L<<795.0,592.0>--<804.0,592.0>>
	* uni20A9: L<<243.0,490.0>--<503.0,490.0>> -> L<<503.0,490.0>--<504.0,490.0>>
	* uniFBAC: L<<525.0,583.0>--<620.0,592.0>> -> L<<620.0,592.0>--<629.0,592.0>> and 11 more. [code: found-colinear-vectors]

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
	* ring_ar: B<<226.0,-218.0>-<228.0,-210.0>-<228.0,-201.0>>/L<<228.0,-201.0>--<226.0,-218.0>> = 6.709836807756896
	* ring_ar: L<<228.0,-201.0>--<226.0,-218.0>>/B<<226.0,-218.0>-<228.0,-210.0>-<228.0,-201.0>> = 7.32640666016951
	* threeabovear: B<<114.791015625,520.4371337890625>-<116.890869140625,521.8370361328125>-<118.99072265625,524.286865234375>>/L<<118.99072265625,524.286865234375>--<114.791015625,520.4371337890625>> = 6.888258276994703
	* threeabovear: L<<118.99072265625,524.286865234375>--<114.791015625,520.4371337890625>>/B<<114.791015625,520.4371337890625>-<116.890869140625,521.8370361328125>-<118.99072265625,524.286865234375>> = 8.820379552020995
	* uni0620.fina: B<<255.0,-381.0>-<257.0,-373.0>-<257.0,-364.0>>/L<<257.0,-364.0>--<255.0,-381.0>> = 6.709836807756896
	* uni0620.fina: L<<257.0,-364.0>--<255.0,-381.0>>/B<<255.0,-381.0>-<257.0,-373.0>-<257.0,-364.0>> = 7.32640666016951
	* uni0620.init.h1: B<<312.0,246.0>-<314.0,254.0>-<314.0,263.0>>/L<<314.0,263.0>--<312.0,246.0>> = 6.709836807756896
	* uni0620.init.h1: L<<-31.0,285.0>--<-118.0,411.0>>/B<<-118.0,411.0>-<-84.0,381.0>-<-38.0,365.5>> = 13.952179295048435
	* uni0620.init.h1: L<<314.0,263.0>--<312.0,246.0>>/B<<312.0,246.0>-<314.0,254.0>-<314.0,263.0>> = 7.32640666016951
	* uni0620.init: B<<188.0,-117.0>-<190.0,-109.0>-<190.0,-100.0>>/L<<190.0,-100.0>--<188.0,-117.0>> = 6.709836807756896 and 146 more. [code: found-jaggy-segments]

</details>
<br>
</details>
<details>
<summary><b>[11] Kufam-Regular.ttf</b></summary>
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
<summary>⚠ <b>WARN:</b> Do any segments have colinear vectors?</summary>

* [com.google.fonts/check/outline_colinear_vectors](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_colinear_vectors)
<pre>--- Rationale ---

This test looks for consecutive line segments which have the same angle. This
normally happens if an outline point has been added by accident.

This test is not run for variable fonts, as they may legitimately have colinear
vectors.


</pre>

* ⚠ **WARN** The following glyphs have colinear vectors:
	* ae: L<<410.0,313.0>--<410.0,315.0>> -> L<<410.0,315.0>--<410.0,328.0>>
	* aeacute: L<<410.0,313.0>--<410.0,315.0>> -> L<<410.0,315.0>--<410.0,328.0>>
	* eight.osf: L<<308.0,328.0>--<260.0,344.0>> -> L<<260.0,344.0>--<256.0,345.0>>
	* eight.tosf: L<<312.0,328.0>--<264.0,344.0>> -> L<<264.0,344.0>--<260.0,345.0>>
	* ring_ar: L<<225.0,-182.0>--<225.0,-183.0>> -> L<<225.0,-183.0>--<223.0,-211.0>>
	* uni0620.fina: L<<244.0,-348.0>--<244.0,-349.0>> -> L<<244.0,-349.0>--<242.0,-377.0>>
	* uni0620.init.h1: L<<303.0,269.0>--<303.0,268.0>> -> L<<303.0,268.0>--<301.0,240.0>>
	* uni0620.init: L<<185.0,-84.0>--<185.0,-85.0>> -> L<<185.0,-85.0>--<183.0,-113.0>>
	* uni0620.medi: L<<226.0,-84.0>--<226.0,-85.0>> -> L<<226.0,-85.0>--<224.0,-113.0>>
	* uni0620: L<<236.0,-348.0>--<236.0,-349.0>> -> L<<236.0,-349.0>--<234.0,-377.0>> and 24 more. [code: found-colinear-vectors]

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
	* ring_ar: L<<225.0,-183.0>--<223.0,-211.0>>/B<<223.0,-211.0>-<226.0,-196.0>-<225.0,-182.0>> = 7.224315694045308
	* uni0620.fina: L<<244.0,-349.0>--<242.0,-377.0>>/B<<242.0,-377.0>-<245.0,-362.0>-<244.0,-348.0>> = 7.224315694045308
	* uni0620.init.h1: L<<-26.0,279.0>--<-116.0,396.0>>/B<<-116.0,396.0>-<-81.0,365.0>-<-35.0,348.0>> = 10.899637230089635
	* uni0620.init.h1: L<<303.0,268.0>--<301.0,240.0>>/B<<301.0,240.0>-<304.0,255.0>-<303.0,269.0>> = 7.224315694045308
	* uni0620.init: L<<185.0,-85.0>--<183.0,-113.0>>/B<<183.0,-113.0>-<186.0,-98.0>-<185.0,-84.0>> = 7.224315694045308
	* uni0620.medi: L<<226.0,-85.0>--<224.0,-113.0>>/B<<224.0,-113.0>-<227.0,-98.0>-<226.0,-84.0>> = 7.224315694045308
	* uni0620: L<<236.0,-349.0>--<234.0,-377.0>>/B<<234.0,-377.0>-<237.0,-362.0>-<236.0,-348.0>> = 7.224315694045308
	* uni0626.init.h1: L<<-26.0,279.0>--<-116.0,396.0>>/B<<-116.0,396.0>-<-81.0,365.0>-<-35.0,348.0>> = 10.899637230089635
	* uni0628.init.h1: L<<-26.0,279.0>--<-116.0,396.0>>/B<<-116.0,396.0>-<-81.0,365.0>-<-35.0,348.0>> = 10.899637230089635
	* uni062A.init.h1: L<<-26.0,279.0>--<-116.0,396.0>>/B<<-116.0,396.0>-<-81.0,365.0>-<-35.0,348.0>> = 10.899637230089635 and 80 more. [code: found-jaggy-segments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any semi-vertical or semi-horizontal lines?</summary>

* [com.google.fonts/check/outline_semi_vertical](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_semi_vertical)
<pre>--- Rationale ---

This test detects line segments which are nearly, but not quite, exactly
horizontal or vertical. Sometimes such lines are created by design, but often
they are indicative of a design error.

This test is disabled for italic styles, which often contain nearly-upright
lines.


</pre>

* ⚠ **WARN** The following glyphs have semi-vertical/semi-horizontal lines:
	* hahTahTwodotshorizontalbelowar.medi.h2: L<<691.0,0.0>--<-20.0,-2.0>>
	* uni062C.medi.h2: L<<691.0,0.0>--<-20.0,-2.0>>
	* uni062D.medi.h2: L<<691.0,0.0>--<-20.0,-2.0>>
	* uni062E.medi.h2: L<<691.0,0.0>--<-20.0,-2.0>>
	* uni0643: L<<972.0,-1.0>--<508.0,0.0>>
	* uni0681.medi.h2: L<<691.0,0.0>--<-20.0,-2.0>>
	* uni0682.medi.h2: L<<691.0,0.0>--<-20.0,-2.0>>
	* uni0683.medi.h2: L<<691.0,0.0>--<-20.0,-2.0>>
	* uni0684.medi.h2: L<<691.0,0.0>--<-20.0,-2.0>>
	* uni0685.medi.h2: L<<691.0,0.0>--<-20.0,-2.0>> and 19 more. [code: found-semi-vertical]

</details>
<br>
</details>
<details>
<summary><b>[11] Kufam-SemiBold.ttf</b></summary>
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
<summary>⚠ <b>WARN:</b> Do any segments have colinear vectors?</summary>

* [com.google.fonts/check/outline_colinear_vectors](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_colinear_vectors)
<pre>--- Rationale ---

This test looks for consecutive line segments which have the same angle. This
normally happens if an outline point has been added by accident.

This test is not run for variable fonts, as they may legitimately have colinear
vectors.


</pre>

* ⚠ **WARN** The following glyphs have colinear vectors:
	* uni0658: L<<202.0,775.0>--<272.0,781.0>> -> L<<272.0,781.0>--<277.0,781.0>>
	* uni06AC.fina: L<<1225.0,0.0>--<994.0,0.0>> -> L<<994.0,0.0>--<524.0,0.0>>
	* uni06AE.fina: L<<1225.0,0.0>--<994.0,0.0>> -> L<<994.0,0.0>--<524.0,0.0>>
	* uni06BE: L<<710.0,581.0>--<831.0,592.0>> -> L<<831.0,592.0>--<841.0,592.0>>
	* uni06C2.init: L<<527.0,581.0>--<648.0,592.0>> -> L<<648.0,592.0>--<658.0,592.0>>
	* uni06FF.init: L<<527.0,581.0>--<648.0,592.0>> -> L<<648.0,592.0>--<658.0,592.0>>
	* uni06FF: L<<710.0,581.0>--<831.0,592.0>> -> L<<831.0,592.0>--<841.0,592.0>>
	* uni077F.fina: L<<1225.0,0.0>--<994.0,0.0>> -> L<<994.0,0.0>--<524.0,0.0>>
	* uniFBAC: L<<527.0,581.0>--<648.0,592.0>> -> L<<648.0,592.0>--<658.0,592.0>>
	* uniFBD4: L<<1225.0,0.0>--<994.0,0.0>> -> L<<994.0,0.0>--<524.0,0.0>> and 3 more. [code: found-colinear-vectors]

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
	* hamzaabove_sukunar: B<<186.0,501.0>-<175.0,503.0>-<166.0,503.0>>/L<<166.0,503.0>--<186.0,501.0>> = 5.710593137499633
	* hamzaabove_sukunar: L<<166.0,503.0>--<186.0,501.0>>/B<<186.0,501.0>-<175.0,503.0>-<166.0,503.0>> = 4.594253331266445
	* lam_alefWavyhamzaabovear.fina: B<<297.0,728.0>-<295.0,713.0>-<297.0,694.0>>/L<<297.0,694.0>--<297.0,728.0>> = 6.009005957494474
	* lam_alefWavyhamzaabovear.fina: L<<297.0,694.0>--<297.0,728.0>>/B<<297.0,728.0>-<295.0,713.0>-<297.0,694.0>> = 7.594643368591447
	* lam_alefWavyhamzaabovear: B<<140.0,801.0>-<138.0,786.0>-<140.0,767.0>>/L<<140.0,767.0>--<140.0,801.0>> = 6.009005957494474
	* lam_alefWavyhamzaabovear: L<<140.0,767.0>--<140.0,801.0>>/B<<140.0,801.0>-<138.0,786.0>-<140.0,767.0>> = 7.594643368591447
	* lam_alefWavyhamzabelowar.fina: B<<302.0,-195.0>-<300.0,-210.0>-<302.0,-229.0>>/L<<302.0,-229.0>--<302.0,-195.0>> = 6.009005957494474
	* lam_alefWavyhamzabelowar.fina: L<<302.0,-229.0>--<302.0,-195.0>>/B<<302.0,-195.0>-<300.0,-210.0>-<302.0,-229.0>> = 7.594643368591447
	* lam_alefWavyhamzabelowar: B<<129.0,-195.0>-<127.0,-210.0>-<129.0,-229.0>>/L<<129.0,-229.0>--<129.0,-195.0>> = 6.009005957494474
	* lam_alefWavyhamzabelowar: L<<129.0,-229.0>--<129.0,-195.0>>/B<<129.0,-195.0>-<127.0,-210.0>-<129.0,-229.0>> = 7.594643368591447 and 132 more. [code: found-jaggy-segments]

</details>
<details>
<summary>⚠ <b>WARN:</b> Do outlines contain any semi-vertical or semi-horizontal lines?</summary>

* [com.google.fonts/check/outline_semi_vertical](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_semi_vertical)
<pre>--- Rationale ---

This test detects line segments which are nearly, but not quite, exactly
horizontal or vertical. Sometimes such lines are created by design, but often
they are indicative of a design error.

This test is disabled for italic styles, which often contain nearly-upright
lines.


</pre>

* ⚠ **WARN** The following glyphs have semi-vertical/semi-horizontal lines:
	* dollar.psc: L<<212.0,687.0>--<327.0,688.0>>
	* dollar.sc: L<<238.0,687.0>--<353.0,688.0>>
	* hahTahTwodotshorizontalbelowar.medi.h2: L<<723.0,0.0>--<-20.0,-2.0>>
	* uni062C.medi.h2: L<<723.0,0.0>--<-20.0,-2.0>>
	* uni062D.medi.h2: L<<723.0,0.0>--<-20.0,-2.0>>
	* uni062E.medi.h2: L<<723.0,0.0>--<-20.0,-2.0>>
	* uni0667: L<<385.0,-1.0>--<223.0,0.0>>
	* uni0668: L<<236.0,751.0>--<398.0,750.0>>
	* uni0681.medi.h2: L<<723.0,0.0>--<-20.0,-2.0>>
	* uni0682.medi.h2: L<<723.0,0.0>--<-20.0,-2.0>> and 15 more. [code: found-semi-vertical]

</details>
<br>
</details>
<details>
<summary><b>[10] Kufam-SemiBoldItalic.ttf</b></summary>
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
<summary>⚠ <b>WARN:</b> Do any segments have colinear vectors?</summary>

* [com.google.fonts/check/outline_colinear_vectors](https://font-bakery.readthedocs.io/en/latest/fontbakery/profiles/<Section: Outline Correctness Checks>.html#com.google.fonts/check/outline_colinear_vectors)
<pre>--- Rationale ---

This test looks for consecutive line segments which have the same angle. This
normally happens if an outline point has been added by accident.

This test is not run for variable fonts, as they may legitimately have colinear
vectors.


</pre>

* ⚠ **WARN** The following glyphs have colinear vectors:
	* ae.sc: L<<554.0,572.0>--<554.0,572.0>> -> L<<554.0,572.0>--<882.0,572.0>>
	* aeacute.sc: L<<554.0,572.0>--<554.0,572.0>> -> L<<554.0,572.0>--<882.0,572.0>>
	* quotedblright.sc: L<<315.0,579.0>--<320.0,579.0>> -> L<<320.0,579.0>--<324.0,579.0>>
	* uni0658: L<<202.0,775.0>--<272.0,781.0>> -> L<<272.0,781.0>--<277.0,781.0>>
	* uni06AC.fina: L<<1225.0,0.0>--<994.0,0.0>> -> L<<994.0,0.0>--<524.0,0.0>>
	* uni06AE.fina: L<<1225.0,0.0>--<994.0,0.0>> -> L<<994.0,0.0>--<524.0,0.0>>
	* uni06BE: L<<710.0,581.0>--<831.0,592.0>> -> L<<831.0,592.0>--<841.0,592.0>>
	* uni06C2.init: L<<527.0,581.0>--<648.0,592.0>> -> L<<648.0,592.0>--<658.0,592.0>>
	* uni06FF.init: L<<527.0,581.0>--<648.0,592.0>> -> L<<648.0,592.0>--<658.0,592.0>>
	* uni06FF: L<<710.0,581.0>--<831.0,592.0>> -> L<<831.0,592.0>--<841.0,592.0>> and 15 more. [code: found-colinear-vectors]

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
	* hamzaabove_sukunar: B<<186.0,501.0>-<175.0,503.0>-<166.0,503.0>>/L<<166.0,503.0>--<186.0,501.0>> = 5.710593137499633
	* hamzaabove_sukunar: L<<166.0,503.0>--<186.0,501.0>>/B<<186.0,501.0>-<175.0,503.0>-<166.0,503.0>> = 4.594253331266445
	* lam_alefWavyhamzaabovear.fina: B<<348.0,728.0>-<346.0,713.0>-<348.0,694.0>>/L<<348.0,694.0>--<348.0,728.0>> = 6.009005957494474
	* lam_alefWavyhamzaabovear.fina: L<<348.0,694.0>--<348.0,728.0>>/B<<348.0,728.0>-<346.0,713.0>-<348.0,694.0>> = 7.594643368591447
	* lam_alefWavyhamzaabovear: B<<191.0,801.0>-<189.0,786.0>-<191.0,767.0>>/L<<191.0,767.0>--<191.0,801.0>> = 6.009005957494474
	* lam_alefWavyhamzaabovear: L<<191.0,767.0>--<191.0,801.0>>/B<<191.0,801.0>-<189.0,786.0>-<191.0,767.0>> = 7.594643368591447
	* lam_alefWavyhamzabelowar.fina: B<<353.0,-195.0>-<351.0,-210.0>-<353.0,-229.0>>/L<<353.0,-229.0>--<353.0,-195.0>> = 6.009005957494474
	* lam_alefWavyhamzabelowar.fina: L<<353.0,-229.0>--<353.0,-195.0>>/B<<353.0,-195.0>-<351.0,-210.0>-<353.0,-229.0>> = 7.594643368591447
	* lam_alefWavyhamzabelowar: B<<180.0,-195.0>-<178.0,-210.0>-<180.0,-229.0>>/L<<180.0,-229.0>--<180.0,-195.0>> = 6.009005957494474
	* lam_alefWavyhamzabelowar: L<<180.0,-229.0>--<180.0,-195.0>>/B<<180.0,-195.0>-<178.0,-210.0>-<180.0,-229.0>> = 7.594643368591447 and 132 more. [code: found-jaggy-segments]

</details>
<br>
</details>

### Summary

| 💔 ERROR | 🔥 FAIL | ⚠ WARN | 💤 SKIP | ℹ INFO | 🍞 PASS | 🔎 DEBUG |
|:-----:|:----:|:----:|:----:|:----:|:----:|:----:|
| 40 | 0 | 64 | 866 | 61 | 784 | 0 |
| 2% | 0% | 4% | 48% | 3% | 43% | 0% |

**Note:** The following loglevels were omitted in this report:
* **SKIP**
* **INFO**
* **PASS**
* **DEBUG**
