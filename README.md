# KinoFigma

[![KinoFigma version](https://img.shields.io/hexpm/v/kino_figma.svg)](https://hex.pm/packages/kino_figma)
[![Hex Docs](https://img.shields.io/badge/hex-docs-lightgreen.svg)](https://hexdocs.pm/kino_figma/)
[![Hex Downloads](https://img.shields.io/hexpm/dt/kino_figma)](https://hex.pm/packages/kino_figma)
[![LICENSE](https://img.shields.io/hexpm/l/kino_figma.svg)](https://github.com/RyoWakabayashi/kino_figma/blob/master/LICENSE)

A simple Kino for display Figma files on Livebook.

## Installation

Install KinoFigma in Livebook:

```elixir
Mix.install([
  {:kino_figma, "~> 0.1"}
])
```

## Usage

Display Figma design file on Livebook:

```elixir
KinoFigma.design("Qb8fTiCItLCttOzhCE4VlF")
```

The argument is the file ID contained in the Figma URL.
