# XeLaTeX---Resume

## Complier
Resume use XeLateX complier. If your using Overleaf V.2, you can change the complier by first, clicking the menu buttion on the top left corner. Move down to the compliers dropdown and select XeLateX.

## Modified Command
```
\section{..} % Takes one argument. Main heading with underline.
\subsection{..} % Takes one argument. Secondary heading.
\subsubsection{..} % Takes one argument.

```

## New Command
Commands to create the title block. 
```
\namesection{..}{..}{..}{..} % Creates title block consisting of 4 arguments 1 name and 3 contacts. 
\longernamesection{..}{..}{..}{..}{..} % Creates title block consisting of 5 argument 1 name and 4 contacts.
```
Generates objective in italics.  
```
\objective{..} % Takes one argument
```
Create the dated header.
```
%  Two argument, header and time peroid
\datedsection{..}{..} % modified section
\datedsubsection{..}{..} % modifeid subsection
```
Since most of the time you need to show aleast three workitems. Command below makes it simple to generate list of 3 items.
```
\workitems{}{}{}
```
## References
1.[https://www.overleaf.com/learn/latex/Learn_LaTeX_in_30_minutes](https://www.overleaf.com/learn/latex/Learn_LaTeX_in_30_minutes)
