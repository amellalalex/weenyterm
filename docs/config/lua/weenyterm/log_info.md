---
title: weenyterm.log_info
tags:
 - utility
 - log
 - debug
---
# `weenyterm.log_info(arg, ..)`

{{since('20210314-114017-04b7cedd')}}

This function logs the provided message string through weenyterm's logging layer
at 'INFO' level.  If you started weenyterm from a terminal that text will print
to the stdout of that terminal.  If running as a daemon for the multiplexer
server then it will be logged to the daemon output path.

```lua
local weenyterm = require 'weenyterm'
weenyterm.log_info 'Hello!'
```

{{since('20210814-124438-54e29167')}}

Now accepts multiple arguments, and those arguments can be of any type.


See also [log_error](log_error.md) and [log_warn](log_warn.md).

