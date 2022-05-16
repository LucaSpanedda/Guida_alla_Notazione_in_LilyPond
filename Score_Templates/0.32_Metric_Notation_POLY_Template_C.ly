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
\fontsize #8 \line {Metric Notation Template C (POLY)}
\vspace #2
\fontsize #4 \line {Luca Spanedda}
\vspace #2
\fontsize #2 \line {\date}
\vspace #2
  }
}


% PARAMETRI
glissandoSkipOn = 
{
  \override NoteColumn.glissando-skip = ##t
  \hide NoteHead
  \override NoteHead.no-ledgers = ##t
}
iniziocorona = \set Score.repeatCommands = #'((volta #f) (volta "") end-repeat)
finecorona = \set Score.repeatCommands = #'((volta #f))
stemOff = \hide Staff.Stem 
stemOn  = \undo \stemOff
rigo = \override Staff.StaffSymbol.line-count = #1
pentagramma = \revert Staff.StaffSymbol.line-count
iniziocorona = \set Score.repeatCommands = #'((volta #f) (volta "") end-repeat)
finecorona = \set Score.repeatCommands = #'((volta #f))
notainvisibile = \override Voice.NoteHead.color = #white
notavisibile = \override Voice.NoteHead.color = #black
gamboinvisibile = \stemOff 
gambovisibile = \stemOn


% PAGINA A CAPO
\pageBreak


\score {\new StaffGroup<<
  
% INSTRUMENT 1 ---------------------------------------------------------------------

\new Staff\with{ instrumentName = "Violin"\remove "Time_signature_engraver"}
{    
    \cadenzaOn 
    \clef "violin"
    \override Glissando.breakable = ##t
    \override Glissando.after-line-breaking = ##t
    
  r2
  \acciaccatura dis''8 
  \bar "'"
  \gamboinvisibile
  g''4(^\markup{▲}\p
  g''4)(^\markup{▲}\>
  \bar "'" \break
  g''4(^\markup{\fontsize #4 ⇞}\<  
  g''4)(^\markup{\fontsize #4 ⇞}\!\sfz\>
  g''4)^\markup{\fontsize #4 ⇞}\!
  \notavisibile
  \gambovisibile
}

% ------------------------------------------------------------------------------

% INSTRUMENT 2 ---------------------------------------------------------------------

\new Staff\with{ instrumentName = "Violin"\remove "Time_signature_engraver"}
{    
    \cadenzaOn
    \clef "violin"
    \override Glissando.breakable = ##t
    \override Glissando.after-line-breaking = ##t
    
  r2
  \acciaccatura dis''8 
  \bar "'"
  e''4\glissando\mf
  f''4\glissando
  e''2(\>
  e''2)\!
}

% ------------------------------------------------------------------------------

% INSTRUMENT 3 ----------------------------------------------------------------------

\new Staff\with{ instrumentName = "Cello"\remove "Time_signature_engraver"}
{    
    \cadenzaOn
    \clef "bass"
    \override Glissando.breakable = ##t
    \override Glissando.after-line-breaking = ##t
    
  a,2(\mf 
  \bar "'"
  a,2)(
  \bar "'" \break
  a,2)  
}

% ------------------------------------------------------------------------------

% INSTRUMENT 4 ----------------------------------------------------------------------

\new Staff\with{ instrumentName = "Cello"\remove "Time_signature_engraver"}
{    
    \cadenzaOn
    \clef "bass"
    \override Glissando.breakable = ##t
    \override Glissando.after-line-breaking = ##t
    
  r2
  \bar "'"
  \gamboinvisibile
  e4(^\markup{\fontsize #4 ⇞}\<  
  e4)(^\markup{\fontsize #4 ⇞}\!\sfz\> 
  \bar "'" \break
  b4(^\markup{\fontsize #4 ⇞}\<  
  b4)(^\markup{\fontsize #4 ⇞}\!\sfz\>
  b4)^\markup{\fontsize #4 ⇞}\!
  \gambovisibile
  \bar "'" \break
}


% ------------------------------------------------------------------------------

>> \layout { } \midi { } }


\header 
{
tagline = 
"| website: https://lucaspanedda.github.io/ | 
 | e-mail: lucaspanedda1995@gmail.com |" 
}