# Noto CJK Variable Fonts

## What's up with all these split packages?

That's a lot of split packages, I suggest that you read the fonts formats documentation in the
`README.md` files of the [Sans](https://github.com/googlefonts/noto-cjk/blob/main/Sans/README.md) and [Serif](https://github.com/googlefonts/noto-cjk/blob/main/Serif/README.md) fonts before asking what you should install.

There are 3 types of packages here:

* `noto-fonts-cjk-vf`: `Variable OTCs`  
  This doesn't work correctly everywhere, use the `Variable Multilingual OTF`, for more details see
  the OpenType locl issue section bellow.
* `noto-fonts-cjk{-language}-vf`: `Variable Multilingual OTF`  
  Multi-lingual CJK fonts with a default language set, for applications that don't apply OpenType locl.
* `noto-fonts{-language}-vf`: `Variable Region-specific OTF`  
  Containing only a subset version of the font for a specific language.  
  Multi-lingual monospace font is packaged becasue there aren't subset versions of monospace fonts.
  I'm not completely sure about the font config for the monospace font, so feedback would be appreciated.

## OpenType locl issue with Pango apps

I expected that `Variable OTCs` fonts will fall back to a preferred language for characters based
on the environment variables `LANG`, `LANGUAGE`, `FC_LANG`, and `PANGO_LANGUAGE`.  
My understanding is that a fallback is needed when a language of a text cannot be defined or
auto-recognized (or too costly to recognize) by the application, which is required for choosing the
correct glyphs from fonts that have no default language defined.  
But this doesn't seem to work with apps that make use of Pango, so placeholder glyphs are shown
instead of CJK characters.  
For the time being, the `Variable OTCs` fonts are not usable with most apps, and you should install
one of the `Variable Multilingual OTF` fonts packages.  

It should be noted that it's possible to make due with the `Variable OTCs` package by explicitly
configuring apps to load the specific regional/language font variant (e.g. `Noto Sans CJK SC`), and
by using the `<alias>` and `<prefer>` elements in `fonts.conf` (see details in [the Arch Wiki](https://wiki.archlinux.org/title/Fonts#Fallback_font_order)),
but it might be a hit-and-miss, and this should have worked without extra settings, automatically
loading the missing glyphs from the CJK fonts.

## Other notes

* The packaged fonts versions will lag a couple of days behind the latest upstream release.  
  This is because Github's auto-generated tarball for the latest git commit is not available
  immediately, likely due to the size of ref checkout.  
  I prefer to avoid switching to a git source, as cloning is too slow, and ~7GB git repo is not
  something I want to keep around for a package that does not requires frequent updates.

## Updates

* 2022-02-23: A section about OpenType locl issue with Pango apps was added. It's recommended to
  avoid the `Variable OTCs` package.
* 2022-01-26: There are now variable Serif fonts for all the languages. The generated packages are much smaller.
