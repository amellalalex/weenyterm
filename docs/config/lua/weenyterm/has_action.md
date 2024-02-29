---
title: weenyterm.has_action
tags:
 - utility
 - version
---

# weenyterm.has_action(NAME)

{{since('20230408-112425-69ae8472')}}

Returns true if the string *NAME* is a valid key assignment action variant
that can be used with [weenyterm.action](action.md).

This is useful when you want to use a weenyterm configuration across multiple
different versions of weenyterm.

```lua
if weenyterm.has_action 'PromptInputLine' then
  table.insert(config.keys, {
    key = 'p',
    mods = 'LEADER',
    action = weenyterm.action.PromptInputLine {
      -- other parameters here
    },
  })
end
```
