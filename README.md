# go-funk-generics

An example utility library, inspired by [`go-funk`](https://github.com/thoas/go-funk), implemented using the proposed generics syntax from the latest Go 2 [design draft](https://go.googlesource.com/proposal/+/refs/heads/master/design/go2draft-type-parameters.md).

For more detail, please read the associated [blog post]().

The following functions have been implemented:

- `Contains`
- `Intersection`
- `Difference`
- `IndexOf`
- `LastIndexOf`
- `ToMap`
- `Filter`
- `Find`
- `Map`
- `Reduce`
- `Keys`
- `Values`
- `ForEach`
- `ForEachRight`
- `Chunk`
- `Flatten`
- `Uniq`
- `Drop`
- `Initial`
- `Tail`
- `Shuffle`
- `Subtract`
- `Reverse`
- `Subset`

Additionally, an attempt at function chaining has been made that is akin to:

```js
// JavaScript example
[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    .filter(x => x % 2 === 0)
    .map(x => `${x}`)
    .reduce((prev, cur) => `${prev}${cur};`, '')
// => 2;4;6;8;10;
```

## Setup

To translate the `.go2` files to valid `.go` files:

```
make build
```

You'll need Docker installed on your machine as the build uses the [levonet/golang:go2go](https://hub.docker.com/r/levonet/golang) image so that you don't need to build the [`dev.go2go` Go source development branch](https://github.com/golang/go/blob/dev.go2go/README.go2go.md) on your machine.

You can build the generated Go code as usual, or just do:

```
make run
```
