---
title: weenyterm.action_callback
tags:
 - keys
 - event
---

# `weenyterm.action_callback(callback)`

{{since('20211204-082213-a66c61ee9')}}

This function is a helper to register a custom event and return an action triggering it.

It is helpful to write custom key bindings directly, without having to declare
the event and use it in a different place.

The implementation is essentially the same as:
```lua
function weenyterm.action_callback(callback)
  local event_id = '...' -- the function generates a unique event id
  weenyterm.on(event_id, callback)
  return weenyterm.action.EmitEvent(event_id)
end
```

See [weenyterm.on](./on.md) and [weenyterm.action](./action.md) for more info on what you can do with these.


## Usage

```lua
local weenyterm = require 'weenyterm'

return {
  keys = {
    {
      mods = 'CTRL|SHIFT',
      key = 'i',
      action = weenyterm.action_callback(function(win, pane)
        weenyterm.log_info 'Hello from callback!'
        weenyterm.log_info(
          'WindowID:',
          win:window_id(),
          'PaneID:',
          pane:pane_id()
        )
      end),
    },
  },
}
```
