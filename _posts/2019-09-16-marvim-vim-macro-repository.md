---
layout: post
title: "Marvim: A Persistent Macro and Template Repository for Vim"
date: 2019-09-16 00:00:00 +0000
categories: [open-source]
tags: [open source, vim, tools, productivity]
excerpt: "Vim macros are powerful but ephemeral — they die with the session. Marvim gives them a persistent home: a searchable, namespace-organised repository you can share across machines and teams."
external_url: https://github.com/chamindra/marvim
external_label: github
vim_url: https://www.vim.org/scripts/script.php?script_id=2154
---

If you use Vim seriously, you have almost certainly built a macro that took real effort — a carefully sequenced transformation you recorded once, used a few times, and then lost the moment you closed the session. Vim's macro system is expressive and fast, but it is also stateless. The register is gone when you quit.

Marvim was my attempt to fix that.

## What it does

Marvim is a Vim plugin that gives macros and visual templates a persistent home outside the editor. You can save any macro or yanked template to a named repository, retrieve it later with auto-complete search, and organise entries by namespace — either manually or automatically by filetype.

The interface is deliberately minimal:

- **F3** — save the current macro (from a register) or the current visual selection as a template
- **F2** — search the repository with auto-complete and replay the selected macro; in visual mode, replays the last macro once per selected line
- **Tab / Ctrl-D** — navigate auto-complete results on the command line

That is the full surface area. The storage is plain files on disk, which means the repository is portable: you can version it, copy it across machines, or share it with a team via a mounted network path or a dotfiles repository.

## Namespace organisation

Every macro is stored under a namespace. By default Marvim uses the current filetype as the namespace — so a macro saved while editing a Python file lives under `python/`, and a macro saved in a Vimscript buffer lives under `vim/`. You can also specify any prefix you want, which makes it straightforward to organise by project, task type, or team.

The recursive directory search means you can nest namespaces as deeply as you like and still find what you need with a partial name match and Tab completion.

## Shared repositories

The feature I find most useful in a team setting is the shared repository. You can point Marvim at a shared network location or a directory inside a shared dotfiles repo, and the whole team gets access to the same macro library. Common transformations — reformatting log output, extracting fields from structured text, refactoring boilerplate — become shared institutional knowledge rather than living in one person's head.

## Installation

Marvim works with Vim 7+, Vim 8+, and Neovim. Installation via Vundle:

```vim
Plugin 'chamindra/marvim'
```

Or via Pathogen by cloning into `~/.vim/bundle/marvim`.

To customise the storage location and hotkeys before the plugin loads:

```vim
let marvim_store = '/path/to/your/macro/store'
let marvim_find_key = '<F2>'
let marvim_store_key = '<F3>'
```

The v0.5 Beta (September 2019) refactored the internals for Vim 8 compatibility and added proper help files and a markdown README. Earlier versions (0.1–0.4, 2008) established the core feature set: Windows compatibility, recursive lookup, GUI menu support, filetype namespaces, and auto-complete navigation.

## Why I built it

I wrote the first version of Marvim in early 2008 during a period when I was spending most of my working hours in Vim editing large codebases and configuration files across multiple languages. The recurring frustration was not the recording of macros — that part Vim does beautifully — but the forgetting. Complex macros that took several attempts to get right would disappear, and rebuilding them from scratch days later was exactly the kind of friction that makes tools feel fragile rather than trustworthy.

The macro-as-file model also opened up composition: because each macro is just a text file, you can inspect it, edit it directly, and share it as you would any other resource. It fits naturally with how I think about open tools — transparent, portable, inspectable.

Marvim has been downloaded over 4,600 times from the Vim scripts repository and carries a rating of 163 across 53 reviewers. For a small utility plugin written to scratch a personal itch, that uptake has been gratifying — and a reminder that friction in a frequently used tool is worth taking the time to remove.

The source is on [GitHub](https://github.com/chamindra/marvim) and the plugin is listed on [Vim.org](https://www.vim.org/scripts/script.php?script_id=2154).
