# moon-watch

better -watch for moonscript(moonc) for MacOS

 * Use fsw, solves moonc -w get stuck when polling on MacOS
 * Maintains source folder structure in output folder
 * Bell on compile failure

## Install

 1. Please install [moonrocks](https://rocks.moonscript.org/) first
 2. `moonrocks install moon-watch`

## Usage

```
   moon-watch path/to/moonscript [path/to/output/lua]
```

## Try

```
  moon-watch sample/src/ sample/lib/
```

