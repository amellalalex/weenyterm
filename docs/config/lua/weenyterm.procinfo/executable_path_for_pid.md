# `weenyterm.procinfo.executable_path_for_pid(pid)`

{{since('20220807-113146-c2fee766')}}

Returns the path to the executable image for the specified process id.

This function may return `nil` if it was unable to return the info.

```
> weenyterm.procinfo.executable_path_for_pid(weenyterm.procinfo.pid())
"/home/weeny/weeny-personal/weenyterm/target/debug/weenyterm-gui"
```

