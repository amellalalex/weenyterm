# weenyterm-term

This crate provides the core of the virtual terminal emulator implementation
used by [weenyterm](https://weenyfurlong.org/weenyterm/).  The home for this
crate is in the weenyterm repo and development is tracked at
<https://github.com/wez/weenyterm/>.

It is full featured, providing terminal escape sequence parsing, keyboard
and mouse input encoding, a model for the screen cells including scrollback,
sixel and iTerm2 image support, OSC 8 Hyperlinks and a wide range of
terminal cell attributes.

This crate does not provide any kind of gui, nor does it directly
manage a PTY; you provide a `std::io::Write` implementation that
could connect to a PTY, and supply bytes to the model via the
`advance_bytes` method.

The entrypoint to the crate is the [Terminal](terminal/struct.Terminal.html)
struct.

License: MIT
