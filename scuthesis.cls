%%
%% This is file `scuthesis.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% scuthesis.dtx  (with options: `cls')
%% 
%% This is a generated file.
%% 
%% Copyright (C) 2020-2020 by Suogui Dang <dangsuogui@foxmail.com>
%% 
%% This work may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%   http://www.latex-project.org/lppl.txt
%% and version 1.3 or later is part of all distributions of LaTeX
%% version 2005/12/01 or later.
%% 
%% To produce the documentation run the original source files ending with `.dtx'
%% through LaTeX.
%% 
\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{scuthesis}
[2020/02/19 0.0.1 Sichuan University Thesis Template]
\RequirePackage{ifxetex}
\RequireXeTeX
\hyphenation{SCU-Thesis}
\def\scuthesis{SCUThesis}
\def\version{0.0.1}
\RequirePackage{kvdefinekeys}
\RequirePackage{kvsetkeys}
\RequirePackage{kvoptions}
\SetupKeyvalOptions{
  family=scu,
  prefix=scu@,
  setkeys=\kvsetkeys}
\newcommand\scu@error[1]{
    \ClassError{scuthesis}{#1}{}
}
\newcommand\scusetup{
    \kvsetkeys{scu}
}
\newcommand\scu@define@key[1]{%
  \kvsetkeys{scu@key}{#1}%
}
\kv@set@family@handler{scu@key}{%
  \@namedef{scu@#1@@name}{#1}%
  \def\scu@@default{}%
  \def\scu@@choices{}%
  \kv@define@key{scu@value}{name}{%
    \@namedef{scu@#1@@name}{##1}%
  }%
  \kv@define@key{scu@value}{code}{%
    \@namedef{scu@#1@@code}{##1}%
  }%
  \@namedef{scu@#1@@check}{}%
  \@namedef{scu@#1@@code}{}%
  \@namedef{scu@#1@@hook}{%
    \expandafter\ifx\csname\@currname.\@currext-h@@k\endcsname\relax
      \@nameuse{scu@#1@@code}%
    \else
      \AtEndOfClass{%
        \@nameuse{scu@#1@@code}%
      }%
    \fi
  }%
  \kv@define@key{scu@value}{choices}{%
    \def\scu@@choices{##1}%
    \@namedef{scu@#1@@reset}{}%
    \@namedef{scu@#1@@check}{%
      \@ifundefined{%
        ifscu@\@nameuse{scu@#1@@name}@\@nameuse{scu@\@nameuse{scu@#1@@name}}%
      }{%
        \scu@error{Invalid value "#1 = \@nameuse{scu@\@nameuse{scu@#1@@name}}"}%
      }%
      \@nameuse{scu@#1@@reset}%
      \@nameuse{scu@\@nameuse{scu@#1@@name}@\@nameuse{scu@\@nameuse{scu@#1@@name}}true}%
    }%
  }%
  \kv@define@key{scu@value}{default}{%
    \def\scu@@default{##1}%
  }%
  \kvsetkeys{scu@value}{#2}%
  \@namedef{scu@\@nameuse{scu@#1@@name}}{}%
  \kv@set@family@handler{scu@choice}{%
    \ifx\scu@@default\@empty
      \def\scu@@default{##1}%
    \fi
    \expandafter\newif\csname ifscu@\@nameuse{scu@#1@@name}@##1\endcsname
    \expandafter\g@addto@macro\csname scu@#1@@reset\endcsname{%
      \@nameuse{scu@\@nameuse{scu@#1@@name}@##1false}%
    }%
  }%
  \kvsetkeys@expandafter{scu@choice}{\scu@@choices}%
  \expandafter\let\csname scu@\@nameuse{scu@#1@@name}\endcsname\scu@@default
  \expandafter\ifx\csname scu@\@nameuse{scu@#1@@name}\endcsname\@empty\else
    \@nameuse{scu@#1@@check}%
    \@nameuse{scu@#1@@hook}%
  \fi
  \kv@define@key{scu}{#1}{%
    \@namedef{scu@\@nameuse{scu@#1@@name}}{##1}%
    \@nameuse{scu@#1@@check}%
    \@nameuse{scu@#1@@hook}%
  }%
}
\newcommand\scu@addto[2]{%
  \expandafter\g@addto@macro\csname scu@#1@@code\endcsname{#2}%
}
\newif\ifscu@degree@graduate
\newcommand\scu@set@graduate{%
  \scu@degree@graduatefalse
  \ifscu@degree@doctor
    \scu@degree@graduatetrue
  \fi
  \ifscu@degree@master
    \scu@degree@graduatetrue
  \fi
}
\scu@define@key{
  degree = {
    choices = {
      bachelor,
      master,
      doctor,
      postdoc,
    },
    default = master,
    code = {\scu@set@graduate},
  },
  review = {
    choices = {
      blind,
      cameraready,
    },
    default = cameraready,
  },
  logo = {
    choices = {
      color,
      whiteblack,
    },
    default = color,
  },
  degree-type = {
    choices = {
      academic,
      professional,
    },
    name = degree@type,
  },
  language = {
    choices = {
      chinese,
      english,
    },
  },
}
\DeclareBoolOption[true]{raggedbottom}
\DeclareDefaultOption{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ProcessKeyvalOptions*
\PassOptionsToPackage{quiet}{xeCJK}
\LoadClass[a4paper,openany,UTF8,zihao=-4,scheme=plain]{ctexbook}
\RequirePackage{etoolbox}
\RequirePackage{xparse}
\RequirePackage{amsmath}
\RequirePackage{unicode-math}
\RequirePackage{graphicx}
\RequirePackage[labelformat=simple]{subcaption}
\RequirePackage{pdfpages}
\includepdfset{fitpaper=true}
\RequirePackage[shortlabels]{enumitem}
\RequirePackage{environ}
\ifscu@raggedbottom
  \RequirePackage[bottom,perpage,hang]{footmisc}
  \raggedbottom
\else
  \RequirePackage[perpage,hang]{footmisc}
\fi
\RequirePackage{CJKfntef}
\RequirePackage{array}
\RequirePackage{booktabs}
\RequirePackage[hyphens]{url}
\RequirePackage{hologo}
\RequirePackage{url}
\urlstyle{same}
\g@addto@macro\UrlBreaks{%
  \do0\do1\do2\do3\do4\do5\do6\do7\do8\do9%
  \do\A\do\B\do\C\do\D\do\E\do\F\do\G\do\H\do\I\do\J\do\K\do\L\do\M
  \do\N\do\O\do\P\do\Q\do\R\do\S\do\T\do\U\do\V\do\W\do\X\do\Y\do\Z
  \do\a\do\b\do\c\do\d\do\e\do\f\do\g\do\h\do\i\do\j\do\k\do\l\do\m
  \do\n\do\o\do\p\do\q\do\r\do\s\do\t\do\u\do\v\do\w\do\x\do\y\do\z
}
\Urlmuskip=0mu plus 0.1mu
\RequirePackage{geometry}
\geometry{
  a4paper, % 210 * 297mm
  nomarginpar,
}
\ifscu@degree@bachelor
  \geometry{
    top        = 2.75cm,
    bottom     = 2.5cm,
    left       = 2.5cm,
    right      = 2.5cm,
    headheight = 0.5cm,
    headsep    = 0.5cm,
    footskip   = 0.75cm,
  }
\else
  \geometry{
    top        = 2.75cm,
    bottom     = 2.5cm,
    left       = 2.5cm,
    right      = 2.5cm,
    headheight = 0.5cm,
    headsep    = 0.5cm,
    footskip   = 0.75cm,
  }
\fi
\RequirePackage{fancyhdr}
\RequirePackage{notoccite}
\let\scu@cleardoublepage\cleardoublepage
\newcommand{\scu@clearemptydoublepage}{%
  \clearpage{\pagestyle{scu@empty}\scu@cleardoublepage}}
\let\cleardoublepage\scu@clearemptydoublepage
\renewcommand\frontmatter{%
  \if@openright\cleardoublepage\else\clearpage\fi
  \@mainmatterfalse
  \ifscu@degree@bachelor
    \pagestyle{scu@plain}
  \else
    \pagestyle{scu@dual}
  \fi
  \pagenumbering{Roman}%
  \let\@tabular\scu@tabular
}
\renewcommand\mainmatter{%
  \if@openright\cleardoublepage\else\clearpage\fi
  \@mainmattertrue
  \pagenumbering{arabic}
  \ifscu@degree@bachelor\pagestyle{scu@plain}\else\pagestyle{scu@dual}\fi}
\renewcommand\backmatter{%
  \if@openright\cleardoublepage\else\clearpage\fi
  \@mainmattertrue}
\newcommand\scu@fontset{\csname g__ctex_fontset_tl\endcsname}
\ifthenelse{\equal{\scu@fontset}{fandol}}{
  \setmainfont[
    Extension      = .otf,
    UprightFont    = *-regular,
    BoldFont       = *-bold,
    ItalicFont     = *-italic,
    BoldItalicFont = *-bolditalic,
  ]{texgyretermes}
  \setsansfont[
    Extension      = .otf,
    UprightFont    = *-regular,
    BoldFont       = *-bold,
    ItalicFont     = *-italic,
    BoldItalicFont = *-bolditalic,
  ]{texgyreheros}
  \setmonofont[
    Extension      = .otf,
    UprightFont    = *-regular,
    BoldFont       = *-bold,
    ItalicFont     = *-italic,
    BoldItalicFont = *-bolditalic,
    Scale          = MatchLowercase,
  ]{texgyrecursor}
}{
  \setmainfont{Times New Roman}
  \setsansfont{Arial}
  \ifthenelse{\equal{\scu@fontset}{mac}}{
    \setmonofont[Scale=MatchLowercase]{Menlo}
  }{
    \setmonofont[Scale=MatchLowercase]{Courier New}
  }
}
\unimathsetup{
  math-style = ISO,
  bold-style = ISO,
  nabla      = upright,
  partial    = upright,
}
\IfFontExistsTF{XITSMath-Regular.otf}{
  \setmathfont[
    Extension    = .otf,
    BoldFont     = XITSMath-Bold,
    StylisticSet = 8,
  ]{XITSMath-Regular}
  \setmathfont[range={cal,bfcal},StylisticSet=1]{XITSMath-Regular.otf}
}{
  \setmathfont[
    Extension    = .otf,
    BoldFont     = *bold,
    StylisticSet = 8,
  ]{xits-math}
  \setmathfont[range={cal,bfcal},StylisticSet=1]{xits-math.otf}
}
\ifthenelse{\equal{\scu@fontset}{windows}}{
  \xeCJKsetup{EmboldenFactor=2}
  \IfFileExists{C:/bootfont.bin}{
    \setCJKmainfont[AutoFakeBold,ItalicFont=KaiTi_GB2312]{SimSun}
    \setCJKfamilyfont{zhkai}[AutoFakeBold]{KaiTi_GB2312}
  }{
    \setCJKmainfont[AutoFakeBold,ItalicFont=KaiTi]{SimSun}
    \setCJKfamilyfont{zhkai}[AutoFakeBold]{KaiTi}
  }
  \setCJKsansfont[AutoFakeBold]{SimHei}
  \setCJKfamilyfont{zhsong}[AutoFakeBold]{SimSun}
  \setCJKfamilyfont{zhhei}[AutoFakeBold]{SimHei}
}{}
\ifthenelse{\equal{\scu@fontset}{mac}}{
  \setCJKmainfont[
         UprightFont = * Light,
            BoldFont = * Bold,
          ItalicFont = Kaiti SC,
      BoldItalicFont = Kaiti SC Bold,
    ]{Songti SC}
  \setCJKsansfont[BoldFont=* Medium]{Heiti SC}
  \setCJKfamilyfont{zhsong}[
         UprightFont = * Light,
            BoldFont = * Bold,
    ]{Songti SC}
  \setCJKfamilyfont{zhhei}[BoldFont=* Medium]{Heiti SC}
  \setCJKfamilyfont{zhkai}[BoldFont=* Bold]{Kaiti SC}
  \xeCJKsetwidth{‘’“”}{1em}
}{}
\renewcommand\normalsize{%
  \@setfontsize\normalsize{12bp}{20bp}%
  \abovedisplayskip=12bp \@plus 2bp \@minus 2bp
  \abovedisplayshortskip=12bp \@plus 2bp \@minus 2bp
  \belowdisplayskip=\abovedisplayskip
  \belowdisplayshortskip=\abovedisplayshortskip}
\def\scu@def@fontsize#1#2{%
  \expandafter\newcommand\csname #1\endcsname[1][1.3]{%
    \fontsize{#2}{##1\dimexpr #2}\selectfont}}
%% 一组字号定义。TODO：用 \cs{zihao} 替代。
\scu@def@fontsize{chuhao}{42bp}
\scu@def@fontsize{xiaochu}{36bp}
\scu@def@fontsize{yihao}{26bp}
\scu@def@fontsize{xiaoyi}{24bp}
\scu@def@fontsize{erhao}{22bp}
\scu@def@fontsize{xiaoer}{18bp}
\scu@def@fontsize{sanhao}{16bp}
\scu@def@fontsize{xiaosan}{15bp}
\scu@def@fontsize{sihao}{14bp}
\scu@def@fontsize{banxiaosi}{13bp}
\scu@def@fontsize{xiaosi}{12bp}
\scu@def@fontsize{dawu}{11bp}
\scu@def@fontsize{wuhao}{10.5bp}
\scu@def@fontsize{xiaowu}{9bp}
\scu@def@fontsize{liuhao}{7.5bp}
\scu@def@fontsize{xiaoliu}{6.5bp}
\scu@def@fontsize{qihao}{5.5bp}
\scu@def@fontsize{bahao}{5bp}
\newcommand\scu@setchinese{%
  \xeCJKResetPunctClass
}
\newcommand\scu@setenglish{%
  \xeCJKDeclareCharClass{HalfLeft}{"2018, "201C}%
  \xeCJKDeclareCharClass{HalfRight}{
    "00B7, "2019, "201D, "2013, "2014, "2025, "2026, "2E3A,
  }%
}
\newcommand\scu@setdefaultlanguage{%
  \ifscu@language@chinese
    \scu@setchinese
  \else
    \scu@setenglish
  \fi
}
\ifscu@language@chinese
  \ctexset{
    chapter/name   = {第,章},
    appendixname   = 附录,
    contentsname   = {目\hspace{\ccwd}录},
    listfigurename = 插图索引,
    listtablename  = 表格索引,
    figurename     = 图,
    tablename      = 表,
    bibname        = 参考文献,
    indexname      = 索引,
  }
  \newcommand\scu@denotation@name{主要符号对照表}
  \newcommand\listequationname{公式索引}
  \newcommand\equationname{公式}
  \newcommand\scu@assumption@name{假设}
  \newcommand\scu@definition@name{定义}
  \newcommand\scu@proposition@name{命题}
  \newcommand\scu@lemma@name{引理}
  \newcommand\scu@theorem@name{定理}
  \newcommand\scu@axiom@name{公理}
  \newcommand\scu@corollary@name{推论}
  \newcommand\scu@exercise@name{练习}
  \newcommand\scu@example@name{例}
  \newcommand\scu@remark@name{注释}
  \newcommand\scu@problem@name{问题}
  \newcommand\scu@conjecture@name{猜想}
  \newcommand\scu@proof@name{证明}
  \newcommand\scu@theorem@separator{：}
  \newcommand\scu@ack@name{致\hspace{\ccwd}谢}
  \ifscu@degree@bachelor
    \newcommand\scu@resume@title{在学期间参加课题的研究成果}
  \else
    \ifscu@degree@postdoc
      \newcommand\scu@resume@title{攻读学位期间取得的研究成果}
    \else
      \newcommand\scu@resume@title{攻读学位期间取得的研究成果}
    \fi
  \fi
\else
  \newcommand\scu@denotation@name{Nomenclature}
  \newcommand\listequationname{List of Equations}
  \newcommand\equationname{Equation}
  \newcommand\scu@assumption@name{Assumption}
  \newcommand\scu@definition@name{Definition}
  \newcommand\scu@proposition@name{Proposition}
  \newcommand\scu@lemma@name{Lemma}
  \newcommand\scu@theorem@name{Theorem}
  \newcommand\scu@axiom@name{Axiom}
  \newcommand\scu@corollary@name{Corollary}
  \newcommand\scu@exercise@name{Exercise}
  \newcommand\scu@example@name{Example}
  \newcommand\scu@remark@name{Remark}
  \newcommand\scu@problem@name{Problem}
  \newcommand\scu@conjecture@name{Conjecture}
  \newcommand\scu@proof@name{proof}
  \newcommand\scu@theorem@separator{: }
  \newcommand\scu@ack@name{Acknowledgements}
  \ifscu@degree@bachelor
    \newcommand\scu@resume@title{Research Achievements}
  \else
    \ifscu@degree@postdoc
      \newcommand\scu@resume@title{%
        Publications and Research Achievements%
      }
    \else
      \newcommand\scu@resume@title{%
        Publications and Research Achievements%
      }
    \fi
  \fi
\fi
\fancypagestyle{scu@empty}{%
  \fancyhf{}
  \renewcommand{\headrulewidth}{0pt}
  \renewcommand{\footrulewidth}{0pt}}
\fancypagestyle{scu@plain}{%
  \fancyhead{}
  \fancyfoot[C]{\xiaowu\thepage}
  \renewcommand{\headrulewidth}{0pt}
  \renewcommand{\footrulewidth}{0pt}}
\fancypagestyle{scu@headings}{%
  \fancyhead{}
  \fancyhead[C]{\wuhao\normalfont\leftmark}
  \fancyfoot{}
  \fancyfoot[C]{\wuhao\thepage}
  \renewcommand{\headrulewidth}{0.4pt}
  \renewcommand{\footrulewidth}{0pt}}
\fancypagestyle{scu@dual}{%
  \fancyhead{}
  \fancyhead[CO]{\wuhao\normalfont\leftmark}
  \fancyhead[CE]{\wuhao\normalfont\scu@title}
  \fancyfoot{}
  \fancyfoot[CO,CE]{\wuhao\thepage}
  \renewcommand{\headrulewidth}{0.4pt}
  \renewcommand{\footrulewidth}{0pt}}
\ctexset{%
  punct=quanjiao,
  space=auto,
  autoindent=true}
\setlist{nosep}
\ifthenelse{\equal{\scu@fontset}{mac}}{
  \newfontfamily\scu@circlefont{Songti SC Light}
}{
  \ifthenelse{\equal{\scu@fontset}{windows}}{
    \newfontfamily\scu@circlefont{SimSun}
  }{
    \IfFontExistsTF{XITS-Regular.otf}{
      \newfontfamily\scu@circlefont{XITS-Regular.otf}
    }{
      \newfontfamily\scu@circlefont{xits-regular.otf}
    }
  }
}
\def\scu@textcircled#1{%
  \ifnum\value{#1} >9%
    \ClassError{scuthesis}%
      {Too many footnotes in this page.}{Keep footnote less than 10.}%
  \fi
  {\scu@circlefont\symbol{\the\numexpr\value{#1}+"245F\relax}}%
}
\renewcommand{\thefootnote}{\scu@textcircled{footnote}}
\renewcommand{\thempfootnote}{\scu@textcircled{mpfootnote}}
\def\footnoterule{\vskip-3\p@\hrule\@width0.3\textwidth\@height0.4\p@\vskip2.6\p@}
\let\scu@footnotesize\footnotesize
\renewcommand\footnotesize{\scu@footnotesize\xiaowu[1.5]}
\footnotemargin1.5em\relax
\let\scu@makefnmark\@makefnmark
\def\scu@@makefnmark{\hbox{{\normalfont\@thefnmark}}}
\pretocmd{\@makefntext}{\let\@makefnmark\scu@@makefnmark}{}{}
\apptocmd{\@makefntext}{\let\@makefnmark\scu@makefnmark}{}{}
\ifscu@language@chinese
  \def\mathellipsis{\cdots}
\fi
\protected\def\le{\leqslant}
\protected\def\ge{\geqslant}
\AtBeginDocument{%
  \renewcommand\leq{\leqslant}%
  \renewcommand\geq{\geqslant}%
}
\removenolimits{%
  \int\iint\iiint\iiiint\oint\oiint\oiiint
  \intclockwise\varointclockwise\ointctrclockwise\sumint
  \intbar\intBar\fint\cirfnint\awint\rppolint
  \scpolint\npolint\pointint\sqint\intlarhk\intx
  \intcap\intcup\upint\lowint
}
\AtBeginDocument{%
  \renewcommand{\Re}{\operatorname{Re}}%
  \renewcommand{\Im}{\operatorname{Im}}%
}
\AtBeginDocument{%
  \renewcommand\nabla{\mbfnabla}%
}
\newcommand\bm{\symbf}
\renewcommand\boldsymbol{\symbf}
\newcommand\square{\mdlgwhtsquare}
\allowdisplaybreaks[4]
\renewcommand\theequation{\ifnum \c@chapter>\z@ \thechapter-\fi\@arabic\c@equation}
\setlength{\floatsep}{12bp \@plus 2bp \@minus 4bp}
\setlength{\textfloatsep}{12bp}
\setlength{\intextsep}{12bp}
\setlength{\@fptop}{0bp \@plus1.0fil}
\setlength{\@fpsep}{12bp \@plus2.0fil}
\setlength{\@fpbot}{0bp \@plus1.0fil}
\renewcommand{\textfraction}{0.15}
\renewcommand{\topfraction}{0.85}
\renewcommand{\bottomfraction}{0.65}
\renewcommand{\floatpagefraction}{0.60}
\ifscu@degree@bachelor
  \g@addto@macro\appendix{\renewcommand*{\thefigure}{\thechapter-\arabic{figure}}}
  \g@addto@macro\appendix{\renewcommand*{\thetable}{\thechapter-\arabic{table}}}
\fi
\let\old@tabular\@tabular
\def\scu@tabular{\dawu[1.0]\old@tabular}
\DeclareCaptionFont{scu}{\dawu[1.0]}
\DeclareCaptionLabelSeparator{scu}{\hspace{\ccwd}}
\captionsetup{
  font           = scu,
  labelsep       = scu,
  skip           = 6bp,
  figureposition = bottom,
  tableposition  = top,
  labelfont      = bf,
  textfont       = bf,
}
\captionsetup[sub]{font=scu}
\renewcommand{\thesubfigure}{(\alph{subfigure})}
\renewcommand{\thesubtable}{(\alph{subtable})}
\def\hlinewd#1{%
  \noalign{\ifnum0=`}\fi\hrule \@height #1 \futurelet
    \reserved@a\@xhline}
\ifscu@degree@bachelor
  \newcommand{\cabstractname}{摘要}
  \newcommand{\eabstractname}{ABSTRACT}
\else
  \newcommand{\cabstractname}{摘\hspace{\ccwd}要}
  \newcommand{\eabstractname}{Abstract}
\fi
\AtBeginDocument{%
  \pagestyle{scu@empty}
  \renewcommand{\chaptermark}[1]{\@mkboth{\CTEXthechapter\hskip\ccwd#1}{}}}
\newcommand\scu@chapter@titleformat[1]{%
  \ifscu@degree@bachelor #1\else%
    \ifthenelse%
      {\equal{#1}{\eabstractname}}%
      {\bfseries #1}%
      {#1}%
  \fi}
\ctexset{%
  chapter={
    afterindent=true,
    pagestyle={\ifscu@degree@bachelor scu@plain\else scu@dual\fi},
    beforeskip={\ifscu@degree@bachelor 24bp\else 24bp\fi},
    aftername=\hskip\ccwd,
    afterskip={\ifscu@degree@bachelor 18bp\else 18bp\fi},
    format={\centering\sffamily\ifscu@degree@bachelor\xiaosan[1.333]\else\sanhao[1]\fi},
    nameformat=\relax,
    numberformat=\relax,
    titleformat=\scu@chapter@titleformat,
    lofskip=0pt,
    lotskip=0pt,
  },
  section={
    afterindent=true,
    beforeskip={\ifscu@degree@bachelor 25bp\else 24bp\fi\@plus 1ex \@minus .2ex},
    afterskip={\ifscu@degree@bachelor 12bp\else 6bp\fi \@plus .2ex},
    format={\sffamily\ifscu@degree@bachelor\sihao[1.286]\else\sihao[1.429]\fi},
  },
  subsection={
    afterindent=true,
    beforeskip={\ifscu@degree@bachelor 12bp\else 12bp\fi\@plus 1ex \@minus .2ex},
    afterskip={6bp \@plus .2ex},
    format={\sffamily\ifscu@degree@bachelor\xiaosi[1.25]\else\xiaosi[1.167]\fi},
    numberformat={\sffamily\ifscu@degree@bachelor\banxiaosi[1.154]\else\xiaosi[1.167]\fi},
  },
  subsubsection={
    afterindent=true,
    beforeskip={\ifscu@degree@bachelor 12bp\else 12bp\fi\@plus 1ex \@minus .2ex},
    afterskip={6bp \@plus .2ex},
    format={\sffamily\kaishu\ifscu@degree@bachelor\xiaosi[1.25]\else\xiaosi[1.667]\fi},
  },
  paragraph/afterindent=true,
  subparagraph/afterindent=true}
\newcommand\scu@pdfbookmark[2]{}
\NewDocumentCommand\scu@chapter{s o m o}{
  \IfBooleanF{#1}{%
    \ClassError{scuthesis}{You have to use the star form: \string\scu@chapter*}{}
  }%
  \if@openright\cleardoublepage\else\clearpage\fi%
  \IfValueTF{#2}{%
    \ifthenelse{\equal{#2}{}}{%
      \scu@pdfbookmark{0}{#3}%
    }{%
      \addcontentsline{toc}{chapter}{#3}
    }
  }{%
    \addcontentsline{toc}{chapter}{#3}
  }%
  \ifscu@degree@bachelor \ctexset{chapter/beforeskip=25bp} \fi
  \chapter*{#3}%
  \ifscu@degree@bachelor \ctexset{chapter/beforeskip=15bp} \fi
  \IfValueTF{#4}{%
    \ifthenelse{\equal{#4}{}}
    {\@mkboth{}{}}
    {\@mkboth{#4}{#4}}
  }{%
    \@mkboth{#3}{#3}
  }
}
\setcounter{secnumdepth}{3}
\setcounter{tocdepth}{2}
\renewcommand\tableofcontents{%
  \scu@chapter*[]{\contentsname}
  \ifscu@degree@bachelor\xiaosi[2.0]\else\xiaosi[2.0]\fi\@starttoc{toc}\normalsize}
\def\@pnumwidth{2em}
\def\@tocrmarg{\@pnumwidth}
\def\@dotsep{1}
\renewcommand*\l@chapter[2]{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \ifscu@degree@bachelor\vskip 6bp\else\vskip 4bp\fi \@plus\p@
    \setlength\@tempdima{4em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      \begingroup
        \ifscu@degree@graduate
          \sffamily
        \else
          \ifscu@degree@bachelor
            \heiti
          \fi
        \fi
        #1%
      \endgroup
      \leaders\hbox{$\m@th\mkern \@dotsep mu\hbox{.}\mkern \@dotsep mu$}\hfill%
      \nobreak #2\par
      \penalty\@highpenalty
    \endgroup
  \fi}
\patchcmd{\@dottedtocline}{\hb@xt@\@pnumwidth}{\hbox}{}{}
\renewcommand*\l@section{%
  \songti\@dottedtocline{1}{\ccwd}{2.1em}}
\renewcommand*\l@subsection{%
  \songti\@dottedtocline{2}{\ifscu@degree@bachelor 1.5\ccwd\else 2\ccwd\fi}{3em}}
\renewcommand*\l@subsubsection{%
  \songti\@dottedtocline{3}{\ifscu@degree@bachelor 2.4em\else 3.5em\fi}{3.8em}}
\scu@define@key{
  secret-level = {
    name = secret@level,
  },
  secret-year = {
    name = secret@year,
  },
  title = {
    default = {标题},
  },
  title* = {
    default = {Title},
    name    = title@en,
  },
  author = {
    default = {姓名},
  },
  author* = {
    default = {Name of author},
    name    = author@en,
  },
  supervisor = {
    default = {导师姓名},
  },
  supervisor* = {
    default = {Name of supervisor},
    name    = supervisor@en,
  },
  associate-supervisor = {
    name = associate@supervisor,
  },
  associate-supervisor* = {
    name = associate@supervisor@en,
  },
  joint-supervisor = {
    name = joint@supervisor,
  },
  joint-supervisor* = {
    name = joint@supervisor@en,
  },
  degree-name = {
    default = {工学硕士},
    name    = degree@name,
  },
  degree-name* = {
    default = {Doctor of Philosophy},
    name    = degree@name@en,
  },
  department = {
    default = {计算机学院},
  },
  discipline = {
    % default = {计算机科学与技术},
  },
  discipline* = {
    % default = {Computer Science and Technology},
    name    = discipline@en,
  },
  date = {
    default = {\the\year-\two@digits{\month}-\two@digits{\day}},
  },
  presentdate = {
    default = {\the\year-\two@digits{\month}-\two@digits{\day}},
  },
  degreedate = {
    default = {\the\year-\two@digits{\month}-\two@digits{\day}},
  },
  stuid = {
    default = {1234},
  },
reviewid = {
  default = {1234},
  },
  departmentid = {
    default = {10610},
  },
}
\newcommand\scu@format@date[2]{%
  \edef\scu@@date{#2}%
  \def\scu@@process@date##1-##2-##3\@nil{%
    #1{##1}{##2}{##3}%
  }%
  \expandafter\scu@@process@date\scu@@date\@nil
}
\newcommand\scu@date@zh@digit[3]{#1 年 \number#2 月 \number#3 日}
\newcommand\scu@date@zh@digit@short[3]{#1 年 \number#2 月}
\newcommand\scu@date@zh@short[3]{\zhdigits{#1}年\zhnumber{#2}月}
\newcommand\scu@date@month[1]{%
  \ifcase\number#1\or
    January\or February\or March\or April\or May\or June\or
    July\or August\or September\or October\or November\or December%
  \fi
}
\newcommand\scu@date@en@short[3]{\scu@date@month{#2}, #1}
\newcommand\scu@underline[2][6em]{\hskip1pt\underline{\hb@xt@ #1{\hss#2\hss}}\hskip3pt}
\newcommand\scu@CJKunderline[2][6em]{\CJKunderline{\hb@xt@ #1{\hss#2\hss}}}
\newcommand\scu@fixed@box[2]{%
  \begingroup
    \def\CJKglue{\hskip 0pt plus 2filll minus 1filll}%
    \makebox[#1][l]{#2}%
  \endgroup
}
\newbox\scu@stretch@box
\newcommand\scu@stretch[2]{%
  \sbox\scu@stretch@box{#2}%
  \ifdim \wd\scu@stretch@box < #1\relax
    \begingroup
      \def\CJKglue{\hskip 0pt plus 2filll}%
      \makebox[#1][l]{#2}%
    \endgroup
  \else
    \box\scu@stretch@box
  \fi
}
\newbox\scu@pad@box
\newcommand\scu@pad[2]{%
  \sbox\scu@pad@box{#2}%
  \ifdim \wd\scu@pad@box < #1\relax
    \makebox[#1][c]{\box\scu@pad@box}%
  \else
    \box\scu@pad@box
  \fi
}
\newcounter{scu@csl@count}
\newcommand\scu@name@title@process[1]{%
  \ifcase\c@scu@csl@count  % == 0
    \gdef\scu@@name{#1}%
  \or  % == 1
    \gdef\scu@@title{#1}%
  \fi
  \stepcounter{scu@csl@count}%
}
\newcommand\scu@name@title@format[2]{%
  \scu@pad{2cm}{\scu@stretch{2em}{#1}}%
  \scu@stretch{2em}{#2}%
}
\newcommand\scu@name@title[1]{%
  \setcounter{scu@csl@count}{0}%
  \gdef\scu@@name{}%
  \gdef\scu@@title{}%
  \expandafter\comma@parse\expandafter{#1}{\scu@name@title@process}%
  \scu@name@title@format{\scu@@name}{\scu@@title}%
}
\renewcommand\maketitle{%
  \cleardoublepage
  \pagestyle{scu@empty}%
  \pagenumbering{Alph}%
  \scu@pdfbookmark{-1}{\scu@title}%
  \scu@titlepage
  \ifscu@degree@graduate
    \ifscu@review@cameraready
      \cleardoublepage
      \scu@titlepage@en
    \fi
  \fi
  \clearpage
}
\newcommand\scu@titlepage{%
  \ifscu@degree@graduate
    \ifscu@degree@type@academic
      \scu@titlepage@graduate@academic
    \else
      \scu@titlepage@graduate@professional
    \fi
  \else
    \scu@error{"Invalid"}
  \fi
}
\newcommand\scu@titlepage@graduate@academic{%
  \scu@titlepage@graduate@base
}
\newcommand\scu@titlepage@graduate@professional{%
  \scu@titlepage@graduate@base
}
\newcommand\scu@titlepage@graduate@base{
  \newgeometry{
    top     = 2.75cm,
    bottom  = 2.5cm,
    hmargin = 2.5cm,
  }%
  \scu@titlepage@depstuid
  \vskip 2cm%
  \begingroup
    \centering
    {\scu@titlepage@name}%
    \vskip 2cm%
    \scu@titlepage@title
    \vfill
    \parbox[t][7.25cm][t]{\textwidth}{\centering\scu@titlepage@info}\par
    \ifscu@review@cameraready
      \parbox[t][1.03cm][t]{\textwidth}{\centering\scu@titlepage@presentdate}\par
      \parbox[t][1.03cm][t]{\textwidth}{\centering\scu@titlepage@degreedate}\par
    \fi
    \ifscu@review@blind
      \parbox[t][1.03cm][t]{\textwidth}{\centering 学位论文完成时间}\par
      \parbox[t][1.03cm][t]{\textwidth}{\centering\scu@titlepage@date}\par
    \fi
  \endgroup
  \clearpage
  \restoregeometry
}
\newcommand\scu@titlepage@secret{}
\newcommand\scu@titlepage@name{%
  \ifscu@logo@whiteblack
    \includegraphics[width=10cm]{./figures/images/SCU_TITLE_BW} \\
  \fi
  \ifscu@logo@color
    \includegraphics[width=10cm]{./figures/images/SCU_TITLE} \\
  \fi
  \vskip 15pt
  \ifscu@degree@doctor
    {\sffamily\yihao[1.8]\textbf{博士研究生学位论文}}\\[15pt]{\sanhao[1.8]（学术学位）}
  \fi
  \ifscu@degree@master
    \ifscu@degree@type@academic
      {\sffamily\yihao[1.8]\textbf{硕士研究生学位论文}}\\[15pt]{\sanhao[1.8]（学术学位）}
    \else
      {\sffamily\yihao[1.8]\textbf{硕士研究生学位论文}}\\[15pt]{\sanhao[1.8]（专业学位）}
    \fi
  \fi
}
\newcommand\scu@titlepage@title{%
  \begin{tabular}{lc}
    {\heiti\zihao{3}\makebox[1.25cm][s]{\textbf{题目：}}}  & \hspace{-10pt}\scu@CJKunderline[10.5cm]{\heiti\zihao{3}\textbf{\scu@title}}
    \\[25pt]
    {\makebox[2cm][s]{}}       & \hspace{-10pt}\scu@CJKunderline[10.5cm]{\heiti\zihao{3}\textbf{\scu@title}}
  \end{tabular}
}
\newcommand\scu@titlepage@depstuid{%
  \begin{tabular}{cl}
    {\makebox[2.2cm][s]{\textbf{单位代码：}}}  & \hspace{-10pt}\textbf{\scu@departmentid} \\
    \ifscu@review@cameraready
      {\makebox[2.2cm][s]{\textbf{学 \hspace{\ccwd} 号：}}}  & \hspace{-10pt}\textbf{\scu@stuid} \\
    \fi
    \ifscu@review@blind
      {\makebox[2.2cm][s]{\textbf{送审编号：}}}  & \hspace{-10pt}\textbf{\scu@reviewid} \\
    \fi
  \end{tabular}
}
\newcommand\scu@titlepage@info{%
  \ifscu@degree@doctor
    \scu@titlepage@info@doctor
  \else
    \scu@titlepage@info@master
  \fi
}
\newcommand\scu@cover@info@tabular[4]{%
  \def\scu@cover@item##1##2##3{%
    \ifx##3\@empty\else
      \scu@pad{#2}{\scu@fixed@box{#1}{##1}}%
      \scu@pad{#3}{：}%
      \scu@CJKunderline[8cm]{\centering##2{##3}}\\
    \fi
  }%
  \begin{tabular}{l}%
    #4%
  \end{tabular}
}
\newcommand\scu@titlepage@info@doctor{%
  \songti\sanhao[1.95]%
  \scu@cover@info@tabular{2.8cm}{2.8cm}{0.4cm}{%
    \ifscu@review@cameraready
      \scu@cover@item{培养单位}{}{\scu@department}%
      \scu@cover@item{作者姓名}{}{\scu@author}%
      \scu@cover@item{指导教师}{\scu@name@title}{\scu@supervisor}%
      \scu@cover@item{副指导教师}{\scu@name@title}{\scu@associate@supervisor}%
      \scu@cover@item{联合导师}{\scu@name@title}{\scu@joint@supervisor}%
    \fi
    \scu@cover@item{学位类别}{}{\scu@department}%
    \scu@cover@item{学科专业}{}{\scu@discipline}%
  }\par
}
\newcommand\scu@titlepage@info@master{%
  \songti\sanhao[1.95]%
  \scu@cover@info@tabular{5.5em}{3.6cm}{0.4cm}{%
    \ifscu@review@cameraready
      \scu@cover@item{培养单位}{}{\scu@department}%
      \scu@cover@item{作者姓名}{}{\scu@author}%
      \scu@cover@item{指导教师}{\scu@name@title}{\scu@supervisor}%
      \scu@cover@item{副指导教师}{\scu@name@title}{\scu@associate@supervisor}%
      \scu@cover@item{联合导师}{\scu@name@title}{\scu@joint@supervisor}%
    \fi
    \scu@cover@item{学位类别}{}{\scu@degree@name}%
    \ifscu@degree@type@academic
      \scu@cover@item{学科专业}{}{\scu@discipline}%
    \else
      \scu@cover@item{领域名称}{}{\scu@discipline}%
    \fi
  }\par
}
\newcommand\scu@titlepage@date{%
  \begingroup
    \def\CJKglue{\hskip 1bp}%
    \sanhao\scu@format@date{\scu@date@zh@short}{\scu@date}\par
  \endgroup
}
\newcommand\scu@titlepage@presentdate{%
  \begingroup
    \def\CJKglue{\hskip 1bp}%
    \songti\sanhao[1.95]答辩日期：\sanhao\scu@format@date{\scu@date@zh@short}{\scu@presentdate}\par
  \endgroup
}
\newcommand\scu@titlepage@degreedate{%
  \begingroup
    \def\CJKglue{\hskip 1bp}%
    \songti\sanhao[1.95]授位日期：\sanhao\scu@format@date{\scu@date@zh@short}{\scu@degreedate}\par
  \endgroup
}
\newcommand{\scu@titlepage@en}{%
  \newgeometry{
    top     = 2.75cm,
    bottom  = 2.5cm,
    hmargin = 2.5cm,
  }%
  \scu@titlepage@en@graduate@academic
  \clearpage
  \restoregeometry
}
\newcommand\scu@titlepage@en@graduate@academic{%
  \begingroup
    \centering
    \null\vskip -0.7cm%
    \scu@titlepage@en@title
    \vfill
    \sanhao[1.725]%
    \scu@titlepage@en@degree
    \vskip 0.13cm%
    {\bfseries\sffamily in\par}
    \vskip 0.1cm%
    {\bfseries\sffamily\scu@discipline@en\par}
    \vskip 0.7cm%
    {\bfseries\sffamily by\par}
    \vskip 0.24cm%
    {\sffamily\bfseries\scu@author@en\par}%
    \vskip 0.14cm%
    \parbox[t][3.07cm][t]{\textwidth}{%
      \centering\xiaosan[2.1]\bfseries%
      \scu@titlepage@en@supervisor
    }\par
    {\bfseries Computer Science,Sichuan University, \par
    Chengdu,China\par}
    \vskip 0.65cm%
    \scu@titlepage@en@date
    \vskip 0.65cm%
  \endgroup
}
\newcommand\scu@titlepage@en@title{%
  \begingroup
    \sffamily\bfseries\fontsize{20bp}{31bp}\selectfont
    \scu@title@en\par
  \endgroup
}
\newcommand\scu@thesis@name@en{%
  \ifscu@degree@master
    A dissertation%
  \else
    Thesis%
  \fi
}
\newcommand\scu@titlepage@en@degree{%
  {\bfseries \scu@thesis@name@en{} Submitted to Sichuan \par
  University\par
  in partial fulfillment of the requirements\par
  for the degree of\par}%
  {\sffamily\bfseries\scu@degree@name@en\par}%
}
\newcommand\scu@titlepage@en@supervisor{%
  \begin{tabular}{r@{\makebox[0.71cm][l]{:}}l}%
    Supervisor & \scu@supervisor@en     \\
    \ifx\scu@associate@supervisor@en\@empty\else
      Associate Supervisor            & \scu@associate@supervisor@en \\
    \fi
    \ifx\scu@joint@supervisor@en\@empty\else
      Cooperate Supervisor            & \scu@joint@supervisor@en   \\
    \fi
  \end{tabular}%
}
\newcommand\scu@titlepage@en@date{%
  \begingroup
    \sffamily\bfseries\sanhao
    \scu@format@date{\scu@date@en@short}{\scu@date}\par
  \endgroup
}
\newcommand{\scu@authorization}{%
\ifscu@degree@bachelor
待补充
\else
本人声明所呈交的学位论文是本人在导师指导下（或联合培养导师组合作指导下）进行的研究工作及取得的研究成果。
据我所知，除了文中特别加以标注和致谢的地方外，论文中不包含其他人已经发表或撰写过的研究成果，
也不包含为获得四川大学或其他教育机构的学位或证书而使用过的材料。
与我一同工作的同志对本研究所做的任何贡献均已在论文中作了明确的说明并表示谢意。
本学位论文成果是本人在四川大学读书期间在导师指导下（或联合培养导师组合作指导下）取得的，
论文成果归四川大学所有（或联合培养单位共有），特此声明。
\fi}
\newcommand\scu@declarename{声\hspace{\ccwd}明}
\newcommand{\scu@authorizationaddon}{%
  \ifscu@degree@bachelor(涉密的学位论文在解密后应遵守此规定)\else （保密的论文在解密后应遵守此规定）\fi}
\newcommand{\scu@authorsig}{\ifscu@degree@bachelor 签\hskip1em名：\else 学位论文作者签名：\fi}
\newcommand{\scu@teachersig}{导师签名：}
\newcommand{\scu@frontdate}{%
  签字日期：}
\newcommand\copyrightpage[1][]{%
  \ifscu@review@blind\relax\else
    \ifscu@degree@bachelor\clearpage\else\cleardoublepage\fi%
    \def\scu@@tmp{#1}
    \ifx\scu@@tmp\@empty
      \ifscu@degree@bachelor\scu@authorization@mk\else%
        \begin{list}{}{%
          \topsep\z@%
          \listparindent\parindent%
          \parsep\parskip%
          \setlength{\leftmargin}{0.9mm}%
          \setlength{\rightmargin}{0.9mm}}%
        \item[]\scu@authorization@mk%
        \end{list}%
      \fi%
    \else
      \includepdf{#1}%
    \fi
  \fi
}
\newcommand{\scu@authorization@mk}{%
  \ifscu@degree@bachelor\vspace*{0.2cm}\else\vspace*{0.42cm}\fi % shit code!
  \begin{center}\erhao\heiti \scu@declarename\end{center}
  \ifscu@degree@bachelor\vskip5pt\else\vskip40pt\sihao[2.03]\fi\par
  \scu@authorization\par
  \ifscu@degree@bachelor\vskip0.7cm\else\vskip1.0cm\fi
  \ifscu@degree@bachelor
    \indent\mbox{\scu@authorsig\scu@underline\relax%
    \scu@teachersig\scu@underline\relax\scu@frontdate\scu@underline\relax}
  \else
    \begingroup
      \parindent0pt\xiaosi
      \hspace*{1.5cm}\scu@authorsig\hspace{2cm}\relax\hfill%
                     \scu@teachersig\hspace{4cm}\relax\hspace*{1cm}\\[3pt]
      \hspace*{1.5cm}\scu@frontdate\hspace{4cm}\relax\hfill%
                     \scu@frontdate\hspace{4cm}\relax\hspace*{1cm}
    \endgroup
  \fi}
\scu@define@key{
  keywords,
  keywords* = {
    name = keywords@en,
  },
}
\newcommand\scu@clist@use[2]{%
  \def\scu@@tmp{}%
  \kv@set@family@handler{scu@clist}{%
    \ifx\scu@@tmp\@empty
      \def\scu@@tmp{#2}%
    \else
      #2%
    \fi
    ##1%
  }%
  \kvsetkeys@expandafter{scu@clist}{#1}%
}
\newbox\scu@kw
\newcommand\scu@put@keywords[2]{%
  \begingroup
    \setbox\scu@kw=\hbox{#1}
    \ifscu@degree@bachelor\indent\else\noindent\hangindent\wd\scu@kw\hangafter1\fi%
    \box\scu@kw#2\par
  \endgroup}
\newenvironment{abstract}{%
  \ifscu@degree@bachelor\clearpage\else\cleardoublepage\fi
  \scu@setchinese
  \scu@chapter*{\cabstractname} % need tocline
}{%开始部分定义
  \ifscu@degree@doctor\vfill\else\vskip12bp\fi
  \scu@put@keywords{\textbf{关键词：}}{%
    \scu@clist@use{\scu@keywords}{；}%
  }%
  \scu@setdefaultlanguage
}%结束部分定义
\newenvironment{abstract*}{%
  \scu@setenglish
  \scu@chapter*{\eabstractname} % need tocline
}{%
  \ifscu@degree@doctor\vfill\else\vskip12bp\fi
  \scu@put@keywords{%
    \textbf{\ifscu@degree@bachelor Keywords:\else Key words:\fi\enskip}%
  }{%
    \scu@clist@use{\scu@keywords@en}{; }%
  }%
  \scu@setdefaultlanguage
}
\newenvironment{denotation}[1][2.5cm]{%
  \scu@chapter*{\scu@denotation@name} % need tocline
  \vskip-30bp\xiaosi[1.6]\begin{scu@denotation}[labelwidth=#1]
}{%
  \end{scu@denotation}
}
\newlist{scu@denotation}{description}{1}
\setlist[scu@denotation]{%
  nosep,
  font=\normalfont,
  align=left,
  leftmargin=!, % sum of the following 3 lengths
  labelindent=0pt,
  labelwidth=2.5cm,
  labelsep*=0.5cm,
  itemindent=0pt,
}
\newcommand{\scu@declaretext}{本人郑重声明：所呈交的学位论文，是本人在导师指导下
  ，独立进行研究工作所取得的成果。尽我所知，除文中已经注明引用的内容外，本学位论
  文的研究成果不包含任何他人享有著作权的内容。对本论文所涉及的研究工作做出贡献的
  其他个人和集体，均已在文中以明确方式标明。}
\newcommand{\scu@signature}{签\hspace{1em}名：}
\newcommand{\scu@backdate}{日\hspace{1em}期：}
\newenvironment{acknowledgements}{%
  \scu@chapter*{\scu@ack@name}%
}{}
\newcommand\statement[1][]{%
  \def\scu@@tmp{#1}%
  \ifx\scu@@tmp\@empty
    \scu@chapter*{\scu@declarename}%
    \par{\xiaosi\parindent2em\scu@declaretext}\vskip2cm%
    {\xiaosi\hfill\scu@signature\scu@underline[2.5cm]\relax
      \scu@backdate\scu@underline[2.5cm]\relax}%
  \else
    \includepdf[pagecommand={\thispagestyle{scu@empty}%
      \addcontentsline{toc}{chapter}{\scu@declarename}%
    }]{#1}%
  \fi
}
\let\acknowledgement\acknowledgements
\let\endacknowledgement\endacknowledgements
\def\scu@starttoc#1{% #1: float type, prepend type name in \listof*** entry.
  \let\oldnumberline\numberline
  \def\numberline##1{\oldnumberline{\csname #1name\endcsname\hskip.4em ##1}}
  \@starttoc{\csname ext@#1\endcsname}
  \let\numberline\oldnumberline}
\def\scu@listof#1{% #1: float type
  \@ifstar
    {\scu@chapter*[]{\csname list#1name\endcsname}\scu@starttoc{#1}}
    {\scu@chapter*{\csname list#1name\endcsname}\scu@starttoc{#1}}}
\renewcommand\listoffigures{\scu@listof{figure}}
\renewcommand*\l@figure{\ifscu@degree@bachelor\relax\else\addvspace{6bp}\fi\@dottedtocline{1}{0em}{4em}}
\renewcommand\listoftables{\scu@listof{table}}
\let\l@table\l@figure
\def\ext@equation{loe}
\def\equcaption#1{%
  \addcontentsline{\ext@equation}{equation}%
                  {\protect\numberline{#1}}}
\newcommand\listofequations{\scu@listof{equation}}
\let\l@equation\l@figure
\scu@define@key{
  toc-depth = {
    name = toc@depth,
    code = {\addtocontents{toc}{\protect\setcounter{tocdepth}{\scu@toc@depth}}},
  },
}
\g@addto@macro\appendix{\addtocontents{toc}{\protect\setcounter{tocdepth}{0}}}
\newenvironment{resume}[1][\scu@resume@title]{%
  \scu@chapter*{#1}}{}
\newcommand{\resumeitem}[1]{%
  \vspace{24bp}{\sihao\heiti\centerline{#1}}\par\vspace{6bp}}
\newcommand{\researchitem}[1]{%
  \vspace{32bp}{\sihao\heiti\centerline{#1}}\par\vspace{14bp}}
\newlist{publications}{enumerate}{1}
\setlist[publications]{label=[\arabic*],align=left,nosep,itemsep=8bp,
  leftmargin=10mm,labelsep=!,before=\xiaosi[1.26],resume}
\newlist{achievements}{enumerate}{1}
\setlist[achievements]{label=[\arabic*],align=left,nosep,itemsep=8bp,
  leftmargin=10mm,labelsep=!,before=\xiaosi[1.26]}
\def\publicationskip{\bigskip\bigskip}
\newcommand\scu@atendpackage{\csname ctex_at_end_package:nn\endcsname}
\scu@atendpackage{hyperref}{
  \hypersetup{
    linktoc            = all,
    bookmarksnumbered  = true,
    bookmarksopen      = true,
    bookmarksopenlevel = 1,
    unicode            = true,
    psdextra           = true,
    breaklinks         = true,
    plainpages         = false,
    hidelinks,
  }%
  \newcounter{scu@bookmark}
  \renewcommand\scu@pdfbookmark[2]{%
    \phantomsection
    \stepcounter{scu@bookmark}%
    \pdfbookmark[#1]{#2}{scuchapter.\thescu@bookmark}%
  }
  \pdfstringdefDisableCommands{
    \let\\\@empty
    \let\hspace\@gobble
  }%
  \@ifpackagelater{hyperref}{2019/04/27}{}{%
    \g@addto@macro\psdmapshortnames{\let\mu\textmu}
  }%
  \AtBeginDocument{%
    \ifscu@language@chinese
      \hypersetup{
        pdftitle    = \scu@title,
        pdfauthor   = \scu@author,
        pdfsubject  = \scu@degree@name,
        pdfkeywords = \scu@keywords,
      }%
    \else
      \hypersetup{
        pdftitle    = \scu@title@en,
        pdfauthor   = \scu@author@en,
        pdfsubject  = \scu@degree@name@en,
        pdfkeywords = \scu@keywords@en,
      }%
    \fi
    \hypersetup{
      pdfcreator={\scuthesis-v\version}}
  }%
}
\scu@atendpackage{nomencl}{
  \let\nomname\scu@denotation@name
  \def\thenomenclature{\begin{denotation}[\nom@tempdim]}
  \def\endthenomenclature{\end{denotation}}
}
\AtBeginDocument{%
  \let\scu@LT@array\LT@array
  \def\LT@array{\dawu[1.5]\scu@LT@array} % set default font size
}
\scu@atendpackage{siunitx}{%
  \sisetup{
    group-minimum-digits = 4,
    separate-uncertainty = true,
    inter-unit-product   = \ensuremath{{}\cdot{}},
  }
  \newcommand\scu@set@siunitx@language{%
    \ifscu@language@chinese
      \sisetup{
        list-final-separator = { 和 },
        list-pair-separator  = { 和 },
        range-phrase         = {～},
      }%
    \else
      \ifscu@language@english
        \sisetup{
          list-final-separator = { and },
          list-pair-separator  = { and },
          range-phrase         = { to },
        }%
      \fi
    \fi
  }
  \scu@set@siunitx@language
  \scu@addto{language}{\scu@set@siunitx@language}
}
\scu@atendpackage{ntheorem}{%
  \theorembodyfont{\normalfont}%
  \theoremheaderfont{\normalfont\sffamily}%
  \theoremsymbol{\ensuremath{\square}}%
  \newtheorem*{proof}{\scu@proof@name}%
  \theoremstyle{plain}%
  \theoremsymbol{}%
  \theoremseparator{\scu@theorem@separator}%
  \newtheorem{assumption}{\scu@assumption@name}[chapter]%
  \newtheorem{definition}{\scu@definition@name}[chapter]%
  \newtheorem{proposition}{\scu@proposition@name}[chapter]%
  \newtheorem{lemma}{\scu@lemma@name}[chapter]%
  \newtheorem{theorem}{\scu@theorem@name}[chapter]%
  \newtheorem{axiom}{\scu@axiom@name}[chapter]%
  \newtheorem{corollary}{\scu@corollary@name}[chapter]%
  \newtheorem{exercise}{\scu@exercise@name}[chapter]%
  \newtheorem{example}{\scu@example@name}[chapter]%
  \newtheorem{remark}{\scu@remark@name}[chapter]%
  \newtheorem{problem}{\scu@problem@name}[chapter]%
  \newtheorem{conjecture}{\scu@conjecture@name}[chapter]%
}
\AtEndOfClass{\sloppy}
\endinput
%%
%% End of file `scuthesis.cls'.
