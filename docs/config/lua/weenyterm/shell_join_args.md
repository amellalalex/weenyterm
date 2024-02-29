---
title: weenyterm.shell_join_args
tags:
 - utility
 - open
 - spawn
 - string
---
# weenyterm.shell_join_args({"foo", "bar"})

{{since('20220807-113146-c2fee766')}}

`weenyterm.shell_join_args` joins together its array arguments by applying posix
style shell quoting on each argument and then adding a space.

```
> weenyterm.shell_join_args{"foo", "bar"}
"foo bar"
> weenyterm.shell_join_args{"hello there", "you"}
"\"hello there\" you"
```

This is useful to safely construct command lines that you wish to pass to the shell.
