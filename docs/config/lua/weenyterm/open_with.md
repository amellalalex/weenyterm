---
title: weenyterm.open_with
tags:
 - utility
 - open
 - spawn
---

# `weenyterm.open_with(path_or_url [, application])`

{{since('20220101-133340-7edc5b5a')}}

This function opens the specified `path_or_url` with either the specified
`application` or uses the default application if `application` was not passed
in.

```lua
-- Opens a URL in your default browser
weenyterm.open_with 'http://example.com'

-- Opens a URL specifically in firefox
weenyterm.open_with('http://example.com', 'firefox')
```

