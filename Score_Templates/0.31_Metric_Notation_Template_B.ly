% VERION (for future compatibility)
\version "2.22.2"

% PARAMETRI GLOBALI
#(set-default-paper-size "a3" 'landscape)
date = #(strftime "%d-%m-%Y" (localtime (current-time))) 
% #(set-global-staff-size 20)

\paper {
  page-breaking = #ly:page-turn-breaking
}


% LEGENDA
\markup {
  \column {
\fontsize #8 \line {Metric Notation Template B}
\vspace #2
\fontsize #4 \line {Luca Spanedda}
\vspace #2
\fontsize #2 \line {\date}
\vspace #2
  }
}


% NEW PAGE
\pageBreak


% VARIABILI
stemOff = \hide Staff.Stem 
stemOn  = \undo \stemOff
rigo = \override Staff.StaffSymbol.line-count = #1
pentagramma = \revert Staff.StaffSymbol.line-count
iniziocorona = \set Score.repeatCommands = #'((volta #f) (volta "") end-repeat)
finecorona = \set Score.repeatCommands = #'((volta #f))
notainvisibile = \override Voice.NoteHead.color = #white
notavisibile = \override Voice.NoteHead.color = #black

\score
{
  
 % no time signature
\new Staff \with { instrumentName = "Instrument" \remove "Time_signature_engraver" } 

    {
    \cadenzaOn
    
    % UN SOLO RIGO
    \stopStaff \rigo \startStaff
    \override Staff.Clef.color = #white
    \override Staff.Clef.layer = #-1
    
    % stanghe note OFF
    \stemOff 
    
    \notainvisibile
    \bar "'"
    c''4
    
    \notavisibile
    \iniziocorona \bar "'" 
    \mark \markup {\circle \large { 0'00'' } }
    b'4
    \finecorona
    
    \notainvisibile
    \bar "'" 
    \mark \markup {\circle \large { 0'04'' } }
    c''
    
    \break
    
    % PENTAGRAMMA
    \stopStaff \pentagramma \startStaff
    \override Staff.Clef.color = #black
    \override Staff.Clef.layer = #1
    
    \notainvisibile
    \bar "'"
    \mark \markup {\circle \large { 0'35'' } }
    d'4
    
    \notavisibile
    \iniziocorona \bar "'" %\mark "4''≅"
    \mark \markup {\circle \large { 0'36'' } }
    aes4
    (\< a4\p %!
    \notainvisibile
    d'4)
    _\markup {\circle \small { 0'42'' } }
    \finecorona
    
    \notavisibile
    \iniziocorona \bar "'" 
    \mark \markup {\circle \large { 0'44'' } }
    aes4\< a4\p %!
    \notainvisibile
    d'4
    _\markup {\circle \small { 0'50'' } }
    \finecorona
    % FINE
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