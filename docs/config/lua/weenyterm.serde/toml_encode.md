# `weenyterm.serde.toml_encode(value)`

{{since('nightly')}}

Encodes the supplied `lua` value as `toml`:

```
> weenyterm.serde.toml_encode({foo = { "bar", "baz", "qux" } })
"foo = [\"bar\", \"baz\", \"qux\"]\n"
```
