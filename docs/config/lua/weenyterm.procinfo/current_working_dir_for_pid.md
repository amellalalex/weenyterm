# `weenyterm.procinfo.current_working_dir_for_pid(pid)`

{{since('20220807-113146-c2fee766')}}

Returns the current working directory for the specified process id.

This function may return `nil` if it was unable to return the info.

```
> weenyterm.procinfo.current_working_dir_for_pid(weenyterm.procinfo.pid())
"/home/weeny/weeny-personal/weenyterm"
```

