% VERION (for future compatibility)
\version "2.22.2"

% GLOBAL PARAMETERS
#(set-default-paper-size "a3landscape")
date = #(strftime "%d-%m-%Y" (localtime (current-time))) 

% TO DO:
% Entra strumento a fiato sotto sfz di female voice
% Morphing delle female voice a gutturale

% TITLE
\markup {
  \column {
\fontsize #12 \line {Psiche}
\fontsize #4 \line {for mixed choir and wind instrument}
\vspace #1
\fontsize #4 \line {Luca Spanedda}
\fontsize #2 \line {\date}
\vspace #6

\fontsize #4 \line {Ensemble:}
\fontsize #2 \line {- 1 solo voice that can throat sing (kargyraa)}
\fontsize #2 \line {- 6 to 8 elements in the male choir}
\fontsize #2 \line {- 6 to 8 elements in the female choir}
\fontsize #2 \line {- 1 solo wind instrument that can do harmonics}
\fontsize #2 \line {  with the same foundamental frequency}
\fontsize #2 \line {  of the kargyraa sing}
\vspace #2
  }
}


% NEW PAGE
\pageBreak


% TESTO
\markup {
  \column {
\fontsize #8 \line {Notes}
\vspace #2
\fontsize #2 \line {Wires is a composition for strings, comes from desire to explore the dimension of the sound continuum.}
\fontsize #2 \line {Thanks to the use of chance, the piece is renewed in each performance, remaining coherent formally although always different internally.}
\fontsize #2 \line {The musical form of the sound continuum lower the perception of the psychological time:}
\fontsize #2 \line {things stop living in the temporality of the Micro, marked by past present and future; by sound events defined in the order of milliseconds,}
\fontsize #2 \line {and instead became projected towards the dimension of the Macro.}
\fontsize #2 \line {In this condition, our perception of the past, present and future begins to merge,}
\fontsize #2 \line {creating new listening situations.}
\vspace #8
  }
}


% NEW PAGE
\pageBreak


% SEMIOGRAPHY VARIABLES
% note^variables-name or Note_variables-name

% VOICE
respirarect = \markup \center-align {\fontsize #2 {⊗} }
aspirarect = \markup \center-align {\fontsize #2 {◪} }
aspirarest = \markup \center-align {\fontsize #2 {⧄} }
espirarect = \markup \center-align {\rotate #135 \fontsize #2 {◧} }
espirarest = \markup \center-align {\rotate #45 \fontsize #1 {⊟} }
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

% WIND
soffio = \markup \center-align {\fontsize #2 {∇} }
flatterzungeC = \markup \center-align {\fontsize #8 {𝅬} }
flatterzungeB = \markup \center-align {\fontsize #8 {𝅫} }
flatterzungeA = \markup \center-align {\fontsize #8 {𝅪} }

% SEMIOGRAPHY
\markup {
  \center-column{
\fontsize #4 \line {Semiography}
\vspace #4
\fontsize #2 \line {for Voice}
\vspace #2
\line {\respirarect - respirare con timbro}
\vspace #1
\line {\aspirarect - inspirare con timbro}
\vspace #1
\line {\aspirarest - inspirare senza timbro}
\vspace #1
\line {\espirarect - espirare con timbro}
\vspace #1
\line {\espirarest - espirare senza timbro}
\vspace #1
\line {\boccachiusa - con bocca chiusa}
\vspace #1
\line {\boccasemiaperta - con bocca semiaperta}
\vspace #1
\line {\boccaaperta - con bocca aperta}
\vspace #1
\line {\gutturale - suono in gola gutturale}
\vspace #1
\line {\tosse - colpi di tosse}
\vspace #1
\line {\pianto - singhiozzi del pianto}
\vspace #1
\line {\risata - risata}
\vspace #1
\line {\growl - growl}
\vspace #1
\line {\scream - scream}
  }
  
  
  \center-column{
  \vspace #5
  \fontsize #2 \line {for Wind Instrument}
  \vspace #2
  \line {\soffio - suono del soffio}
  \vspace #1
  \line {\flatterzungeC - flatterzunge}
  \vspace #1
  \line {\flatterzungeB - flatterzunge}
  \vspace #1
  \line {\flatterzungeA - flatterzunge}
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
    
    \bar "|" \mark" 50'' "
    
    \pageBreak 
    
    \notainvisibile
    \bar "|" \mark" 60'' " c''4
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
    b'4)(^\respirarect^\boccachiusa\mf\>
    \finecorona
    
    \bar "'" 
    b'4)(^\respirarect^\boccachiusa\p\>

    \bar "|" 
    b'4)\!
    
    \bar "|" 
    \notainvisibile
    c''4
    
    \bar "|" 
    
    \pageBreak 
    
    \notainvisibile
    \bar "|" c''4
    \notavisibile
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
    b'4)(^\respirarect^\boccachiusa\mf\<
    \finecorona
    
    \bar "|" 
    b'4)^\respirarect^\boccachiusa\f\!
    \finecorona
    
    \bar "|"
    
    \pageBreak  
    
    \notainvisibile
    \bar "|" c''4
    \notavisibile
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
    b'4)(^\respirarect^\boccachiusa\mf\<
    \finecorona

    \bar "|" 
    b'4)(^\respirarect^\boccachiusa\f\<
    \finecorona
    
    \bar "|" 
    b'4)(^\respirarect^\boccachiusa\sfz\>
    _\markup{\italic {going towards ...}}
    \finecorona
    
    \bar "|" 
    
    \pageBreak 
    
    \bar "|" 
    b'4)^\gutturale^\boccachiusa\p
    \finecorona
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
    
    \notavisibile
    \bar "|" \mark" 30'' " 
    b'4(^\soffio\<
    
    \bar "|" \mark" 40'' " 
    b'4)(^\soffio\mf\>
    _\markup{\italic {going towards ...}}

    \bar "|" 
    
    \pageBreak 
    
    b'4)^\flatterzungeC\p
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