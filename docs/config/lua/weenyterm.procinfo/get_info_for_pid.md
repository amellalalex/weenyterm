# `weenyterm.procinfo.get_info_for_pid(pid)`

{{since('20220807-113146-c2fee766')}}

Returns a [LocalProcessInfo](../LocalProcessInfo.md) object for the specified
process id.

This function may return `nil` if it was unable to return the info.

```
> weenyterm.procinfo.get_info_for_pid(weenyterm.procinfo.pid())
{
    "argv": [
        "/home/weeny/weeny-personal/weenyterm/target/debug/weenyterm-gui",
    ],
    "children": {
        540513: {
            "argv": [
                "-zsh",
            ],
            "children": {},
            "cwd": "/home/weeny",
            "executable": "/usr/bin/zsh",
            "name": "zsh",
            "pid": 540513,
            "ppid": 540450,
            "start_time": 232656896,
            "status": "Sleep",
        },
    },
    "cwd": "/home/weeny/weeny-personal/weenyterm",
    "executable": "/home/weeny/weeny-personal/weenyterm/target/debug/weenyterm-gui",
    "name": "weenyterm-gui",
    "pid": 540450,
    "ppid": 425276,
    "start_time": 8671498240,
    "status": "Run",
}
```
