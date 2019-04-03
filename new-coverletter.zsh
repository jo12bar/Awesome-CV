#!/usr/bin/env zsh
#
# Generates a new coverletter.

FILE_NAME=$1
RECRUITMENT_TEAM_NAME=$2
EMPLOYER_ADDRESS=$3

cat <<EOF > $FILE_NAME.nogit.tex
%!TEX TS-program = xelatex
%!TEX encoding = UTF-8 Unicode
% Awesome CV LaTeX Template for Cover Letter
%
% This template has been downloaded from:
% https://github.com/posquit0/Awesome-CV
%
% Authors:
% Claud D. Park <posquit0.bj@gmail.com>
% Lars Richter <mail@ayeks.de>
%
% Template license:
% CC BY-SA 4.0 (https://creativecommons.org/licenses/by-sa/4.0/)
%


%-------------------------------------------------------------------------------
% CONFIGURATIONS
%-------------------------------------------------------------------------------
% A4 paper size by default, use 'letterpaper' for US letter
\documentclass[11pt, letterpaper]{awesome-cv}

% Configure page margins with geometry
\geometry{left=1.4cm, top=.8cm, right=1.4cm, bottom=1.8cm, footskip=.5cm}

% Specify the location of the included fonts
\fontdir[./fonts/]

% Color for highlights
% Awesome Colors: awesome-emerald, awesome-skyblue, awesome-red, awesome-pink, awesome-orange
%                 awesome-nephritis, awesome-concrete, awesome-darknight
\colorlet{awesome}{awesome-emerald}
% Uncomment if you would like to specify your own color
% \definecolor{awesome}{HTML}{CA63A8}

% Colors for text
% Uncomment if you would like to specify your own color
% \definecolor{darktext}{HTML}{414141}
% \definecolor{text}{HTML}{333333}
% \definecolor{graytext}{HTML}{5D5D5D}
% \definecolor{lighttext}{HTML}{999999}

% Set false if you don't want to highlight section with awesome color
\setbool{acvSectionColorHighlight}{true}

% If you would like to change the social information separator from a pipe (|) to something else
\renewcommand{\acvHeaderSocialSep}{\quad\textbar\quad}


%-------------------------------------------------------------------------------
%	PERSONAL INFORMATION
%	Comment any of the lines below if they are not required
%-------------------------------------------------------------------------------
% Available options: circle|rectangle,edge/noedge,left/right
\photo[rectangle,noedge,left]{./image1-round-corners.png}
\name{Johann}{Barnard}
\position{Engineering Undergraduate{\enskip\cdotp\enskip}University of Alberta}
\address{11911 Husband Road, Coldstream, BC, V1B 1M9}

\mobile{(250) 309-0352}
\email{johann.b@telus.net}
% \homepage{www.posquit0.com}
\github{jo12bar}
% \linkedin{posquit0}
% \gitlab{gitlab-id}
% \stackoverflow{SO-id}{SO-name}
% \twitter{@twit}
% \skype{skype-id}
% \reddit{reddit-id}
% \medium{madium-id}
% \googlescholar{googlescholar-id}{name-to-display}
%% \firstname and \lastname will be used
% \googlescholar{googlescholar-id}{}
\extrainfo{Currently being placed into a discipline.}

% \quote{``Be the change that you want to see in the world."}


%-------------------------------------------------------------------------------
%	LETTER INFORMATION
%	All of the below lines must be filled out
%-------------------------------------------------------------------------------
% The company being applied to
\recipient
  {$RECRUITMENT_TEAM_NAME}
  {$EMPLOYER_ADDRESS}
% The date on the letter, default is the date of compilation
\letterdate{\today}
% The title of the letter
\lettertitle{CHANGE ME}
% How the letter is opened
\letteropening{Dear Mr./Ms./Dr. CHANGE ME,}
% How the letter is closed
\letterclosing{Sincerely,}
% Any enclosures with the letter
\letterenclosure[Attached]{Résumé}


%-------------------------------------------------------------------------------
\begin{document}

% Print the header with above personal informations
% Give optional argument to change alignment(C: center, L: left, R: right)
\makecvheader[R]

% Print the footer with 3 arguments(<left>, <center>, <right>)
% Leave any of these blank if they are not needed
\makecvfooter
  {\today}
  {Johann M. Barnard~~~·~~~Cover Letter}
  {}

% Print the title with above letter informations
\makelettertitle

%-------------------------------------------------------------------------------
%	LETTER CONTENT
%-------------------------------------------------------------------------------
\begin{cvletter}

\lettersection{About Me}
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ullamcorper neque sit amet lectus facilisis sed luctus nisl iaculis. Vivamus at neque arcu, sed tempor quam. Curabitur pharetra tincidunt tincidunt. Morbi volutpat feugiat mauris, quis tempor neque vehicula volutpat. Duis tristique justo vel massa fermentum accumsan. Mauris ante elit, feugiat vestibulum tempor eget, eleifend ac ipsum. Donec scelerisque lobortis ipsum eu vestibulum. Pellentesque vel massa at felis accumsan rhoncus.

\lettersection{Why Google?}
Suspendisse commodo, massa eu congue tincidunt, elit mauris pellentesque orci, cursus tempor odio nisl euismod augue. Aliquam adipiscing nibh ut odio sodales et pulvinar tortor laoreet. Mauris a accumsan ligula. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Suspendisse vulputate sem vehicula ipsum varius nec tempus dui dapibus. Phasellus et est urna, ut auctor erat. Sed tincidunt odio id odio aliquam mattis. Donec sapien nulla, feugiat eget adipiscing sit amet, lacinia ut dolor. Phasellus tincidunt, leo a fringilla consectetur, felis diam aliquam urna, vitae aliquet lectus orci nec velit. Vivamus dapibus varius blandit.

\lettersection{Why Me?}
Duis sit amet magna ante, at sodales diam. Aenean consectetur porta risus et sagittis. Ut interdum, enim varius pellentesque tincidunt, magna libero sodales tortor, ut fermentum nunc metus a ante. Vivamus odio leo, tincidunt eu luctus ut, sollicitudin sit amet metus. Nunc sed orci lectus. Ut sodales magna sed velit volutpat sit amet pulvinar diam venenatis.

\end{cvletter}


%-------------------------------------------------------------------------------
% Print the signature and enclosures with above letter informations
\makeletterclosing

\end{document}
EOF
