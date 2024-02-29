---
title: weenyterm.config_file
tags:
 - filesystem
---

# `weenyterm.config_file`

{{since('20210502-130208-bff6815d')}}

This constant is set to the path to the `weenyterm.lua` that is in use.

```lua
local weenyterm = require 'weenyterm'
weenyterm.log_info('Config file ' .. weenyterm.config_file)
```



