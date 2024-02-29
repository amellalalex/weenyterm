---
tags:
  - multiplexing
---
# `daemon_options`

Allows configuring the multiplexer (mux) server and how it places itself into
the background to run as a daemon process.

You should not normally need to configure this setting; the defaults should
be sufficient in most cases.

There are three fields supported:
* `pid_file` - specify the location of the pid and lock file.  The default location is `$XDG_RUNTIME_DIR/weenyterm/pid` on X11/Wayland systems, or `$HOME/.local/share/weenyterm/pid`
* `stdout` - specifies where a log of the stdout stream from the daemon will be placed.  The default is `$XDG_RUNTIME_DIR/weenyterm/stdout` on X11/Wayland systems, or `$HOME/.local/share/weenyterm/stdout`.
* `stderr` - specifies where a log of the stderr stream from the daemon will be placed.  The default is `$XDG_RUNTIME_DIR/weenyterm/stderr` on X11/Wayland systems, or `$HOME/.local/share/weenyterm/stderr`.

```lua
config.daemon_options = {
  stdout = '/some/where/stdout',
  stderr = '/some/where/stderr',
  pid_file = '/some/where/pid_file',
}
```
