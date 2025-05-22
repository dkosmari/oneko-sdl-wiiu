# oneko

Port of X11 oneko to SDL 
I attempted to preserve as much of the original code as possible.

## Getting Started

### Prerequisites

- C standard library (e.g. glibc)
- SDL2

### Building

Build system is not used because there is only one source file that includes all headers. The command below produces `sdl_oneko` executable.

```
 ./patch.sh
 gcc sdl_oneko.c sdl_xbm_helper.c -o sdl_oneko `pkg-config --cflags --libs sdl2` -I. -I..
```

### Usage

Read the [docs](doc).

## Versioning

Patch levels are used for versions compatible with the original oneko. The project will switch to [SemVer](https://semver.org/) for versioning after the first feature-breaking change.

## Authors

* Original program "xneko" written by Masayuki Koba
* Modified to program "oneko" by Tatsuya Kato
* Modified furthermore by
  - John Lerchey
  - Eric Anderson
  - Toshihiro Kanda
  - Kiichiroh Mukose
* SDL Port
  - Hito16

## License

According to [FSF Directory][1], the (Japanese) README file, as well as the LSM file originally distributed with oneko on sunsite both say that oneko is public domain software.

[1]: https://directory.fsf.org/wiki/Oneko#tab=Details
