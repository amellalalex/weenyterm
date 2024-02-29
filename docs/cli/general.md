# Command Line

This section documents the weenyterm command line.

*Note that `weenyterm --help` or `weenyterm SUBCOMMAND --help` will show the precise
set of options that are applicable to your installed version of weenyterm.*

weenyterm is deployed with two major executables:

* `weenyterm` (or `weenyterm.exe` on Windows) - for interacting with weenyterm from the terminal
* `weenyterm-gui` (or `weenyterm-gui.exe` on Windows) - for spawning weenyterm from a desktop environment

You will typically use `weenyterm` when scripting weenyterm; it knows when to
delegate to to `weenyterm-gui` under the covers.

If you are are setting up a launcher for weenyterm to run in the Windows GUI
environment then you will want to explicitly target `weenyterm-gui` so that
Windows itself doesn't pop up a console host for its logging output.

!!! note
    `weenyterm-gui.exe --help` will not output anything to a console when
    run on Windows systems, because it runs in the Windows GUI subsystem and has no
    connection to the console.  You can use `weenyterm.exe --help` to see information
    about the various commands; it will delegate to `weenyterm-gui.exe` when
    appropriate.

## Synopsis

```console
{% include "../examples/cmd-synopsis-weenyterm--help.txt" %}
```
