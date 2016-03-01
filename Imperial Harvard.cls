\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{Main}[2016/02/23 Class for preparing various reports in the Imperial College Style]

%%%%%%%%LOAD ARTICLE CLASS%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\LoadClass[a4paper,11pt]{article}

%%%%%%%%PACKAGES%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage[hyperref]{xcolor}
\RequirePackage[backend=biber,
			style=authoryear,
			uniquelist=false,
			firstinits=true,
			isbn=false,
			maxbibnames=99,
			sorting=nty,
			uniquename=init,
			urldate=long,
			dateabbrev=false,
			]{biblatex}
\RequirePackage[colorlinks=true,
    allcolors=blue
]{hyperref}
\RequirePackage{cleveref}
%%%%%%%%INDENTATION%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\setlength{\bibhang}{0pt}
\setlength\bibitemsep{1.5\itemsep}

%%%%%%%%URL/DOI FIELD ADJUSTMENTS%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\NewBibliographyString{available}
\DefineBibliographyStrings{english}{available = {Available from},}
\DefineBibliographyStrings{english}{urlseen = {Accessed},}

%%%%%%%%FORMAT NAMES%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand*{\nameyeardelim}{\addcomma\addspace}
\renewcommand*{\finalnamedelim}{\addspace\&\space}
\renewcommand{\labelnamepunct}{\addspace}

%%%%%%%%BIBLIOGRAPHY SORTING%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\DeclareNameAlias{sortname}{last-first}

%%%%%%%%FIELD FORMATS%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\DeclareFieldFormat{pages}{#1}
\DeclareFieldFormat*{title}{#1}
\DeclareFieldFormat{url}{\bibstring{available}\addcolon\space\url{#1}\nopunct}
\DeclareFieldFormat{urldate}{[\bibstring{urlseen}\space#1]}
\DeclareFieldFormat[article]{number}{\mkbibparens{#1}}
\DeclareFieldFormat{doi}{%
	\bibstring{urlfrom}\addcolon\space\mkbibacro{DOI}\addcolon\space \ifhyperref {\href{http://dx.doi.org/#1}{\nolinkurl{#1}}} {\nolinkurl{#1}}
    }

%%%%%%%%VOLUME ISSUE FORMAT ADJUSTMENTS%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewbibmacro*{journal+issuetitle}{%
  \usebibmacro{journal}%
  \setunit*{\addperiod\space}%
  \iffieldundef{series}
    {}
    {\newunit
     \printfield{series}%
     \setunit{\addspace}}%
  \usebibmacro{volume+number+eid}%
  \setunit{\addspace}%
  \usebibmacro{issue+date}%
  \setunit{\addcolon\space}%
  \usebibmacro{issue}%
  \newunit}
\renewbibmacro*{volume+number+eid}{
    \printfield{volume}%
    \setunit*{\addnbthinspace}
    \printfield{number}%
    \setunit{\addcomma\space}%
    \printfield{eid}}

%%%%%%%%URL/DOI FORMAT%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewbibmacro*{doi+eprint+url}{%
 \iftoggle{bbx:url} {\iffieldundef{doi}{\usebibmacro{url+urldate}}{}} {}%
 \newunit\newblock \iftoggle{bbx:eprint} {\usebibmacro{eprint}} {}%
 \newunit\newblock \iftoggle{bbx:doi} {\printfield{doi}\printtext[abrufurl]{\printurldate}} {}
 }
\renewbibmacro*{url+urldate}{%
    \printtext[formaturl]{%
   	\printfield{url}}%
	}

%%%%%%%%REMOVE IN%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewbibmacro*{in:}{}


