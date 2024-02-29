---
tags:
  - font
---
# `font_dirs`

By default, weenyterm will use an appropriate system-specific method for
locating the fonts that you specify using the options below.  In addition,
if you configure the `font_dirs` option, weenyterm will load fonts from that
set of directories:

```lua
-- This tells weenyterm to look first for fonts in the directory named
-- `fonts` that is found alongside your `weenyterm.lua` file.
-- As this option is an array, you may list multiple locations if
-- you wish.
config.font_dirs = { 'fonts' }
```

weenyterm will scan the `font_dirs` to build a database of available fonts.  When
resolving a font, weenyterm will first use the configured
[font_locator](font_locator.md) which is typically the system specific font
resolver.  If the system doesn't resolve the requested font, the fonts from
`font_dirs` are searched for a match.

If you want to only find fonts from your `font_dirs`, perhaps because you have
a self-contained weenyterm config that you carry around with you between multiple
systems and don't want to install those fonts on every system that you use,
then you can set:

```lua
config.font_locator = 'ConfigDirsOnly'
```


