
## Kufam design information

Kufam is a Arabic-Latin bilingual typeface intended for contemporary information design such as signage and wayfinding systems. Kufam Arabic is inspired by 7th-century Kufi inscriptions. The dark, condensed shapes of this early Kufi script also served as an inspiration for Kufam's Latin lowercase, as where the Latin capitals find their roots in lettering as frequently seen in signage and shop lettering in Amsterdam at the beginning of the twentieth century. All these inspirations from sources in different periods in history of the Arabic and Latin world cumulate in a contemporary, legible and aesthetically rich design for use across different media.

---

## Kufam history

Kufam was conceived within the framework of The typographic matchmaking 2.0 project during the period 2008-2010. Several design teams were given the task to design a new font family and simultaneously develop the Arabic and Latin character set. It was the projects brief that he fonts would have to function within the Western (Amsterdam) and Eastern (Dubai) modern urban. These efforts resulated in an 5 weight family with an Arabic and Latin roman and italic characterset.

In 2014 Kufam was published on the now defunct type label OurType, where the font development team expanded the characterset from Standard to Pro and remastered the fonts. Kufam was available on OurType until 2017.

From 2018 Kufam was reworked to meet Google Fonts Latin Expert and Arabic charactersets and in 2020 Kufam was made available on Google Fonts as a variable font.

---
## Family overview

The font family Kufam is made out of two variable font (VF) files with romans and italics for Latin, both files share the same Arabic character set.

Kufam[wght].ttf | Kufam-Italic[wght].ttf
------------ | -------------
Arabic + Latin roman | Arabic + Latin italic

Named instances: | Named instances: 
------------ | -------------
Regular (400) | Italic (400)
Medium (500) | Medium Italic (500)
SemiBold (600) | SemiBold Italic (600)
Bold (700) | Bold Italic (700)
Black (900) | Black Italic (900)

---
## Variable Axes

Kufam has the following has a weight (wght) axis ranging from 100 (default) to 900.

## Contributing

The Kufam fonts have two source files, one for romans `Kufam_Arabic_Latin_Roman_Master.glyphs` and one of italics `Kufam_Latin_Italic_Master.glyphs`.
The source files are in Glyphs format. You can purchase a license or download a trial verion [here](https://www.glyphsapp.com).

To contribute to the project, file issues at <https://github.com/originaltype/kufam/issues>.

---
## Contributions or modifications to the Arabic characterset

Both Glyphs source files share the same characterset. If there are modifications made to the Arabic, it's of importance to copy the set to the other source file as well so that both VF's are in sync. Preferably make the changes or modifications in the source file containing the [Latin roman set](https://github.com/originaltype/kufam/blob/decompose-nested-transformed-components/sources/Kufam_Arabic_Latin_Roman_Master.glyphs). Then copy the complete Arabic set to the file containing the [Latin italic set](https://github.com/originaltype/kufam/blob/decompose-nested-transformed-components/sources/Kufam_Latin_Italic_Master.glyphs).

Here's a step by step process to do so:
* Open Glyphs app (download a free trial [here](https://glyphsapp.com/buy))
* Open the file `Kufam_Arabic_Latin_Roman_Master.glyphs`
* Make your modifications
* Copy the contents of the names of all Arabic glyphs from [this](https://github.com/originaltype/kufam/blob/decompose-nested-transformed-components/sources/current%20Arabic%20glyph%20set.txt) text file
* In Glyphs make a List Filter and paste the copied glyphs in there.
* Select the List Filter
* Select all glyphs visible in the Font View window
* Open the file `Kufam_Latin_Italic_Master.glyphs`
* Press alt+cmd+v (Paste Special)
* Select the following options:
  * ![Paste Special options](https://github.com/originaltype/kufam/blob/decompose-nested-transformed-components/working%20files/paste-special-glyphs-app.png)

* Save the changes

The Arabic sets are now in sync again between the two files. You can proceed to the build font files process.

---
## Build Process

The fonts can be build with by running a .sh script using a terminal.

### Step 1: Set up the project locally

The build process requires you to open up a terminal and navigate to this project's directory. Open a terminal, then navigate to a directory (folder) for type projects, and git clone this repo.

```bash
cd path/to/your_local_type_repos_directory

# then
git clone https://github.com/originaltype/kufam.git
```

### Step 2: Give permissions to build scripts

The first time you run the build, you will need to give run permissions to the build scripts.

On the command line, navigate to the project folder (`cd path/to/type_repos_directory/kufam`), and then give permissions to the shell scripts with:

```bash
chmod +x sources/*.sh
```

Using `chmod +x` gives shell scripts execute permissions. In general, before you do this for shell scripts, you should probably take a look through their contents, to be sure they aren't doing anything you don't want them to do. The ones in this repo simply build from the GlyphsApp sources and apply various fixes to the results.

### Step 3: Run the build script

Now, run the build script by entering its relative path in your terminal:

```bash
sources/build.sh
```

After running the build script fresh TTF an VF fonts are placed in the `/Fonts` directory.


