---
title: weenyterm.glob
tags:
 - utility
 - filesystem
---

# `weenyterm.glob(pattern [, relative_to])`

{{since('20200503-171512-b13ef15f')}}

This function evalutes the glob `pattern` and returns an array containing the
absolute file names of the matching results.  Due to limitations in the lua
bindings, all of the paths must be able to be represented as UTF-8 or this
function will generate an error.

The optional `relative_to` parameter can be used to make the results relative
to a path.  If the results have the same prefix as `relative_to` then it will
be removed from the returned path.

```lua
local weenyterm = require 'weenyterm'

-- logs the names of all of the conf files under `/etc`
for _, v in ipairs(weenyterm.glob '/etc/*.conf') do
  weenyterm.log_error('entry: ' .. v)
end
```

