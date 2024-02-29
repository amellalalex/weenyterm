# CopyMode `MoveToScrollbackTop`

{{since('20220624-141144-bd1b7c5d')}}

Moves the CopyMode cursor position to the top of the scrollback.


```lua
local weenyterm = require 'weenyterm'
local act = weenyterm.action

return {
  key_tables = {
    copy_mode = {
      {
        key = 'g',
        mods = 'NONE',
        action = act.CopyMode 'MoveToScrollbackTop',
      },
    },
  },
}
```

