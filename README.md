# Imperial-Harvard

Biblatex styling for the Imperial College London-Harvard referencing style. Only a Biblatex.cfg modification or preamble section as I don't have the guts to attempt writing an entire style.

## Usage

The Biblatex.cfg provides adjustments to various aspects of both the in-text citations and reference list in order to comply with the guidelines provided by the Imperial College library service, which can be viewed [here](https://www.imperial.ac.uk/media/imperial-college/administration-and-support-services/library/public/harvard.pdf). Just modify the Biblatex.cfg file of your local Latex attachment. The commands included can also been inserted directly into the document preamble if you want to keep a clean Biblatex.cfg for multiple stylings.

The included .tex file provides a MWE to show the capability of the modifications. Make sure that you include the path to your .bib file as part of your preamble by modifying the `\bibliography{}` command.

### Notes on usage

At this point the stylings only effectively deal with electronic journal articles as these are all that I really use. I will try to update it for more reference types when I find the time.
