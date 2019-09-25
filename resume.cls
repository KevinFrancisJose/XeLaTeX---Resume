\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2019/07/28 My custom Resume class]

% Required Package%
\RequirePackage{titlesec}

\LoadClass{article}

% Load other packages %
\usepackage[hmargin=1.0cm, vmargin=1.0cm]{geometry}
\usepackage{fontspec}
\usepackage{graphicx}
\usepackage{xcolor}
\usepackage{amssymb}
\usepackage{hyperref}
\usepackage{tikz}
\usepackage{pstricks}
\usepackage{geometry}
\usepackage{enumitem}
\usepackage{fontawesome}
\usepackage{ragged2e}
\usepackage{arydshln}
\usepackage{dashrule}

\setlist[itemize]{itemsep=0.01pt}

\psset{cornersize=absolute,linearc=.5\baselineskip} 

\setlength{\dashlinedash}{0.2pt}
\setlength{\dashlinegap}{4.5pt}
\setlength{\arrayrulewidth}{0.2pt}

% Path to images %
\graphicspath{ {.res/images/} }

% Define some basic Colours %
%Custom Colors
\definecolor{header}{rgb}{0.7,0.0,0.4}
\definecolor{header1}{rgb}{0.,0.0,0.0}
\definecolor{body}{rgb}{0.6,0.0,0.3}
\definecolor{sub}{gray}{0.1}

%........................................MODIFIED.COMMAND.........................................%

%modified section command
\titleformat{\section}         % Customise the \section command 
  {\fontspec[Path = res/fonts/Quicksand/]{Quicksand-SemiBold}\color{header}\fontsize{18pt}{10pt}\vspace{7pt}\scshape\raggedright} % Make the \section headers large (\Large),
                               % small capitals (\scshape) and left aligned (\raggedright)
  {}{0em}                      % Can be used to give a prefix to all sections, like 'Section ...'
  {}                           % Can be used to insert code before the heading
  [\titlerule] 
 
 %modified subsection command 
\titleformat{\subsection} % Customise the \subsection command 
  {\fontspec[Path = res/fonts/Quicksand/]{Quicksand-Medium}\color{header1}\large\fontsize{14pt}{10pt}\vspace{7pt}\scshape\raggedright}
  {}{0em}
  {}

 %modified subsubsection command 
\titleformat{\subsubsection} % Customise the \subsection command 
  {\fontspec[Path = res/fonts/Quicksand/]{Quicksand-Bold}\color{sub}\large\fontsize{12pt}{10pt}\vspace{7pt}\scshape\raggedright}
  {}{0em}
  {}

% itemize modified %
\renewcommand{\labelitemi}{\scriptsize$\blacksquare$}
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
    \fontspec[Path = res/fonts/Antic/]{Antic-Regular}\color{sub}\fontsize{10pt}{10pt}\vspace{5pt}\begin{itemize}
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

% Name title %
\newcommand{\name}[3]{%
    \RaggedRight\fontspec[Path = res/fonts/Quicksand/]{Quicksand-SemiBold}\color{header}\fontsize{40pt}{10pt}\selectfont  #1
    \RaggedRight\fontspec[Path = res/fonts/Quicksand/]{Quicksand-SemiBold}\color{sub} #2 \\
    \RaggedRightt\vspace{3pt}\color{sub}\fontspec[Path = res/fonts/Quicksand/]{Quicksand-SemiBold}\fontsize{15pt}{10pt}\selectfont #3 \\
}

% right aligned contacts %
\newcommand{\contact}[5]{
	   \RaggedLeft\color{sub} 
	   \fontspec[Path = res/fonts/Quicksand/]{Quicksand-Regular}\fontsize{10pt}{10pt}\selectfont #1
	   \hspace{1pt} \faPhone \\ \vspace{1pt}
	   \RaggedLeft\color{sub}
	   \fontspec[Path = res/fonts/Quicksand/]{Quicksand-Regular}\fontsize{10pt}{10pt}\selectfont #2 
	   \hspace{1pt} \faAt \\ \vspace{1pt}
	   \RaggedLeft\color{sub}
	   \fontspec[Path = res/fonts/Quicksand/]{Quicksand-Regular}\fontsize{10pt}{10pt}\selectfont #3 
       \hspace{1pt} \faEnvelope \vspace{1pt} \\
       \RaggedLeft\color{sub}
       \fontspec[Path = res/fonts/Quicksand/]{Quicksand-Regular}\fontsize{8pt}{10pt}\selectfont #4
       \hspace{1pt} \faLinkedin \\ \vspace{1pt}
       \RaggedLeft\color{sub}
       \fontspec[Path = res/fonts/Quicksand/]{Quicksand-Regular}\fontsize{10pt}{10pt}\selectfont #5
       \hspace{1pt} \faMapMarker \\
}

% command to write objective %
\newcommand{\objective}[1]{\fontspec[Path = res/fonts/Opensans/]{OpenSans-RegularItalic}\color{body}\fontsize{11pt}{10pt}\selectfont #1}

% %
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

% Command for printing skill progress bars
\newcommand{\skills}[2]{\begin{tikzpicture}
\node [anchor=west] at (.01,.8) {#1};
\draw [fill=white] (0,0) rectangle (7,.25);
\draw [fill={rgb:red,7;green,1;blue,4}] (0,0) rectangle (#2*7,.25);
\end{tikzpicture}}

\newcommand{\xbody}[1]{\fontspec[Path=res/fonts/Quicksand/]{Quicksand-Medium}\color{sub}\fontsize{12pt}{10pt} #1}

\newcommand{\xboldbody}[1]{\fontspec[Path=res/fonts/Quicksand/]{Quicksand-Medium}\color{sub}\fontsize{10pt}{10pt} #1}

\newcommand{\datetime}[2]{
    \fontspec[Path=res/fonts/Opensans/]{OpenSans-RegularItalic}\color{sub}\fontsize{9pt}{10pt}\faCalendar\vspace{1pt}#1 - #2 
}

\newcommand{\sub}[1]{
 \fontspec[Path=res/fonts/Quicksand/]{Quicksand-SemiBold}\color{body}\fontsize{14pt}{10pt} #1
}

\newcommand{\project}[2]{
     \fontspec[Path=res/fonts/Quicksand/]{Quicksand-SemiBold}\color{sub}\fontsize{12pt}{10pt} #1 :-
     \fontspec[Path=res/fonts/Quicksand/]{Quicksand-Medium}\color{sub}\fontsize{12pt}{10pt} #2
}