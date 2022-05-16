% VERION (for future compatibility)
\version "2.22.2"

% PARAMETRI GLOBALI
#(set-default-paper-size "a4")
date = #(strftime "%d-%m-%Y" (localtime (current-time))) 
% #(set-global-staff-size 20)


% LEGENDA
\markup {
  \column {
\fontsize #8 \line {Voice Semiography}
\vspace #2
\fontsize #4 \line {Luca Spanedda}
\vspace #2
\fontsize #2 \line {\date}
\vspace #2
  }
}


% NEW PAGE
\pageBreak


% SEMIOGRAPHY VARIABLES
% note^variables-name or Note_variables-name
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
\column 
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
\line {\letteraa \ha - lettere o testo da pronunciare}
\vspace #2
\line {\risata \morph \pianto - morphing graduale fra due gesti musicali}
\vspace #2
  }
}


% END OF THE SCORE
\header 
{
tagline = 
"| website: https://lucaspanedda.github.io/ | 
 | e-mail: lucaspanedda1995@gmail.com |" 
}


