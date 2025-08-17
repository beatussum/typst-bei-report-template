# The `ensimag-internship-report` Package

<div align="center">Version 0.1.0</div>

This project is based on the [charged-ieee](https://github.com/typst/templates/tree/main/charged-ieee) Typst template.

This is a _Typst template_ for a two-column paper from the proceedings of the [Institute of Electrical and Electronics Engineers](https://www.ieee.org/).
The paper is tightly spaced, fits a lot of content and comes preconfigured for numeric citations from _BibLaTeX_ or _Hayagriva_ files.
The first page corresponds to the one required by [ENSIMAG](https://ensimag.grenoble-inp.fr/) for internship reports.

## Template adaptation checklist

- [x] Fill out `README.md`
  - Change the `my-package` package name, including code snippets
  - Check section contents and/or delete sections that don't apply
- [x] Check and/or replace `LICENSE` by something that suits your needs
- [x] Fill out `typst.toml`
  - See also the [typst/packages README](https://github.com/typst/packages/?tab=readme-ov-file#package-format)
- [x] Adapt Repository URLs in `CHANGELOG.md`
  - Consider only committing that file with your first release, or removing the "Initial Release" part in the beginning
- [x] Adapt or deactivate the release workflow in `.github/workflows/release.yml`
  - to deactivate it, delete that file or remove/comment out lines 2-4 (`on:` and following)
  - to use the workflow
    - [x] check the values under `env:`, particularly `REGISTRY_REPO`
    - [x] if you don't have one, [create a fine-grained personal access token](https://github.com/settings/tokens?type=beta) with [only Contents permission](https://stackoverflow.com/a/75116350/371191) for the `REGISTRY_REPO`
    - [x] on this repo, create a secret `REGISTRY_TOKEN` (at `https://github.com/[user]/[repo]/settings/secrets/actions`) that contains the so created token

    if configured correctly, whenever you create a tag `v...`, your package will be pushed onto a branch on the `REGISTRY_REPO`, from which you can then create a pull request against [typst/packages](https://github.com/typst/packages/)
- [x] remove/replace the example test case
- [x] (add your actual code, docs and tests)
- [ ] remove this section from the README

## Getting Started

```typ
#import "@preview/ensimag:0.1.0": ensimag

#show: ensimag.with(
  logos: (
    company: rect([MON ENTREPRISE]),
    ensimag: rect([ENSIMAG]),
  ),
  title: [A Typesetting System to Untangle the Scientific Writing Process],
  author: (
    name: "Martin Haug",
    year: [3#super[e] année],
    option: [ISI],
  ),
  period: (
    begin: datetime(year: 1970, month: 01, day: 01),
    end: datetime(year: 1970, month: 03, day: 01),
  ),
  company: (
    name: [mon entreprise],
    address: [
      1 cours Jean Jaurès \
      38000 Grenoble
    ]
  ),
  internship_tutor: [Charles Dupond],
  school_tutor: [Charles Dupont],
)
```

<picture>
  <source media="(prefers-color-scheme: dark)" srcset="./thumbnail-dark.svg"/>
  <img src="./thumbnail-light.svg"/>
</picture>

### Installation

```console
$ typst init "@preview/ensimag-internship-report" [DIR]
```

## Usage

This template exports the `ensimag` function with the following named arguments:
- `logos` - A dictionary which must have the `company` and `ensimag` logos (_content_).
- `title` - The paper's title as _content_.
- `author` - A dictionary which must have the `name` (_str_ or an _array_), `year` (_content_) and `option` (_content_) keys.
- `period` - A dictionary which must have the `begin` and the `end` date (_datetime_).
- `date_fmt` - The date format string used (see the [format syntax](https://typst.app/docs/reference/foundations/datetime/#format)).
- `company` - A dictionary describing the information about the company with its `name` (_content_) and its `address` (_content_).
- `internship_tutor` - The internship tutor (_content_).
- `school_tutor` - The school tutor (_content_).
- `abstract` - The content of a brief summary of the paper or `none`.
  Appears at the top of the first column in boldface.
- `index-terms` - Array of index terms to display after the abstract.
  Shall be `content`.
- `paper-size` - Defaults to `a4`.
  Specify a [paper size string](https://typst.app/docs/reference/layout/page/#parameters-paper) to change the page format.
- `bibliography` - The result of a call to the `bibliography` function or `none`.
  Specifying this will configure numeric, IEEE-style citations.
- `figure-supplement` - How figures are referred to from within the text.
  Use `"Figure"` instead of `"Fig."` for computer-related publications.

The function also accepts a single, positional argument for the body of the paper.

The template will initialize your package with a sample call to the `ensimag` function in a show rule.
If you want to change an existing project to use this template, you can add a show rule like described [above](#getting-started).

## Licenses

As explained above, the code of this software is licensed under GPL-3 or any later version.
Details of the rights applying to the various third-party files are described in the [copyright](copyright) file in [the Debian `debian/copyright` file format](https://www.debian.org/doc/packaging-manuals/copyright-format/1.0/).
