# CopyMode `MoveForwardWord`

{{since('20220624-141144-bd1b7c5d')}}

Moves the CopyMode cursor position one word to the right.

```lua
local weenyterm = require 'weenyterm'
local act = weenyterm.action

return {
  key_tables = {
    copy_mode = {
      { key = 'w', mods = 'NONE', action = act.CopyMode 'MoveForwardWord' },
    },
  },
}
```

