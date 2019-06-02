% -------------------------------------------------------------------
%  @LaTeX-class-file{
%     filename        = "harvard-thesis.cls",
%     version         = "0.4",
%     date            = "4 April 2012",
%     codetable       = "ISO/ASCII",
%     keywords        = "LaTeX, harvard-thesis",
%     supported       = "send email to suchow@fas.harvard.edu",
%     docstring       = "A thesis class for a Harvard dissertation."
% --------------------------------------------------------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{harvard-thesis}[2012/04/05 v0.4 Harvard University Thesis Class]
\LoadClass[12pt, oneside, a4paper]{book}


% Required packages
\RequirePackage{graphicx}
\RequirePackage[hyphens]{url}
\RequirePackage{hyperref}
\hypersetup{
	linktocpage,
    colorlinks,
    citecolor=highlightcolor,
    filecolor=black,
    linkcolor=black,
    urlcolor=highlightcolor,
}

\RequirePackage[centertags]{amsmath}
\RequirePackage{amssymb}
\RequirePackage[numbers, comma, sort&compress]{natbib}
%\RequirePackage[small, md, sc]{titlesec}
\RequirePackage{titlesec}
\RequirePackage[tight,nice]{units}
\RequirePackage{verbatim}
\RequirePackage{anyfontsize}


% colors
\RequirePackage{xcolor}
\definecolor{Crimson}{rgb}{0.6471, 0.1098, 0.1882}
% \definecolor{highlightcolor}{rgb}{0.8863, 0.4078, 0.1176} % HPI mid orange
\definecolor{titlecolor}{rgb}{0.3, 0.3, 0.3} 

% \definecolor{highlightcolor}{HTML}{e2681d} % HPI mid orange
% \definecolor{highlightcolor}{HTML}{f9a61a} % HPI light orange
\definecolor{highlightcolor}{HTML}{b1063a} % HPI red
% \definecolor{highlightcolor}{HTML}{556066} % HPI text gray

\RequirePackage[titles]{tocloft}
\setcounter{tocdepth}{1}
\renewcommand{\cftchapleader}{\bfseries\cftdotfill{\cftsecdotsep}} % dot leaders in bold
%\renewcommand{\cftchapfont}{\normalsize}
% \renewcommand{\footnotesize}{\scriptsize} % -- change alex --

\renewcommand\bibname{References}
\renewcommand\listfigurename{Listing of figures}
%\raggedright

\RequirePackage{pdfsync} %do pdf synchronization [andy]

\usepackage[closeFloats, noSeparatorLine]{fltpage} %use the custom modified fltpage package
\RequirePackage{afterpage} 



\synctex=1 % turn synctex on automatically to sync between pdf viewer [andy]

%   list an entire bibliography entry inline. Useful for acknowledging when my paper was previously published
\RequirePackage{bibentry} 
\nobibliography*        

\RequirePackage{lettrine} % big letter at start of chapter
\RequirePackage[width=5in, a4paper]{geometry} % -- change alex --

\RequirePackage{fancyhdr} 
\pagestyle{plain} % options: empty , plain , fancy
\RequirePackage[palatino]{quotchap}
\definecolor{chaptergrey}{rgb}{0.8,0.8,0.8}
\RequirePackage{titling}
\RequirePackage{setspace} 
\RequirePackage{booktabs} % for much better looking tables
% \RequirePackage[labelfont={sf,bf,small}, textfont={sf,small}, justification=RaggedRight, margin=0pt, figurewithin=section, tablewithin=section]{caption}


% -- change alex --
\RequirePackage{afterpage}
\newcommand\blankpage{%
    \null
    \thispagestyle{empty}%
    \addtocounter{page}{-1}%
    \newpage}

\RequirePackage[hang]{footmisc}
\setlength{\footnotemargin}{0.5em}

\RequirePackage{mdframed}
\newmdenv[
  topline=false,
  bottomline=false,
  rightline=false,
  leftline=true,
  innerrightmargin=0em,
  innerleftmargin=2.50em,
  innertopmargin=1em,
  innerbottommargin=1em,
  linecolor=highlightcolor,
  linewidth=2pt,
  skipabove=1.5\baselineskip,
  skipbelow=1.5\baselineskip
]{siderule}

\RequirePackage{hyphenat}
\RequirePackage{doi}

\RequirePackage[
	list-entry=heading, 
	labelfont={sf,bf,footnotesize}, 
	textfont={sf,footnotesize}, 
	justification=justified, 
	margin=0pt, 
	figurewithin=section, 
	tablewithin=section
]{caption}

% --- FIGURE NUMBERING
% change from <section>.<subsection>.<figure> --> <section>.<subsection>.<figure>
		%source: EDIT DL: this changes the figure numbering from section to chapter; from: https://tex.stackexchange.com/questions/28333/continuous-v-per-chapter-section-numbering-of-figures-tables-and-other-docume and https://tex.stackexchange.com/questions/28333/continuous-v-per-chapter-section-numbering-of-figures-tables-and-other-docume
\RequirePackage{chngcntr}
\counterwithout{figure}{section}
\renewcommand{\thefigure}{\arabic{chapter}.\arabic{figure}}

% --- SPACING
\onehalfspacing
% \singlespacing
%\raggedright

\RequirePackage[all,defaultlines=3]{nowidow}

%\parindent 1em
\RequirePackage{parskip} 
\parindent 0pt
\parskip 0.75em
% -- end change alex --

\RequirePackage{mathspec}

% % use Arno Pro instead of standard LaTeX fonts
% \setmathsfont(Digits,Latin,Greek)[
% Path = fonts/,Extension = .otf,
% UprightFont=ArnoPro-Regular,
% BoldFont=ArnoPro-Bold,
% ItalicFont=ArnoPro-Italic,
% BoldItalicFont=ArnoPro-BoldItalic,
% Numbers={OldStyle,Proportional}
% ]{ArnoPro}

% \setmathrm
% [Path = fonts/,Extension = .otf,
% UprightFont=ArnoPro-Regular,
% BoldFont=ArnoPro-Bold,
% ItalicFont=ArnoPro-Italic,
% BoldItalicFont=ArnoPro-BoldItalic
% ]{ArnoPro}

% \RequirePackage{xltxtra,xunicode}
% \defaultfontfeatures{Mapping=tex-text, Numbers=OldStyle}
% \aliasfontfeatureoption{Ligatures}{Historic}{Historical}
% \setromanfont
% [Path = fonts/,
% Extension = .otf,
% Mapping=tex-text, 
% Numbers=OldStyle, 
% Ligatures={Common}, 
% SizeFeatures={%
% 	{Size={-10}, Font=*-RegularCaption},
% 	{Size={10-13.0}, Font=*},
% 	{Size={13.01-19.9}, Font=*-RegularSubhead},
% 	%{Size={13.01-19.9}, Font=*-RegularSubhead, Ligatures=Rare, Contextuals={Swash,Alternate}},
% 	{Size={19.91-},Font=*-RegularDisplay}
% 	},
% 	%{Size={19.91-},Font=*-RegularDisplay, Ligatures=Rare, Contextuals={Swash,Alternate}}},
% UprightFont=ArnoPro-Regular,
% BoldFont=ArnoPro-Bold,
% ItalicFont=ArnoPro-Italic,
% BoldItalicFont=ArnoPro-BoldItalic
% ]{ArnoPro} %

\setmathrm{Linux Libertine}
\setromanfont{Linux Libertine}
% \setsansfont[Scale=MatchLowercase,Mapping=tex-text]{Linux Biolinum} 


			
%Set fonts for Mac Specific (Comment out on Windows XP)
%\setsansfont[Scale=MatchLowercase,Mapping=tex-text]{Helvetica Neue} 
%\setmonofont[Scale=MatchLowercase]{Consolas}

% some definitions
\def\degreeyear#1{\gdef\@degreeyear{#1}}
\def\degreemonth#1{\gdef\@degreemonth{#1}}
\def\degree#1{\gdef\@degree{#1}}
\def\advisor#1{\gdef\@advisor{#1}}
\def\secondaryadvisor#1{\gdef\@secondaryadvisor{#1}}
\def\department#1{\gdef\@department{#1}}
\def\field#1{\gdef\@field{#1}}
\def\university#1{\gdef\@university{#1}}
\def\universitycity#1{\gdef\@universitycity{#1}}
\def\universitystate#1{\gdef\@universitystate{#1}}


% % \titleformat{\chapter}
% %   {\normalfont\fontsize{16}{19}\sffamily\bfseries}
% %   {\thechapter}
% %   {1em}
% %   {}

% \titleformat{\section}
%   {\normalfont \Large}
% %   {\normalfont\fontsize{12}{17}\sffamily\bfseries}
%   {\thesection}
%   {1em}
%   {}
% % \titlespacing{\section}
% % 	{0pt}
% % 	{12pt plus 4pt minus 2pt}
% % 	{0pt plus 2pt minus 2pt}

% \titleformat{\subsection}
%   {\normalfont \large}
% %   {\normalfont\fontsize{12}{17}\sffamily\bfseries\slshape}
%   {\thesubsection}
%   {1em}
%   {}

\titleformat*{\paragraph}
	{\normalfont\normalsize\itshape}


% % ---- Arno headings ----

% \titleformat{\section}
%   {\normalfont\Large\bfseries}
%   {\thesection}
%   {0.5em}
%   {}
% \titlespacing*{\section}
%   {0pt}{6ex plus 1ex minus .2ex}{2ex plus .2ex}

% \titleformat{\subsection}
%   {\normalfont\large\bfseries}
%   {\thesubsection}
%   {0.5em}
%   {}
% \titlespacing*{\subsection}
%   {0pt}{5ex plus 1ex minus .2ex}{1ex}

% \titleformat{\subsubsection}
% 	{\normalfont\normalsize\bfseries}
% 	{\thesubsubsection}
% 	{0.5em}
% 	{}
% \titlespacing*{\subsubsection}
% 	{0pt}{3ex plus 1ex minus .2ex}{0ex}

% % end ---- Arno headings ----



% ---- Roboto headings ----

\setsansfont{Roboto} 

\titleformat{\section}
  {\normalfont\large\sffamily\bfseries}
  {\thesection}
  {0.5em}
  {\MakeUppercase}
\titlespacing*{\section}
  {0pt}{6ex plus 1ex minus .2ex}{0.5ex plus .2ex}

\titleformat{\subsection}
  {\normalfont\normalsize\sffamily\bfseries}
  {\thesubsection}
  {0.5em}
  {}
\titlespacing*{\subsection}
  {0pt}{4ex plus 1ex minus .2ex}{0.2ex}

\titleformat{\subsubsection}
	{\normalfont\small\sffamily\bfseries}
	{\thesubsubsection}
	{0.5em}
	{}
\titlespacing*{\subsubsection}
	{0pt}{3ex plus 1ex minus .2ex}{0ex}

% end ---- Roboto headings ----


\renewcommand{\maketitle}{
	\thispagestyle{empty}
	\vspace*{\fill}
	\vspace{40pt}
	\begin{center}
	% \Huge 
	% \fontsize{36}{40}\textsf{\textcolor{titlecolor}{\thetitle}} 
	% \normalsize \\
	\fontsize{36}{40}\textcolor{titlecolor}{\textit{\thetitle}} 
	\normalsize \\
	% \fontsize{36}{40}\textcolor{highlightcolor}{\textit{\thetitle}} \normalsize \\
	
	\vspace{25pt}
	by \\
	%\vspace{15pt}
	\theauthor\\

	\vspace{75pt}
	%\textsc{
	a dissertation submitted in partial fulfillment\\
	of the requirements for the degree of \\
	\vspace{8pt}
	{\Large \@degree} \\

	% \vspace{25pt}
	% advised by:\\
	% Main Advisor: \@advisor \\
	% Secondary Advisor: \@secondaryadvisor \\
	% %\@department \\

	\vspace{75pt}
	\includegraphics[width=225pt]{frontmatter/logo/logo_hpi-UP.eps} \\
	\@university \\
	\@universitycity{, }\@universitystate \\
	\@degreemonth{ }\@degreeyear
	%}
	\end{center}
	\vspace*{\fill}
}

% You might also consider licensing your work under Creative Commons). See: http://creativecommons.org/weblog/entry/12824 for other PhD students who have released their work under creative commons.

\newcommand{\copyrightpage}{
	\newpage
	\thispagestyle{empty}
	%\vspace*{400pt}
	\vspace*{\fill}
	\begin{center}
	\copyright \ \theauthor , \@degreeyear \\
	\scshape \small all rights reserved
	\vspace*{\fill}
	\end{center}
	\newpage
	\rm
}

\newcommand{\abstractpage}{
    \phantomsection
    \newpage
	\addcontentsline{toc}{chapter}{Abstract}
	\chapter*{Abstract}
	\input{frontmatter/abstract}
}

\newcommand{\zusammenfassung}{
    \phantomsection
    \newpage
	\addcontentsline{toc}{chapter}{Zusammenfassung}
	\chapter*{Zusammenfassung}
	\input{frontmatter/zusammenfassung}
}

\newcommand{\dedicationpage}{
	%\pagestyle{fancy}
	\newpage 
	\thispagestyle{empty}
	%\thispagestyle{fancy} 
	\vspace*{\fill}
	\sc \noindent \input{frontmatter/dedication}
	\vspace*{\fill} \newpage \rm
	}

\newcommand{\publicationspage}{
	\chapter*{Publications}
	\noindent \input{frontmatter/publications}
	\vspace*{\fill} 
	\newpage \rm
	}

\newcommand{\declarationpage}{
	\chapter*{Declaration}
	\noindent \input{frontmatter/declaration}
	\vspace*{\fill} 
	\newpage \rm
	}
	
% the list of authors
\newcommand{\authorlist}{
	%\pagestyle{fancy}
	\newpage
	%\thispagestyle{fancy} 
	\chapter*{Author List}
	\noindent \input{frontmatter/authorlist}
	\newpage \rm
	}

% the acknowledgments page
\newcommand{\acknowledgments}{
	\chapter*{Acknowledgments}
	\noindent
	\input{frontmatter/thanks}
	\vspace*{\fill} 
	\newpage
	%\setcounter{page}{1}
	%\pagenumbering{arabic}
	}
	
% An environment for paragraph-style section
\providecommand\newthought[1]{%
   \addvspace{1.0\baselineskip plus 0.5ex minus 0.2ex}%
   \noindent\textsc{#1}}
