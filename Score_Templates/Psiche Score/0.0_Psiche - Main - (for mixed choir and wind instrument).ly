% VERION (for future compatibility)
\version "2.22.2"

% GLOBAL PARAMETERS
#(set-default-paper-size "a3landscape")
date = #(strftime "%d-%m-%Y" (localtime (current-time))) 

% \right-align (allinea a destra: markup)
% system-separator-markup = \slashSeparator

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
\line\italic { Ogni anima è immortale. }
\line\italic { Infatti è immortale ciò che è in continuo movimento, mentre ciò che muove altro o è mosso da altro, }
\line\italic { quando cessa di muoversi, cessa anche di vivere. }
\line\italic { Evidentemente solo ciò che si muove da sé, dato che non viene meno a se stesso, non cessa mai di muoversi, }
\line\italic { ma anzi è fonte e principio di movimento per tutte le altre cose che si muovono. }
\line\italic { Un principio poi è ingenerato; infatti è necessario che tutto ciò che nasce nasca da un principio, }
\line\italic { ma che questo principio non nasca dal nulla. }
\line\italic { (Plato, Phaedrus) }
\vspace #2

\line {Un principio fisico universale vuole che in tutte le strutture organizzate sia misurabile }
\line {il grado di ordine e disordine, la grandezza fisica che misura questo grado di disordine }
\line {progressivo è l'entropia. }
\line {Gli esseri viventi sono in grado di muoversi in direzione opposta}
\line {a quella del processo entropico, assorbendo energia libera dall'ambiente:}
\line {Essi, come tutte le cose di questo mondo, tendono verso lo }
\line {stato di equilibrio (la morte), assorbendo energia libera }
\line {si mantengono invece in uno stato stazionario a spese dell'ambiente circostante, }
\line {ed al costo di un'enorme spreco di energia, }
\line {in tutti gli organismi questo avviene tramite la respirazione cellulare. }
\line {Per compiere la respirazione cellulare , gli organismi necessitano di un continuo }
\line {rifornimento di ossigeno, che prelevano dall'ambiente circostante (aria o acqua). }
\line {Noi respirando, non facciamo altro che ripercorrere il processo creativo,  }
\line {la vibrazione primordiale che ha dato vita all’Universo e costituito il cuore pulsante e }
\line {vitale di ogni cosa. Psiche Dal gr. ψυχή, connesso con ψύχω «respirare, soffiare» è }
\line {un termine la cui etimologia si riconduce all’idea del «soffio», cioè del respiro }
\line {vitale; presso i Greci designava l’anima in quanto originariamente identificata con }
\line {quel respiro. }
\line {Il respiro ed il suo parallelismo con la creazione è l'ogetto al centro di questa }
\line {composizione, in forma di processo per descrivere il processo stesso }
\line {del rivestimento musicale generato dai gesti primordiali dell’essere umano }
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
espirarect = \markup \center-align {\rotate #135 \fontsize #4 {◧} }
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
highestn = \markup \center-align {\fontsize #8 {▴} }
lowestn = \markup \center-align {\fontsize #8 {▾} }

% SEMIOGRAPHY
\markup {
  \center-column{
\fontsize #4 \line {Semiography}
\vspace #4


  \fontsize #2 \line {generale}
  \vspace #2
  \line {\highestn - nota più acuta possibile}
  \vspace #1
  \line {\lowestn - nota più grave possibile}
  }
  
  
  \center-column{
  \vspace #5
  \fontsize #2 \line {posizioni della bocca}
  \vspace #2
  \line {\boccaaperta - con bocca aperta}
  \vspace #1
  \line {\boccasemiaperta - con bocca semiaperta}
  \vspace #1
  \line {\boccachiusa - con bocca chiusa}
  }
  
  
  \center-column{
  \vspace #5
  \fontsize #2 \line {strumento a fiato}
  \vspace #2
  \line {\soffio - suono del soffio senza altezza}
  \vspace #1
  \line {\flatterzungeC - flatterzunge}
  \vspace #1
  \line {\flatterzungeB - flatterzunge lento}
  \vspace #1
  \line {\flatterzungeA - flatterzunge molto lento}
  }
  
  
  \center-column{
  \vspace #5
  \fontsize #2 \line {voce}
  \vspace #2
  \line {\respirarect - respirare producendo suono}
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
  \fontsize #2 \line {canto kargyraa}
  \vspace #2
  \line {\score{<cis') cis\harmonic>1}}
  \vspace #1
  \line {modalità di canto che sfrutta}
  \line {la vibrazione delle false corde}
  \line {per risuonare un ottava esatta}
  \line {sotto la nota prodotta}
  \line {dalle corde vocali}
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
    \include "timer.ly"
    \include "solo-voice.ly"
    \include "male-voices.ly"
    \include "female-voices.ly"
    \include "wind-instrument.ly"
  >>
}


\header 
{
tagline = 
"| website: https://lucaspanedda.github.io/ | 
 | e-mail: lucaspanedda1995@gmail.com |" 
}