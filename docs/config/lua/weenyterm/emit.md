---
title: weenyterm.emit
tags:
 - event
---

# `weenyterm.emit(event_name, args...)`

{{since('20201031-154415-9614e117')}}

`weenyterm.emit` resolves the registered callback(s) for the specified
event name and calls each of them in turn, passing the additional
arguments through to the callback.

If a callback returns `false` then it prevents later callbacks from
being called for this particular call to `weenyterm.emit`, and `weenyterm.emit`
will return `false` to indicate that no additional/default processing
should take place.

If none of the callbacks returned `false` then `weenyterm.emit` will
itself return `true` to indicate that default processing should take
place.

This function has no special knowledge of which events are defined by
weenyterm, or what their required arguments might be.

See [weenyterm.on](on.md) for more information about event handling.

