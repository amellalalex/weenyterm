---
title: weenyterm.pad_right
tags:
 - utility
 - string
---
# weenyterm.pad_right(string, min_width)

{{since('20210502-130208-bff6815d')}}

Returns a copy of `string` that is at least `min_width` columns
(as measured by [weenyterm.column_width](column_width.md)).

If the string is shorter than `min_width`, spaces are added to
the right end of the string.

For example, `weenyterm.pad_right("o", 3)` returns `"o  "`.

See also: [weenyterm.truncate_left](truncate_left.md), [weenyterm.pad_left](pad_left.md).



