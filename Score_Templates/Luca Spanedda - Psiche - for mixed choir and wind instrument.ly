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
  \line {\soffio - suono del soffio senza altezza}
  \vspace #1
  \line {\flatterzungeC - flatterzunge}
  \vspace #1
  \line {\flatterzungeB - flatterzunge}
  \vspace #1
  \line {\flatterzungeA - flatterzunge}
  \vspace #1
  \line {\highestn - nota più alta possibile}
  \vspace #1
  \line {\lowestn - nota più bassa possibile}
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
    \bar "|" c''4    % 0'' !!!!
    
    \bar "|" \mark" 10'' " c''4
    
    \bar "|" \mark" 20'' " c''4

    \bar "|" \mark" 30'' " c''4
    
    \bar "|" \mark" 40'' " c''4
    
    \pageBreak 
    
    \bar "|" \mark" 50'' " c''4
    
    \bar "|" \mark" 1' " c''4
    
    \bar "|" \mark" 1'10'' " c''4
    
    \bar "|" \mark" 1'20'' " c''4
    
    \bar "|" \mark" 1'30'' " c''4
    
    \pageBreak 
    
    \bar "|" \mark" 1'40'' " c''4
    
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
    _\markup{\italic
      {constantly breaking the sound to breathe}}
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
    
    \bar "|" 
    
    \notainvisibile
    \bar "|" c''4
    \notavisibile
    
    b'4(
    ^\markup{\fontsize #6 {(𝆏 ⁺ 𝆍𝆑𝆎)}}
    _\markup{\italic
      {freely breaking the sound}}
    ^\lowestn^\gutturale^\boccachiusa
    \finecorona
    
    \bar "|" 
    
    b'4)(
    _\markup{\italic
      {going towards the continuous sound}}
    ^\markup{\fontsize #4 \circle {U}}
    ^\lowestn^\gutturale^\boccachiusa \<
    \finecorona
    
    \bar "|" 
    
    % PENTAGRAMMA
    \stopStaff \pentagramma \startStaff
    \override Staff.Clef.color = #black
    \override Staff.Clef.layer = #1
    \clef treble
    
    cis'4)
    ^\gutturale^\boccachiusa \mf
    \finecorona
    
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
    _\markup{\italic
      {freely breaking the sound to breathe}}
    ^\respirarect^\boccachiusa\<
    \finecorona

    \bar "|" 
    b'4)(^\respirarect^\boccachiusa\mf\<
    \finecorona
    
    \bar "|" 
    b'4)(^\respirarect^\boccachiusa\f\>
    \finecorona
    
    \bar "|"
    
    \pageBreak  
    
    \bar "|" 
    b'4)(^\respirarect^\boccachiusa\p\>
    \finecorona
    
    \bar "|"
    
    b'4)^\respirarect^\boccachiusa\!
    \finecorona
    
    \bar "|" 
    
    b'4(^\gutturale^\boccachiusa\p\<
    \finecorona
    
    \bar "|" 
    
    b'4)(^\gutturale^\boccachiusa\mf\>
    \finecorona
    
    \bar "|" 
    
    b'4)^\gutturale^\boccachiusa\!
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
    _\markup{\italic
      {freely breaking the sound to breathe}}
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
    _\markup{\italic 
    {going towards ...} \sub{\gutturale}}
    \finecorona
    
    \bar "|" 
    
    \pageBreak 
    
    \bar "|" 
    b'4)(^\gutturale^\boccachiusa\p\<
    \finecorona
    
    \bar "|" 
    
    b'4)(^\gutturale^\boccachiusa\mf\>
    \finecorona
    
    \bar "|" 
    
    b'4)(^\gutturale^\boccachiusa\p\<
    \finecorona
    
    \bar "|" 
    
    b'4)(^\gutturale^\boccachiusa\mf\>
    \finecorona
    
    \bar "|" 
    
    b'4)^\gutturale^\boccachiusa\!
    \finecorona
    
    \bar "|" 
    
    \pageBreak
    
    \notainvisibile
    \bar "|" c''4
    \notavisibile
    
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
    _\markup{\italic
      {freely breaking the sound to breathe}}
    
    \bar "|" \mark" 40'' " 
    b'4)(^\soffio\mf\>
    _\markup{\italic 
    {going towards ...} \sub{\flatterzungeC} }

    \bar "|" 
    
    \pageBreak 
    
    b'4)(^\flatterzungeC^\soffio\p\<
    
    \bar "|" 
    
    b'4)(^\flatterzungeC^\soffio\f\>
    _\markup{\italic 
    {going towards ...} \sub{\soffio} }
    
    \bar "|"
    
    b'4)(^\soffio\pp\>
    
    \bar "|"
    
    b'4)^\soffio\!
    
    \notainvisibile
    \bar "|" c''4
    \notavisibile
    
    \bar "|" 
    
    \pageBreak
    
    \notainvisibile
    \bar "|" c''4
    \notavisibile
    
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