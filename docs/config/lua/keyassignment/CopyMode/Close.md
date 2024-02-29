# CopyMode `Close`

{{since('20220624-141144-bd1b7c5d')}}

Close copy mode.

```lua
local weenyterm = require 'weenyterm'
local act = weenyterm.action

return {
  key_tables = {
    copy_mode = {
      { key = 'q', mods = 'NONE', action = act.CopyMode 'Close' },
    },
  },
}
```


