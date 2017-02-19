# Prot16 Builder

## A builder for the Prot16 collection of colour schemes

**EXPERIMENTAL. May undergo significant changes. Documentation will be provided accordingly.**

This is a fork of [the Base16 Builder](https://github.com/base16-builder/base16-builder). I have repurposed it to fit my specific need of building ports for my [Prot16 collection](https://protesilaos.com/schemes).

This builder performs two tasks:

1. automate the production of themes for various applications;
2. provide themes on demand on a per item basis.

## What this tool is not

Prot16 Builder does not stand as a replacement or substitute of any of the projects related to Base16. Its only purpose is to work with my colour schemes.

## Installation

```
$ npm install --global prot16-builder
```

**IMPORTANT.** The tool is still in its early days. There are a number of things in need of improvement.

## Usage

```bash
$ prot16-builder --help

  Usage:
    $ prot16-builder <-s scheme> <-t template> <-b light|dark>
    $ prot16-builder <-s scheme path> <-t template path>

  Options:
    -s, --scheme        Build theme using this colour scheme
    -t, --template      Build theme using this template
    -b, --brightness    Build theme using this brightness

  Commands:
    ls schemes      Opens an offline web page with a list of scheme names and their colours
    ls templates    Writes a list of available templates to the terminal

  Examples:
    $ prot16-builder -s alto -t vim -b dark
    $ prot16-builder --scheme alto --template vim --brightness dark
    $ prot16-builder ls schemes
    $ prot16-builder ls templates
```
