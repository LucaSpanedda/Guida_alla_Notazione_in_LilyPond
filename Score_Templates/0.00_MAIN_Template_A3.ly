% VERION (for future compatibility)
\version "2.22.2"

% GLOBAL PARAMETERS
#(set-default-paper-size "a3" 'landscape)
date = #(strftime "%d-%m-%Y" (localtime (current-time))) 
% #(set-global-staff-size 20)


% TITLE
\markup {
  \column {
\fontsize #12 \line {Title}
\fontsize #4 \line {Instruments}
\vspace #1
\fontsize #4 \line {Luca Spanedda}
\fontsize #2 \line {\date}
\vspace #2

\line\italic {write some notes here}
  }
}


% NEW PAGE
\pageBreak


% LEGENDA
\markup {
  \column {
\fontsize #8 \line {Instructions for the piece}
\vspace #2
\fontsize #2 \line {write some notes here}
\vspace #8
  }
}


% NEW PAGE
\pageBreak


% SCORE
\score  
{  
% NO time signature and ADD instrument name
\new Staff \with { instrumentName = "Instrument name" \remove "Time_signature_engraver"} 
{
   \cadenzaOn
   \clef "bass"
  <e' e g>4
  <gis dis dis'>4
  % force a line break
   \bar "" \break
  <c' g c>4
   \bar "|."
  }
}


% END OF THE SCORE
\header 
{
tagline = 
"| website: https://lucaspanedda.github.io/ | 
 | e-mail: lucaspanedda1995@gmail.com |" 
}