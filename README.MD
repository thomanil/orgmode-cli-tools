
orgmode-cli-tools
===

A couple of tools to make it easier to work with org-mode files from
the command-line.

Current available commands:

org2html: convert org files to html

org2revealjs: convert org files into reveal.js presentations


Dependencies
===========

These tools depend on Ruby and Emacs 24.x.


Install
=======

# 1. install gem
# 2. check emacs dependencies
#    Your emacs has to support orgmode html export with htmlize



Usage
=====

`org2html ORG_FILE_PATH [HTML_FILE_PATH]`

`org2revealjs ORG_FILE_PATH`


Examples
========

Generate a html export of and orgfile and open it in firefox in one step:

`org2html test.org && firefox test.html &!`

Generate a presentation and open it in Firefox in one step:

`org2revealjs test.org && firefox generated_slides/index.html &!`


FAQ
====

Q: Src code in my original org file is syntax highlighted in emacs,
and is htmlized with colors when I convert manually from within Emacs,
yet I get no colored syntax highlighting when converting with org2html
or org2revealjs. What gives?

A: Inline styling of code doesn't work in emacs "batch mode". However
the code elements are given classes (function, keyword etc), so you
are free to add css styling for your code as a final step yourself.


License
=======

orgmode-cli-tools is free software licensed under the
[GNU Affero General Public License (AGPL)](http://www.gnu.org/licenses/agpl-3.0.html).
