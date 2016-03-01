# Imperial-Harvard

Biblatex styling for the Imperial College London-Harvard referencing style including in-text hyper-linking to reference list and external DOI. It is only a .cls file, biblatex.cfg modification or preamble section as I don't have the guts to attempt writing an entire style.

## Usage

These files provide adjustments to various aspects of both the in-text citations and reference list in order to comply with the guidelines provided by the Imperial College library service, which can be viewed [here](https://www.imperial.ac.uk/media/imperial-college/administration-and-support-services/library/public/harvard.pdf). The .cls file is suitable for one off uses and calls the normal article class with a4 paper and 11pt and then adds the necessary packages and bibliography adjustments. It should be included in your working document's directory and called as `\documentclass{Main}` in the preamble.

If you are only using this referencing style a more permanent and functional adjustment is the use of the biblatex.cfg file. Just modify the Biblatex.cfg file of your local Latex installation e.g. `/usr/local/texlive/2015/texmf-dist/tex/latex/biblatex/biblatex.cfg`. The commands included can also been inserted directly into the document preamble if you want to keep a clean biblatex.cfg for multiple stylings.

The included .tex file provides a MWE to show the capability of the modifications. Make sure that you include the path to your .bib file as part of your preamble by modifying the `\bibliography{}` command.

### Notes on usage

At this point the stylings only effectively deal with electronic journal articles as these are all that I really use. I will try to update it for more reference types when I find the time.
