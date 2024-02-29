---
title: weenyterm.truncate_right
tags:
 - utility
 - string
---
# weenyterm.truncate_right(string, max_width)

{{since('20210502-130208-bff6815d')}}

Returns a copy of `string` that is no longer than `max_width` columns
(as measured by [weenyterm.column_width](column_width.md)).

Truncation occurs by reemoving excess characters from the right end
of the string.

For example, `weenyterm.truncate_right("hello", 3)` returns `"hel"`,

See also: [weenyterm.truncate_left](truncate_left.md), [weenyterm.pad_left](pad_left.md).
