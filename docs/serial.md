weenyterm can also connect to serial ports as a client.  This is useful
for example when working with embedded devices such as Arduino, or
when connecting to a serial console on a headless server.

For example, on Linux:

```console
$ weenyterm serial /dev/ttyUSB0
```

or on Windows:

```console
$ weenyterm serial COM0
```

You can also specify the baud rate:

```console
$ weenyterm serial --baud 38400 /dev/ttyUSB0
```

When a weenyterm window is operating in serial mode it is not possible to create
new tabs.
