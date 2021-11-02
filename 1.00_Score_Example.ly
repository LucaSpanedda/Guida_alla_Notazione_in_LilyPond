% PARAMETRI GLOBALI
#(set-default-paper-size "a3" 'landscape)
% #(set-global-staff-size 20)


% DEFINIZIONE DELLE VARIABILI DA RICHIAMARE
% (i markup che richiami sopra le note riguardanti la semiografia)
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

freeze = \markup \center-align \box {\fontsize #4 \line {☞⇥}}
trigs = \markup \center-align \box {\fontsize #4 \line {☞⇆}}
trigstop = \markup \center-align \box {\fontsize #4 \line {☞x}}
scenen = \markup \center-align {\fontsize #1 \box {sceneN}} 
scenezero = \markup \center-align {\fontsize #1 \box {scene0}} 
sceneuno = \markup \center-align {\fontsize #1 \box {scene1}}
scenedue = \markup \center-align {\fontsize #1 \box {scene2}}
scenedueb = \markup \center-align {\fontsize #1 \box {scene2b}}
scenetre = \markup \center-align {\fontsize #1 \box {scene3}}
scenequattro = \markup \center-align {\fontsize #1 \box {scene4}} 
scenecinque = \markup \center-align {\fontsize #1 \box {scene5}}
scenesei = \markup \center-align {\fontsize #1 \box {scene6}}
scenesette = \markup \center-align {\fontsize #1 \box {scene7}}
sceneotto = \markup \center-align {\fontsize #1 \box {scene8}} 
scenenove = \markup \center-align {\fontsize #1 \box {scene9}}
scenedieci = \markup \center-align {\fontsize #1 \box {scene10}}
sceneundici = \markup \center-align {\fontsize #1 \box {scene11}}
scenedodici = \markup \center-align {\fontsize #1 \box {scene12}}
scenedodicib = \markup \center-align {\fontsize #1 \box {scene12b}}




% TITOLO
\markup {
\column {
\vspace #2
\larger \line {Luca Spanedda}
\vspace #1
\larger \line \italic {Deus Ex Machina}
\larger \line \italic {for Performer and Live Electronics}
\line {2021}
\vspace #4
}}




% SEMIOGRAFIA

% ---- voce
\markup {
\column 
{
\fontsize #4 \line {Semiografia Voce}
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
% ---- elettronica
\column 
{
\fontsize #4 \line {Semiografia Elettronica}
\vspace #2
\line {\freeze - trigger da 1 a 40 nel tempo indicato, e stop (riempie tutti i banchi di memoria)}
\vspace #2
\line {\trigs - trigger continui a velocità gestita dall'interprete nel tempo indicato (ascoltando)}
\vspace #2
\line {\trigstop - smettere di mandare trigger e lasciare il contenuto in memoria}
\vspace #2
\line {\scenen - scene da richiamare quando indicato in partitura durante l'esecuzione}
\vspace #2
}
}


% PAGINA A CAPO
\pageBreak




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
\new Staff \with { instrumentName = "Voce" \remove "Time_signature_engraver" } 

    {
    \cadenzaOn
    
    % UN SOLO RIGO
    \stopStaff \rigo \startStaff
    \override Staff.Clef.color = #white
    \override Staff.Clef.layer = #-1
    
    % stanghe note OFF
    \stemOff 
    
    \notainvisibile
    \iniziocorona \bar "'" 
    c''4_\scenezero_\markup{\small {scena di default}}
    \finecorona
    
    \notavisibile
    \iniziocorona \bar "'" \mark "4''≅"
    b'4(^\scream^\gutturale^\boccaaperta_\sfz_\freeze_\markup{freeze dell'urlo} b'4)
    \finecorona
    
    \notainvisibile
    \iniziocorona \bar "'" 
    c''4_\sceneuno
    \finecorona

    \iniziocorona \bar "'" \mark "20''≅"
    c''4_\markup{\small {fino a saturazione}}_\trigs\< 
    \finecorona
    
    \iniziocorona \bar "'" \mark "10''≅"
    c''4_\markup{\small {fino a desaturazione}}_\trigs\!\>_\scenedue
    \finecorona
    
    \break
    
    
    
    
    % PENTAGRAMMA
    \stopStaff \pentagramma \startStaff
    \override Staff.Clef.color = #black
    \override Staff.Clef.layer = #1
    
    \notainvisibile
    \iniziocorona \bar "'"
    d'4_\scenedueb\!
    \finecorona
    
    \notavisibile
    \iniziocorona \bar "'" \mark "4''≅"
    aes4^\markup{legato sempre}_\trigs
    _\markup{svuotando le memorie lentamente in 50''}
    (^\boccasemiaperta\< a4\p %!
    \notainvisibile
    d'4)_\aspirarest
    \finecorona
    
    \notavisibile
    \iniziocorona \bar "'" \mark "4''≅"
    aes4^\boccachiusa\< a4\p %!
    \notainvisibile
    d'4_\aspirarest
    \finecorona
    
    \notavisibile
    \iniziocorona \bar "'" \mark "6''≅"
    aes4^\boccachiusa\< cis'4 c'4^\boccasemiaperta\mf %!
    \notainvisibile
    d'4_\aspirarect
    \finecorona
    
    \break
    
    \notavisibile
    \iniziocorona \bar "'" \mark "6''≅"
    cis'4^\boccachiusa\< cis'4^\growl\f %!
    \notainvisibile
    d'4_\aspirarect
    \finecorona
    
    \notavisibile
    \iniziocorona \bar "'" \mark "6''≅"
    cis'4^\growl^\boccaaperta\f ceseh'4 c'4
    \notainvisibile
    d'4_\aspirarect
    \finecorona
    
    \notavisibile
    \iniziocorona \bar "'" \mark "4''≅"
    c'4^\gutturale^\boccaaperta\f ces'4 c'4
    \notainvisibile
    d'4_\aspirarect
    \finecorona
    
    \break
    
    \notavisibile
    \iniziocorona \bar "'" \mark "5''≅"
    cis'4^\gutturale^\boccaaperta\sfz fis'4 c'4
    \notainvisibile
    d'4_\aspirarect
    \finecorona
    
    \notavisibile
    \iniziocorona \bar "'" \mark "4''≅"
    cis'4^\gutturale^\boccaaperta\sfz\< fis'4 f'4 gis'4\ff
    \notainvisibile
    d'4_\aspirarect
    \finecorona
    
    \notavisibile
    \iniziocorona \bar "'" \mark "4''≅"
    cis'4^\gutturale^\boccaaperta\sfz\< fis'4 f'4 gis'4\fff
    \notainvisibile
    d'4_\aspirarect
    \finecorona
    
    \break
    
    \notavisibile
    \iniziocorona \bar "'" \mark "6''≅"
    cis'4^\scream^\boccaaperta\fff fis'4 f'4 gis'4 fis'4 f'4 d'4 c'4
    \notainvisibile
    d'4_\aspirarest
    \finecorona
    
    \notavisibile
    \iniziocorona \bar "'" \mark "3''≅"
    d'4^\boccaaperta\p cis'4
    \notainvisibile
    d'4_\aspirarest
    \finecorona
    
    % PAGINA A CAPO
    \pageBreak




    \notainvisibile
    \iniziocorona \bar "'"
    d'4_\scenetre
    \finecorona
    
    \notavisibile
    \iniziocorona \bar "'" \mark "10''≅"
    fis4^\markup{legato sempre}_\trigs(^\boccaaperta\pp\< g4 fis4 b4\f
    \notainvisibile
    d'4)_\aspirarect
    \finecorona
    
    \notavisibile
    \iniziocorona \bar "'" \mark "6''≅"
    b4^\boccaaperta\f\< b4^\boccachiusa^\gutturale\sfz
    \notainvisibile
    d'4_\aspirarect
    \finecorona
    
    \notavisibile
    \iniziocorona \bar "'" \mark "6''≅"
    b4^\boccachiusa^\gutturale\sfz\< b4\ppp
    \notainvisibile
    d'4_\aspirarect
    \finecorona
    
    \break 
    
    \notavisibile
    \iniziocorona \bar "'" \mark "2''≅"
    b4^\boccaaperta\f\< b4\mf
    \notainvisibile
    d'4_\aspirarest
    \finecorona
    
    \notavisibile
    \iniziocorona \bar "'" \mark "8''≅"
    b4^\boccaaperta\f c'4 b4 g4 b4
    \notainvisibile
    d'4_\aspirarest
    \finecorona
    
    \notavisibile
    \iniziocorona \bar "'" \mark "5''≅"
    c'4^\boccaaperta\mf\< b4 g4 b4\p
    \notainvisibile
    d'4_\aspirarest
    \finecorona
    
    \notavisibile
    \iniziocorona \bar "'" \mark "4''≅"
    c'4^\boccaaperta\p\< b4 g4 b4\pp
    \notainvisibile
    d'4_\aspirarest^\markup{stop legato}
    \finecorona
    
    \break
    
    
    
    
    % UN SOLO RIGO
    \stopStaff \rigo \startStaff
    \override Staff.Clef.color = #white
    \override Staff.Clef.layer = #-1 
    
    \notainvisibile
    \iniziocorona \bar "'" 
    c''4_\scenequattro
    \finecorona
    
    \iniziocorona \bar "'" \mark "4''≅"
    b'4_\trigs^\aspirarect^\boccachiusa
    \finecorona
    
    \iniziocorona \bar "'" \mark "4''≅"
    b'4^\espirarect^\boccachiusa
    \finecorona
    
    \iniziocorona \bar "'" \mark "4''≅"
    b'4^\aspirarect^\boccachiusa
    \finecorona
    
    \iniziocorona \bar "'" \mark "4''≅"
    b'4^\espirarect^\boccachiusa
    \finecorona
    
    \break
    
    \iniziocorona \bar "'" \mark "1''≅"
    b'4^\aspirarect
    \finecorona
    
    \notavisibile
    \iniziocorona \bar "'" \mark "6''≅"
    b'4(^\gutturale^\espirarect^\boccachiusa\p\< b'4)\sfz
    \finecorona
    \notainvisibile
    
    \iniziocorona \bar "'" \mark "1''≅"
    b'4^\aspirarect
    \finecorona
    
    \notavisibile
    \iniziocorona \bar "'" \mark "3''≅"
    b'4\sfz(^\gutturale^\espirarect^\boccachiusa b'4)
    \finecorona
    \notainvisibile
    
    \break
    
    \iniziocorona \bar "'" \mark "8''≅"
    b'4^\aspirarect\f_\markup{accelerando...}
    
    \notavisibile
    b'4(^\gutturale^\boccachiusa\ff^\markup{sfz} b'4)
    \notainvisibile
    
    b'4^\aspirarect\ff
    
    \notavisibile
    b'4(^\gutturale^\boccachiusa\fff^\markup{sfz} b'4)
    \notainvisibile
    
    b'4^\aspirarect\fff
    \finecorona
    
    % PAGINA A CAPO
    \pageBreak
    
    
    
    
    \iniziocorona \bar "'"
    c''4_\scenecinque
    \finecorona
    
    \iniziocorona \bar "'" \mark "4''≅"
    \notavisibile
    b'4(_\trigs^\gutturale^\boccachiusa\mf^\markup{disperato} b'4)
    \notainvisibile
    b'4^\aspirarect
    \finecorona
    
    \iniziocorona \bar "'" \mark "6''≅"
    \notavisibile
    b'4(^\boccachiusa\mf b'4)
    \notainvisibile
    b'4^\aspirarect
    \finecorona
    
    \break
    
    \iniziocorona \bar "'" \mark "10''≅"
    \notavisibile
    b'4(^\gutturale^\boccachiusa^\markup{spezzando pitch}^\sfz^\<
    \notainvisibile
    b'4^\!^\>^\morph 
    \notavisibile
    b'4)^\pianto^\boccaaperta\!
    \notainvisibile
    b'4^\aspirarect
    \finecorona
    
    \iniziocorona \bar "'" \mark "8''≅"
    \notavisibile
    b'4(^\pianto^\boccaaperta b'4)
    \finecorona
    
    \break 
    
    \iniziocorona \bar "'" \mark "8''≅"
    \notavisibile
    b'4(^\pianto^\boccaaperta^\sfz^\<
    \notainvisibile
    b'4^\!^\>^\morph 
    \notavisibile
    b'4)^\risata^\boccaaperta\!
    \notainvisibile
    b'4^\aspirarect
    \finecorona
    
    \iniziocorona \bar "'" \mark "6''≅"
    \notavisibile
    b'4(^\boccaaperta^\risata b'4)
    \finecorona
    
    % PAGINA A CAPO
    \pageBreak
    
    
    
    
    \iniziocorona \bar "'"
    \notainvisibile
    c''4_\scenesei
    \notavisibile
    % stanghe note ON
    \stemOn
    \finecorona
    
    \iniziocorona \bar "'" \mark "12''≅"
    \repeat percent 16
    \repeat tremolo 4 b'8
    _\trigs^\markup{\fontsize #2 \circle {T}}
    ^\markup{ritmo accelerando...}^\<
    \repeat percent 16
    \repeat tremolo 4 b'16
    ^\markup{\fontsize #1 \circle {TR}}
    \repeat tremolo 8 b'32
    ^\markup{\fontsize #2 \circle {R}}
    ^\!^\markup{...fino a suono continuo...}
    \stemOff \notainvisibile b'4^\aspirarect \notavisibile \stemOn
    \finecorona
    
    \break
    
    \iniziocorona \bar "'" \mark "10''≅"
    \repeat percent 16
    \repeat tremolo 4 b'32(
    ^\markup{\fontsize #2 \circle {R}}
    _\markup{...}
    \repeat percent 16
    \repeat tremolo 4 b'32
    ^\markup{\fontsize #1 \circle {TR}}
    \repeat tremolo 8 b'32)
    ^\markup{\fontsize #2 \circle {R}}
    \stemOff \notainvisibile b'4^\aspirarect \notavisibile \stemOn
    \finecorona
    
    \break
    
    \iniziocorona \bar "'" \mark "10''≅"
    \stemOff 
    b'4(^\markup{\fontsize #2 \circle {IIN}}\sfz
    \stemOn
    \repeat percent 16
    \repeat tremolo 4 b'32)(
    ^\markup{\fontsize #2 \circle {R}}
    \stemOff 
    b'4)(^\markup{\fontsize #2 \circle {IIN}}\sfz
    b'4)^\markup{\fontsize #2 \circle {N}}\sfz
    \stemOff \notainvisibile b'4^\aspirarect \notavisibile \stemOn
    \finecorona
    
    \break
    
    \iniziocorona \bar "'" \mark "6''≅"
    \stemOff 
    b'4(^\markup{\fontsize #2 \circle {III}}\sfz
    \stemOn
    \repeat tremolo 4 b'32)(
    ^\markup{\fontsize #2 \circle {R}}
    \stemOff 
    b'4)(^\markup{\fontsize #2 \circle {IIN}}\sfz
    b'4)^\markup{\fontsize #2 \circle {N}}\sfz
    \stemOff \notainvisibile b'4^\aspirarect \notavisibile \stemOn
    \finecorona
    
    \iniziocorona \bar "'" \mark "6''≅"
    \stemOff 
    b'4(^\markup{\fontsize #2 \circle {INN}}\sfz
    \stemOn
    \repeat percent 4
    \repeat tremolo 4 b'32)(
    ^\markup{\fontsize #2 \circle {PRR}}
    \stemOff 
    b'4)(^\markup{\fontsize #2 \circle {IIN}}\sfz
    b'4)^\markup{\fontsize #2 \circle {C}}\sfz
    \stemOff \notainvisibile b'4^\aspirarect \notavisibile \stemOn
    \finecorona
    
    \break
    
    \iniziocorona \bar "'" \mark "8''≅"
    \stemOff 
    b'4(^\markup{\fontsize #2 \circle {SC}}\sfz
    b'4)(^\markup{\fontsize #2 \circle {CZ}}\sfz
    b'4)^\markup{\fontsize #2 \circle {Z}}\sfz
    \stemOff \notainvisibile b'4^\aspirarect \notavisibile \stemOn
    \finecorona
    
    \iniziocorona \bar "'" \mark "8''≅"
    \stemOff 
    b'4(^\markup{\fontsize #2 \circle {IN}}\sfz
    b'4)(^\markup{\fontsize #2 \circle {PRI}}\sfz
    b'4)^\markup{\fontsize #2 \circle {NCI}}\sfz
    \stemOff \notainvisibile b'4^\aspirarect \notavisibile \stemOn
    \finecorona
    
    \break
    
    \iniziocorona \bar "'" \mark "10''≅"
    \stemOff 
    b'4(^\markup{\fontsize #2 \circle {IN}}\sfz
    b'4)(^\markup{\fontsize #2 \circle {PRI}}\sfz
    b'4)(^\markup{\fontsize #2 \circle {I}}\sfz
    b'4)(^\markup{\fontsize #2 \circle {NCI}}\sfz
    b'4)(^\markup{\fontsize #2 \circle {I}}\sfz
    b'4)(^\markup{\fontsize #2 \circle {PIO}}\sfz
    b'4)^\markup{\fontsize #2 \circle {O!}}\sfz
    \stemOff \notainvisibile b'4^\aspirarect \notavisibile \stemOn
    \finecorona
    
    % PAGINA A CAPO
    \pageBreak
    
    
    
    
    % stanghe note OFF
    \notainvisibile
    \stemOff
    
    \iniziocorona \bar "'" \mark "20''≅"
    c''4_\markup{\small {fino a saturazione}}\<_\scenesette
    \finecorona
    
    \iniziocorona \bar "'" \mark "20''≅"
    c''4_\markup{\small {fino a silenzio}}\!\>_\sceneotto
    \finecorona
    
    \iniziocorona \bar "'" \mark "1''≅"
    b'4\!_\freeze_\markup{svuota le 40 memorie}
    \finecorona
    
    \break
    
    \iniziocorona \bar "'"
    \notainvisibile
    c''4_\scenenove
    \notavisibile
    
    \iniziocorona \bar "'" \mark "14''≅"
    \stemOff 
    b'4^\markup{\fontsize #2 \circle {IN}}
    b'4^\markup{\fontsize #2 \circle {PRI}}
    b'4^\markup{\fontsize #2 \circle {NCI}}
    b'4^\markup{\fontsize #2 \circle {PIO}}
    b'4(^\markup{\fontsize #2 \circle {O}}^\espirarect
    \notainvisibile b'4)^\espirarect \notavisibile
    \finecorona
    
    \break
    
    \notainvisibile
    \iniziocorona \bar "'" \mark "4''≅"
    b'4^\aspirarect^\boccachiusa_\trigs\mf
    \finecorona
    
    \iniziocorona \bar "'" \mark "4''≅"
    b'4^\espirarect^\boccachiusa
    \finecorona
    
    \iniziocorona \bar "'" \mark "4''≅"
    b'4^\aspirarect^\boccachiusa
    \finecorona
    
    \iniziocorona \bar "'" \mark "4''≅"
    b'4^\espirarect^\boccachiusa_\trigstop
    \finecorona
    
    \break
    
    \iniziocorona \bar "'" \mark "10''≅"
    c''4_\markup{\small {fino a saturazione}}\<_\scenedieci
    \finecorona
    
    \iniziocorona \bar "'" \mark "20''≅"
    c''4_\markup{\small {fino a silenzio}}\!\>_\sceneundici
    \finecorona
    
    \iniziocorona \bar "'" \mark "1''≅"
    b'4\!_\freeze_\markup{svuota le 40 memorie}
    \finecorona
    
    % PAGINA A CAPO
    \pageBreak
    
    
    
    
    % PENTAGRAMMA
    \stopStaff \pentagramma \startStaff
    \override Staff.Clef.color = #black
    \override Staff.Clef.layer = #1
    
    \notainvisibile
    \iniziocorona \bar "'"
    d'4_\scenedodici\!
    \finecorona
    
    \notavisibile
    \iniziocorona \bar "'" \mark "6''≅"
    cis'4^\boccaaperta\< cis'4\p_\trigs
    \notainvisibile
    d'4_\aspirarest
    \finecorona
    
    \notavisibile
    \iniziocorona \bar "'" \mark "8''≅"
    cis'4^\boccaaperta\p\< fis'4 f'4 gis'4\mf
    \notainvisibile
    d'4_\aspirarest
    \finecorona
    
    \notavisibile
    \iniziocorona \bar "'" \mark "8''≅"
    cis'4^\boccaaperta\mf\< fis'4 f'4 gis'4^\gutturale\f
    \notainvisibile
    d'4_\aspirarest
    \finecorona
    
    \notavisibile
    \iniziocorona \bar "'" \mark "12''≅"
    cis'4^\boccaaperta\f fis'4 f'4 gis'4
    \notainvisibile
    d'4_\aspirarest
    \finecorona
    
    \break
    
    \notavisibile
    \iniziocorona \bar "'" \mark "2''≅"
    cis'4^\boccaaperta\ff fis'4 f'4 gis'4
    \notainvisibile
    d'4_\aspirarest
    \finecorona
    
    \notavisibile
    \iniziocorona \bar "'" \mark "12''≅"
    cis'4^\scream^\boccaaperta\fff fis'4 f'4 gis'4 fis'4 f'4 d'4 c'4
    _\trigstop
    \notainvisibile
    d'4_\aspirarest
    \finecorona
    
    \break
    
    % UN SOLO RIGO
    \stopStaff \rigo \startStaff
    \override Staff.Clef.color = #white
    \override Staff.Clef.layer = #-1 
    
    \notainvisibile
    \iniziocorona \bar "'" \mark "30''≅"
    c''4_\markup{lascia il freeze suonare;}
    _\markup{il performer nel mentre esce dal palco}
    \finecorona
    
    \break
    
    \bar "'" 
    b'4_\scenedodicib_\markup{\large {stop immediato dopo i 30''}}
    % FINE
    \bar "|."
    
    }

}

