---
title: weenyterm.config_dir
tags:
 - filesystem
---

# `weenyterm.config_dir`

This constant is set to the path to the directory in which your `weenyterm.lua`
configuration file was found.

```lua
local weenyterm = require 'weenyterm'
weenyterm.log_error('Config Dir ' .. weenyterm.config_dir)
```


