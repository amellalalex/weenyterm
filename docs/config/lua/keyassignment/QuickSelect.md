# `QuickSelect`

{{since('20210502-130208-bff6815d')}}

Activates [Quick Select Mode](../../../quickselect.md).

```lua
local weenyterm = require 'weenyterm'

config.keys = {
  { key = ' ', mods = 'SHIFT|CTRL', action = weenyterm.action.QuickSelect },
}
```

See also [QuickSelectArgs](QuickSelectArgs.md)
