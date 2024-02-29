# `ToggleFullScreen`

Toggles full screen mode for the current window.

```lua
local weenyterm = require 'weenyterm'

config.keys = {
  {
    key = 'n',
    mods = 'SHIFT|CTRL',
    action = weenyterm.action.ToggleFullScreen,
  },
}
```

See also: [native_macos_fullscreen_mode](../config/native_macos_fullscreen_mode.md).

