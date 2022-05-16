% VERION (for future compatibility)
\version "2.22.2"

% GLOBAL PARAMETERS
#(set-default-paper-size "a3" 'landscape)
date = #(strftime "%d-%m-%Y" (localtime (current-time))) 


% TO DO:
% Entra strumento a fiato sotto sfz di female voice
% Morphing delle female voice a gutturale

% TITLE
\markup {
  \column {
\fontsize #12 \line {Psiche}
\fontsize #4 \line {for Mixed Choir and Wind Instrument}
\vspace #1
\fontsize #4 \line {Luca Spanedda}
\fontsize #2 \line {\date}
\vspace #2
  }
}


% NEW PAGE
\pageBreak


% SEMIOGRAPHY VARIABLES
% note^variables-name or Note_variables-name
respirarect = \markup \center-align {\fontsize #2 {⊗} }
respirarest = \markup \center-align {\fontsize #2 {□} }
aspirarect = \markup \center-align {\fontsize #2 {◪} }
aspirarest = \markup \center-align {\fontsize #2 {⧄} }
espirarect = \markup \center-align {\rotate #135 \fontsize #2 {◧} }
espirarest = \markup \center-align {\rotate #45 \fontsize #2 {⊟} }
espirarest = \markup \center-align {\rotate #45 \fontsize #2 {⊟} }
boccachiusa = \markup \center-align {\fontsize #8 {⌖} }
boccasemiaperta = \markup \center-align {\fontsize #2 {∅} } 
boccaaperta = \markup \center-align {\fontsize #2 {〇} } 
gutturale = \markup \center-align {\fontsize #4 {◉} } 
growl = \markup \center-align {GRWL}
scream = \markup \center-align {SCRM}
letteraa = \markup \center-align {\fontsize #6 \circle {A}} 
ha = \markup \center-align {\fontsize #1 \circle {HA}}
tosse = \markup \center-align {\fontsize #2 {⋫} }
pianto = \markup \center-align {\fontsize #2 {⍋} }
risata = \markup \center-align {\fontsize #2 {ⓗ} }
morph = \markup \center-align {morphing}


% SEMIOGRAPHY
\markup {
\center-column
{
\fontsize #4 \line {Semiography}
\vspace #2
\line {\aspirarect - inspirare con timbro}
\vspace #2
\line {\aspirarest - inspirare senza timbro}
\vspace #2
\line {\espirarect - espirare con timbro}
\vspace #2
\line {\espirarest - espirare senza timbro}
\vspace #2
\line {\boccachiusa - con bocca chiusa}
\vspace #2
\line {\boccasemiaperta - con bocca semiaperta}
\vspace #2
\line {\boccaaperta - con bocca aperta}
\vspace #2
\line {\gutturale - suono in gola gutturale}
\vspace #2
\line {\tosse - colpi di tosse}
\vspace #2
\line {\pianto - singhiozzi del pianto}
\vspace #2
\line {\risata - risata}
\vspace #2
\line {\growl - growl}
\vspace #2
\line {\scream - scream}
\vspace #2
\line {\respirarect - respirare con timbro}
\vspace #2
\line {\respirarest - respirare senza timbro}
\vspace #2
  }
}


% NEW PAGE
\pageBreak



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




    \score 

{\new StaffGroup
 <<

% TIMER ---------------------------------------------------------------------

\new Staff 
\with { instrumentName = "-" \remove "Time_signature_engraver" } 
    {
    \cadenzaOn
    % UN SOLO RIGO
    \stopStaff \rigo \startStaff
    \override Staff.Clef.color = #white
    \override Staff.Clef.layer = #-1
    
    % stanghe note OFF
    \stemOff 
    
    \notainvisibile
    \bar "|" c''4
    
    \bar "|" \mark" 10'' " c''4
    
    \bar "|" \mark" 20'' " c''4

    \bar "|" \mark" 30'' " c''4
    
    \bar "|" \mark" 40'' " c''4

    \pageBreak
    \bar "|" \mark" 50'' " c''4
    }

% ------------------------------------------------------------------------------


% SOLO VOICE ---------------------------------------------------------------------

\new Staff 
\with { instrumentName = "Solo Voice" \remove "Time_signature_engraver" } 
    {
    \cadenzaOn
    % UN SOLO RIGO
    \stopStaff \rigo \startStaff
    \override Staff.Clef.color = #white
    \override Staff.Clef.layer = #-1
    
    % stanghe note OFF
    \stemOff 

    \bar "'"
    b'4(
    _\markup{\italic {synchronous breathing}}
    ^\respirarect^\boccachiusa\<
    
    \bar "'" 
    b'4)(^\respirarect\mf\>
    \finecorona
    
    \bar "'" 
    b'4)(^\respirarect\p\>

    \bar "|" 
    b'4)\!
    
    \bar "|" 
    \notainvisibile
    c''4

    \pageBreak \bar "|" 
    }

% ------------------------------------------------------------------------------


% MALE VOICES ---------------------------------------------------------------------

\new Staff 
\with { instrumentName = "Male Voices" \remove "Time_signature_engraver" } 
    {
    \cadenzaOn
    % UN SOLO RIGO
    \stopStaff \rigo \startStaff
    \override Staff.Clef.color = #white
    \override Staff.Clef.layer = #-1
    
    % stanghe note OFF
    \stemOff 

    \bar "|" 
    \notainvisibile
    c''4
    
    \bar "|" 
    \notainvisibile
    c''4
    
    \bar "|" 
    \notavisibile
    b'4(
    _\markup{\italic {asynchronous breathing}}
    ^\respirarect^\boccachiusa\<
    \finecorona

    \bar "|" 
    b'4)(^\respirarect\mf\<
    \finecorona
    
    \bar "|" 
    b'4)^\respirarect\f\!
    \finecorona
    
    \pageBreak \bar "" 
    }

% ------------------------------------------------------------------------------


% FEMALE VOICES ---------------------------------------------------------------------

\new Staff 
\with { instrumentName = "Female Voices" \remove "Time_signature_engraver" } 
    {
    \cadenzaOn
    % UN SOLO RIGO
    \stopStaff \rigo \startStaff
    \override Staff.Clef.color = #white
    \override Staff.Clef.layer = #-1
    
    % stanghe note OFF
    \stemOff 

    \bar "|" 
    \notainvisibile
    c''4
    
    \bar "|" 
    \notavisibile
    b'4(
    _\markup{\italic {asynchronous breathing}}
    ^\respirarect^\boccachiusa\<
    \finecorona

    \bar "|" 
    b'4)(^\respirarect\mf\<
    \finecorona

    \bar "|" 
    b'4)(^\respirarect\f\<
    \finecorona
    
    \bar "|" 
    b'4)^\respirarect\sfz\!
    \finecorona
    
    \pageBreak \bar "|" 
    }

% ------------------------------------------------------------------------------


% WIND INSTRUMENT ---------------------------------------------------------------------

\new Staff 
\with { instrumentName = "Wind Instrument" \remove "Time_signature_engraver" } 
    {
    \cadenzaOn
    % UN SOLO RIGO
    \stopStaff \rigo \startStaff
    \override Staff.Clef.color = #white
    \override Staff.Clef.layer = #-1
    
    % stanghe note OFF
    \stemOff 
    
    \notainvisibile
    \bar "|" c''4
    
    \bar "|" \mark" 10'' " c''4
    
    \bar "|" \mark" 20'' " c''4

    \bar "|" \mark" 30'' " c''4
    
    \bar "|" \mark" 40'' " c''4

    \pageBreak \bar "|" 
    }

% ------------------------------------------------------------------------------

 >>
}




\header 
{
tagline = 
"| website: https://lucaspanedda.github.io/ | 
 | e-mail: lucaspanedda1995@gmail.com |" 
}
