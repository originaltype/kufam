# Kufam Development log

Some notes and info that can be useful during the development.

# To-do List
- (A) Fill empty glyphs cells
    + romans: `emptyset commaturnedmod ringhalfright ringhalfleft verticallinemod secondtonechinese fourthtonechinese verticallinelowmod primemod second`
    + italics: `emptyset commaturnedmod ringhalfright ringhalfleft verticallinemod secondtonechinese fourthtonechinese verticallinelowmod primemod second`
- (A) Add `IJ.loclNLD` and others
- (A) Define Glyph Order
- (G) Check and extend kerning groups to new glyphs
- (G) Write proper OT features
- (A) Check diacritics aligning
- (A) Remove old postcript hints
- (G) Set font info and custom parameters (PS autohint, vertical metrics, etc )
- (G) Last roman vs italics consistency checks
- (G) Revision of generated binaries


### Thursday December 13 | Commit c73de2a

## Kufam Latin Italic Master 

This commit includes major changes to fit the Google Fonts charset and adjustments for the sake of prolixity of the source file and faster development and mantainance.

### Some major changes

- Big glyph renaming
- Addition of new glyphs
- Added anchors to all glyphs
- Very rough alignment of diacritics
- Build of all accented glyphs using components
- Rebuild of some glyphs based on components like `.case` punctuation.
- Rebuild of some figure styles
- Various metrics linking in glyphs that are no letters. (ie. `nbspace` takes width from `space`)

### Notes and color marks

I added the GF glyphset as Glyph order custom parameter to see clearly, during the development, wich glyphs are not included in the charset and need to be renamed, added or deleted from the final font. In the general view all that is left outside the "Predefined Sorting" category is what is not included on GF charset.

I had to add the previously removed **italic angle** because it speeds a lot the production since you can link metrics of verticaly displaced components (ie. .case, .numr, .dnom, etc.). Is there a downside of usign it? Should we remove it again?

Not marked with any color those new glyphs that are empty (ie. `Schwa`) or doesn’t have been rebuilted or touched yet (ie. `a.inferior).

With **dark green** color are those that are new or rebuilted using components and need some kind of work or revision like correct anchor positioning for diacritic aligment, or 

In **orange** those that may need some outline revision.

- `circumflexcomb` (bold master) the contrast looks reflexed
- `dblgravecomb` (both masters) I made it pasting two graves just to fill the glyph cell.  

With **dark gray** those glyphs that I have some kind of doubt regarding the GF charset.

- `prime`: is included in GF charset but it doesn’t point to any unicode value. Maybe they want to refer to `primemod` or `minute`?
- The GF charset includes `DZcaron`, `Dzcaron`, `dzcaron`, `dzcaron.sc` but not `DZ, dz.sc, dz` normally they are included in most fonts. Should we include them or leave them out?
- GF charset includes case sensitive forms but strangely leave outisde these ones: `exclamdown.case`, `questiondown.case`, `parenleft.case`. 

### Figures new suffixes

After the renaming of glyphs I also modified the figures suffix to match the one of the "standard" way of naming them.

`.osf`  = Oldstyle figures
`.tosf` = Tabular Oldstyle figures
`.lf`   = Proportional Lining figure
`.tf`   = Tabular Lining figure
`.psc`  = Proportional Smallcaps figures
`.tsc`  = Tabular Smallcaps figures




