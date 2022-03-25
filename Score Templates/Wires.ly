% PARAMETRI GLOBALI
#(set-default-paper-size "a3" 'landscape)
% #(set-global-staff-size 20)


% TITOLO
\markup {
  \column {
\fontsize #12 \line {Wires}
\fontsize #4 \line {for strings}
\vspace #1
\fontsize #4 \line {Luca Spanedda}
\fontsize #2 \line {2022}
\vspace #2

\line\italic { inspired by: James Tenney - Cellogram (1971) }
\line\italic { from the postal pieces}
  }
}


% PAGINA A CAPO
\pageBreak


% TESTO
\markup {
  \column {
\fontsize #8 \line {Notes}
\vspace #2
\fontsize #2 \line {Wires is a composition for strings born from the desire to explore the dimension of the sound continuum.}
\fontsize #2 \line {Thanks to chance is renewed in each performance, remaining coherent formally although always different internally.}
\fontsize #2 \line {The continuum lowers the perception of the psychological time:}
\fontsize #2 \line {things stop living in a temporality marked by past, present and future, by sound events defined in the order of microseconds, }
\fontsize #2 \line {and instead became projected towards the dimension of the macro.}
\fontsize #2 \line {In this condition, the perception of the past, present and future begins to merge,}
\fontsize #2 \line {creating new listening situations.}
  }
}


% PAGINA A CAPO
\pageBreak


glissandoSkipOn = {
  \override NoteColumn.glissando-skip = ##t
  \hide NoteHead
  \override NoteHead.no-ledgers = ##t
}


stemOff = \hide Staff.Stem 
stemOn  = \undo \stemOff
rigo = \override Staff.StaffSymbol.line-count = #1
pentagramma = \revert Staff.StaffSymbol.line-count
iniziocorona = \set Score.repeatCommands = #'((volta #f) (volta "") end-repeat)
finecorona = \set Score.repeatCommands = #'((volta #f))
notainvisibile = \override Voice.NoteHead.color = #white
notavisibile = \override Voice.NoteHead.color = #black
stangheoff = \stemOff 
stangheon = \stemOn


% SEMIOGRAPHY
\markup {
  \column {
\fontsize #8 \line {Instructions}
\vspace #2
  }
}


\score  
{  
% no time signature and instrument name
\new StaffGroup 
<<
\new Staff\with { instrumentName = "Strings A" \remove "Time_signature_engraver"} 
{
    \cadenzaOn
    
    % STANGHE NOTE OFF
    \stemOff 
    
    % PENTAGRAMMA
    \stopStaff \pentagramma \startStaff
    \override Staff.Clef.color = #black
    \override Staff.Clef.layer = #1
    
    
  \notavisibile 
  
  \override Glissando.breakable = ##t
  \override Glissando.after-line-breaking = ##t
  
  <c' g' c''>4\glissando
^\markup{
   \column 
   {
  \fontsize #4 \line \italic { At the beginning of the piece any performer can choose to play }
  \fontsize #4 \line \italic { and follow one (or more when it's possible) of the several melodic lines proposed, }
  \fontsize #4 \line \italic { choosing bethween one of the two different extensions: Stings A, Strings B }
   }
}
<dis'' gis' dis'>4
}
    
    
% no time signature and instrument name
\new Staff \with { instrumentName = "Strings B" \remove "Time_signature_engraver"} 
{
    \cadenzaOn
    \clef "bass"
    % STANGHE NOTE OFF
    \stemOff 
    
    % PENTAGRAMMA
    \stopStaff \pentagramma \startStaff
    \override Staff.Clef.color = #black
    \override Staff.Clef.layer = #1
    
    
  \notavisibile 
  
  \override Glissando.breakable = ##t
  \override Glissando.after-line-breaking = ##t
  
  <c g c'>4\glissando
_\markup {
  \column {
\fontsize #4 \line \italic {Organics with different numbers of instruments are encorauged.}
\fontsize #4 \line \italic {Polyphony when it's possible are encorauged.}
  }
}
<dis' gis dis>4 
  % forza un break di rigo
   \bar "|."
}
>>
}


% PAGINA A CAPO
\pageBreak


% SCORE
\score  
{  
% no time signature and instrument name
\new StaffGroup 
<<
\new Staff\with { instrumentName = "Strings A" \remove "Time_signature_engraver"} 
% tempo
\tempo \markup {
  \override #'(box-padding . 0.8)
  \box
  \line { \fontsize #4 {GLOBAL TIME ≈ 9'30''} }
}
{
    \cadenzaOn
    
    % STANGHE NOTE OFF
    \stemOff 
    
    % PENTAGRAMMA
    \stopStaff \pentagramma \startStaff
    \override Staff.Clef.color = #black
    \override Staff.Clef.layer = #1
    
    
  \notavisibile 
  
  \override Glissando.breakable = ##t
  \override Glissando.after-line-breaking = ##t
  
  <c' g' c''>4\glissando \shortfermata
  ^\markup{\large 0''}
  <dis'' gis' dis'>4\glissando \shortfermata
  ^\markup{\large 30''≈ }
  <e'' e' g'>4\glissando \shortfermata
  ^\markup{\large 1'≈ }
  <gis' dis' dis''>4\glissando \shortfermata
  ^\markup{\large 1'30''≈ }
  % forza un break di rigo
   \bar "" \break
   
  <c' g' e''>4\glissando \shortfermata
  ^\markup{\large 2'≈ }
  <cis' g'' g'>4\glissando \shortfermata
  ^\markup{\large 2'30''≈ }
  <gis'' cis' gis'>4\glissando \shortfermata 
  ^\markup{\large 3'≈ }
  <gis' c' gis''>4\glissando \shortfermata
  ^\markup{\large 3'30''≈ }
  % forza un break di rigo
   \bar "" \break
   % 
  <c' g' g''>4\glissando \shortfermata
  ^\markup{\large 4'≈ }
  <e' c' e''>4\glissando \shortfermata
  ^\markup{\large 4'30''≈ }
  <c' e'' a'>4\glissando \shortfermata
  ^\markup{\large 5'≈ }
  <e' a' c''>4\glissando \shortfermata
  ^\markup{\large 5'30''≈ }
  % forza un break di rigo
   \bar "" \break
   
  <c'' a' f'>4\glissando \shortfermata
  ^\markup{\large 6'≈ }
  <f' e'' a'>4\glissando \shortfermata
  ^\markup{\large 6'30''≈ }
  <a' e'' e'>4\glissando \shortfermata
  ^\markup{\large 7'≈ }
  <c'' f' f''>4\glissando\shortfermata
  ^\markup{\large 7'30''≈ }
  % forza un break di rigo
   \bar "" \break
   
  <g' g'' dis''>4\glissando \shortfermata
  ^\markup{\large 8'≈ }
  <g' c'' e''>4\glissando \shortfermata
  ^\markup{\large 8'30''≈ }
  <e' g' c''>4\glissando \shortfermata
  ^\markup{\large 9'≈ }
  <c'' g' c'>4\glissando \shortfermata
  ^\markup{\large 9'30''≈ }
  % forza un break di rigo
   \bar "|."
}
    
    
% no time signature and instrument name
\new Staff \with { instrumentName = "Strings B" \remove "Time_signature_engraver"} 
{
    \cadenzaOn
    \clef "bass"
    % STANGHE NOTE OFF
    \stemOff 
    
    % PENTAGRAMMA
    \stopStaff \pentagramma \startStaff
    \override Staff.Clef.color = #black
    \override Staff.Clef.layer = #1
    
    
  \notavisibile 
  
  \override Glissando.breakable = ##t
  \override Glissando.after-line-breaking = ##t
  
  <c g c'>4\glissando \shortfermata
  _\markup{\italic \fontsize #0.4 {Play all with the same dynamic} }
  <dis' gis dis>4\glissando \shortfermata
  <e' e g>4\glissando \shortfermata
  <gis dis dis'>4\glissando \shortfermata
  % forza un break di rigo
   \bar "" \break
   
  <c g e'>4\glissando \shortfermata
  <cis g' g>4\glissando \shortfermata
  <gis' cis gis>4\glissando \shortfermata 
  <gis c gis'>4\glissando \shortfermata
  % forza un break di rigo
   \bar "" \break
   % 
  <c g g'>4\glissando \shortfermata
  <e c e'>4\glissando \shortfermata
  <c e' a>4\glissando \shortfermata
  <e a c'>4\glissando \shortfermata
  % forza un break di rigo
   \bar "" \break
   
  <c' a f>4\glissando \shortfermata
  <f e' a>4\glissando \shortfermata
  <a e' e>4\glissando \shortfermata
  <c' f f'>4\glissando\shortfermata
  % forza un break di rigo
   \bar "" \break
   
  <g g' dis'>4\glissando \shortfermata
  <g c' e'>4\glissando \shortfermata
  <e g c'>4\glissando \shortfermata
  <c' g c>4\glissando \shortfermata
  % forza un break di rigo
   \bar "|."
}
>>
}


\header {
  tagline = ""
}