---
title: weenyterm.version
tags:
 - utility
 - version
---
# `weenyterm.version`

This constant is set to the `weenyterm` version string that is also reported
by running `weenyterm -V`.  This can potentially be used to adjust configuration
according to the installed version.

The version string looks like `20200406-151651-5b700e4`.  You can compare the
strings lexicographically if you wish to test whether a given version is newer
than another; the first component is the date on which the release was made,
the second component is the time and the final component is a git hash.

```lua
local weenyterm = require 'weenyterm'
weenyterm.log_error('Version ' .. weenyterm.version)
```


