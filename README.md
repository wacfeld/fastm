# WORK IN PROGRESS (2022-07-04)

# Overview
The goal of this project is to create a streamlined keyboard-based math scratchpad.

i.e. an alternative to pen-and-paper math, for back-of-the-envelope calculation, note-taking, problem-solving, etc.

# Folders
The following folders are various attempts to realize the envisioned product:

- channel :: communicate between vim and a python process via the builtin vim IPC (`:h channel`)
- procsrc, smdv, watch :: a more naive approach to rendering a file edited by vim in a webpage. works, but is rather slow and is not WYSIWYG

# Reasoning
Many people who are 'tech-savvy' still prefer using pen-and-paper for math:

- Lots of math notation is 2-dimensional, meaning that non-WYSIWYG line-based notation systems (e.x. LaTeX, asciimath) will always be clumsy
- WYSIWYG editors avoid this problem, but tend to be more clumsy input-wise (requiring dropdown menus to find special symbols, etc.)
- There exist editors that combine line-based LaTeX with an instant visual preview, but these suffer from lack of customizability. i.e. the user has to either type the (verbose) latex notation manually, or navigate through dropdown menus with a mouse
- A more modular approach would be using vim (with plugins) as the LaTeX editor, and then using, for example, zathura to view the output
- [Gilles Castel](https://castel.dev/post/lecture-notes-1/?source=techstories.org) has a very fast setup using vim (with vimtex and ultisnips) along with zathura, which he uses for taking notes in live lectures
  - This approach is great for note-taking, where one simply has to copy what the lecturer is writing/saying, but falls short for more complicated mathematical work
  - Having to constantly glance back and forth between the vim and zathura windows, navigating deeply nested braces, waiting for the pdf to render, etc. distract from the task at hand and, in my experience, make getting any work done impossible

There are several solutions to this:

- Use a drawing tablet
  - This is decent, but I would personally prefer a keyboard-only solution
- Roughly copy the vim-zathura (or more generally, editor-viewer) setup, but make it so that one does not have to look at the editor at all, even when navigating a complex formula. i.e. keyboard-based WYSIWYG
  - I like this solution

To eliminate the need to look at the editor, we need a system where the user can tell exactly where the cursor is positioned at all times. Additionally, it would be useful to be able to highlight sections of the math, copy/paste/delete them, etc. This all has to be reasonably fast, in order to not be too distracting.

Some features that are still lacking in this system, when compared to pen-and-paper:

- It is often useful to draw arrows between mathematical equations, circle certain things, etc. This would be very easy with the drawing tablet solution, but rather difficult under my system.
