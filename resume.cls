\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2019/07/28 My custom Resume class]

% Required Package%
\RequirePackage{titlesec}

\LoadClass{article}

% Load other packages %
\usepackage[hmargin=1.0cm, vmargin=1.0cm]{geometry}
\usepackage{fontspec}
\usepackage{graphicx}
\usepackage{color}
\usepackage{amssymb}
\usepackage{hyperref}
\usepackage{tikz}
\usepackage{pstricks}

\psset{cornersize=absolute,linearc=.5\baselineskip}
% Path to images %
\graphicspath{ {.res/images/} }

% Define some basic Colours %
%Custom Colors
\definecolor{header}{gray}{0.1}
\definecolor{header1}{gray}{0.55}
\definecolor{body}{gray}{0.35}
\definecolor{sub}{gray}{0.26}

%........................................MODIFIED.COMMAND.........................................%

%modified section command
\titleformat{\section}         % Customise the \section command 
  {\fontspec[Path = res/fonts/Antic/]{Antic-Regular}\color{header}\fontsize{14pt}{10pt}\vspace{7pt}\scshape\raggedright} % Make the \section headers large (\Large),
                               % small capitals (\scshape) and left aligned (\raggedright)
  {}{0em}                      % Can be used to give a prefix to all sections, like 'Section ...'
  {}                           % Can be used to insert code before the heading
  [\titlerule] 
 
 %modified subsection command 
\titleformat{\subsection} % Customise the \subsection command 
  {\fontspec[Path = res/fonts/Antic/]{Antic-Regular}\color{body}\large\fontsize{12pt}{10pt}\vspace{7pt}\scshape\raggedright}
  {}{0em}
  {}

 %modified subsubsection command 
\titleformat{\subsubsection} % Customise the \subsection command 
  {\fontspec[Path = res/fonts/Antic/]{Antic-Regular}\color{body}\large\fontsize{10pt}{10pt}\vspace{7pt}\scshape\raggedright}
  {}{0em}
  {}

%............................................NEW.COMMANDS............................................% 

% data section v.1 %
\newcommand{\datedsection}[2]{%
  \section[#1]{#1 \hfill #2}%
}

% data section v.2 %
\newcommand{\datedsubsection}[2]{%
  \subsection[#1]{#1 \hfill #2}%
}

% Lists%
\newcommand{\workitems}[3]{% 
    \fontspec[Path = res/fonts/Antic/]{Antic-Regular}\color{body}\fontsize{10pt}{10pt}\vspace{5pt}\begin{itemize}
    \item #1
    \item #2
    \item #3
    \end{itemize}%
}

% Name and contacts info %
\newcommand{\namesection}[4]{
	   
	   \centering
	   { 
	   \fontspec[Path = res/fonts/Quicksand/]{Quicksand-Light}\color{header}\fontsize{45pt}{10cm}\selectfont  #1
	   \fontspec[Path = res/fonts/Quicksand/]{Quicksand-Regular}\color{sub} #2
	   } \\
	   \vspace{5pt}\hspace{1pt}
	   \centering\color{body}\fontspec[Path = res/fonts/Quicksand/]{Quicksand-Light}\fontsize{10pt}{10pt}\selectfont #3 \\
	   
	   \vspace{1pt} \hspace{1pt}
	   \centering\color{body}\fontspec[Path = res/fonts/Quicksand/]{Quicksand-Light}\fontsize{10pt}{10pt}\selectfont #4 \\
	   \vspace{3pt} 
	   \noindent\makebox[\linewidth]{\rule{590pt}{1.0pt}}
	   \vspace{5pt}
}

% Name and contacts info long version %
\newcommand{\longnamesection}[5]{
	   
	   \centering
	   { 
	   \fontspec[Path = res/fonts/Quicksand/]{Quicksand-Light}\color{header}\fontsize{45pt}{10cm}\selectfont  #1
	   \fontspec[Path = res/fonts/Quicksand/]{Quicksand-Regular}\color{sub} #2
	   } \\
	   \vspace{5pt}\hspace{1pt}
	   \centering\color{body}\fontspec[Path = res/fonts/Quicksand/]{Quicksand-Light}\fontsize{10pt}{10pt}\selectfont #3 \\
	   
	   \vspace{1pt} \hspace{1pt}
	   \centering\color{body}\fontspec[Path = res/fonts/Quicksand/]{Quicksand-Light}\fontsize{10pt}{10pt}\selectfont #4 \\
	   \vspace{3pt} \\
	   \centering\color{body}\fontspec[Path = res/fonts/Quicksand/]{Quicksand-Light}\fontsize{10pt}{10pt}\selectfont #5 \\
	   \noindent\makebox[\linewidth]{\rule{590pt}{1.0pt}} 
	   \vspace{5pt}
}

% command to write objective %
\newcommand{\objective}[1]{\fontspec[Path = res/fonts/Opensans/]{OpenSans-RegularItalic}\color{body}\fontsize{12pt}{10pt}\selectfont #1}

% command for skill level bar %
\newcommand{\grade}[1]{
    \begin{tikzpicture}
    \clip (1em-.3em,-.3em) rectangle (5em +.5em ,.3em);
    \begin{scope}
    \clip (1em-.3em,-.3em) rectangle (#1em +.5em ,.3em);
    \foreach \x in {1,2,...,5}{
     \path[fill=gray] (\x em,0) circle (.25em);
    }
    \end{scope}
    \foreach \x in {1,2,...,5}{
    \draw (\x em,0) circle (.25em);
    }
    \end{tikzpicture}%
}