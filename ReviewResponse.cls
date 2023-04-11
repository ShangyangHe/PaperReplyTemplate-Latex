\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ReviewResponse}[2022/02/23 Review Response - He Shangyang]
%基础格式-article
\LoadClass[onecolumn,a4paper]{article}


%标题
\renewcommand{\maketitle}{%
	\begin{center}
			\fontsize{18}{50}\fontseries{b}\selectfont
			\@title
		\end{center}
}


%正文字号与字间距
\renewcommand{\normalsize}{\fontsize{11pt}{14pt}\fontseries{m}\selectfont}
\setlength{\parskip}{1em}
%页边距
\RequirePackage{geometry}
\geometry{right=2cm, top=2cm, left=2cm, bottom=2cm}
%文章细节
\newcommand{\PaperDeta}[2]{
	\begin{center}
		\fontsize{8}{10}\selectfont
		\begin{table}[h]
			\begin{tabular}{|p{4cm}p{12.4cm}|ll|}
				\hline
				\textbf{Paper title:} & #1 \\
				\textbf{Manuscript number:} & #2 \\ \hline
			\end{tabular}
		\end{table}
	\end{center}
}
%回复名称
\RequirePackage{xcolor}
\newcommand{\ReplyTarget}[1]{
\begin{center}
	\fontsize{14}{10}\fontseries{b}\selectfont
	\setlength{\fboxrule}{1pt}
	\fcolorbox{black}{blue!45}{\makebox[170mm]{#1}}
	\vspace{1pt}
\end{center}

}
%Editor邮件内容
\RequirePackage{color}
\newcommand{\EditorEmail}[1]{
	\begin{center}
	\fontsize{11}{18}\selectfont
	\fbox{\parbox{170mm}{\textit{\textcolor{blue}{#1}}}}
\end{center}
}
%Command内容
\newcommand{\ReviewerCommand}[2]{
% #1 - command number
% #2 - text
\begin{center}
	{\fontsize{14}{10}\fontseries{b}\selectfont
	\setlength{\fboxrule}{1pt}
	\fcolorbox{black}{black!20}{\makebox[170mm][l]{Comment #1:}}}
	{\fontsize{11}{18}\selectfont
	\fbox{\parbox{170mm}{\textit{\textcolor{blue}{#2}}}}}
\end{center}

}