## Introduction

Here is a demonstration of Motmot's text-processing
domain-specific embedded language. This library processes
Tanager Markup Language (TML) and targets a variety of
output formats, including plaintext, LibreOffice (or DOCX),
markdown, and PDF (or DVI or PS via LaTeX).

## Details

This code, for demonstrative purposes, targets markdown.
There are three distinct processing pipelines at different
levels of abstraction / specificity:

- [SampleDocument.txt.mot](./SampleDocument.txt.mot) is the
  (largely-randomly-generated) input document. It
  demonstrates:

  - TML structural elements.

  - Idiosyncratic TML formatting / spacing.

- [Processing.mot](./Processing.mot) is the Motmot code,
  using the text-processing DSL, which generates all of the
  output. Functions of interest are:

  - `basic-processing` is the simplest sort of processing,
    deferring as much of the logic as possible to the DSL.

  - `cached-processing` does precisely what
    `basic-processing` does but caches output for unchanged
    paragraphs.

  - `custom-processing` uses the same per-line processing
    but demonstrates a heavily-customised processing
    pipeline.

- [SampleDocument.basic.md](./SampleDocument.basic.md) is
  the output of running `basic-processing`.

- [SampleDocument.cached.md](./SampleDocument.cached.md) is
  the output of running `cached-processing`. (It ought to be
  identical to
  [SampleDocument.basic.md](./SampleDocument.basic.md).)

- [SampleDocument.custom.md](./SampleDocument.custom.md) is
  the output of running `custom-processing`.
