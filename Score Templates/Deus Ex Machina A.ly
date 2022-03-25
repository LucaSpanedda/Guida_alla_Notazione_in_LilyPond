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

% PAGINA A CAPO
\pageBreak


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
}
\column 
{
\vspace #3
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
\new Staff \with { instrumentName = "Voce" \remove "Time_signature_engraver" } 
    {
    \cadenzaOn
    \stemOff 
    b'4( b'4)
    ^\markup
    {Ma all'interno di questi le relazioni ritmiche della notazione sono a libera interpretazione}
    ^\markup 
    {\circle \large { 0'10'' } Bisogna rispettare i marker delle finestre temporali o degli eventi.}
    \cadenzaOff
    % FINE
    \bar "|."
    }
}

% PAGINA A CAPO
\pageBreak



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
    \bar "'"
    c''4_\scenezero_\markup{\small {scena di default}}
    
    
    \notavisibile
    \iniziocorona \bar "'" 
    \mark \markup {\circle \large { 0'00'' } }
    b'4(^\scream^\gutturale^\boccaaperta_\sfz_\freeze_\markup{freeze dell'urlo} b'4)
    \finecorona
    
    \notainvisibile
    \bar "'" 
    \mark \markup {\circle \large { 0'04'' } }
    c''4_\sceneuno
    

    \bar "'" 
    \mark \markup {\circle \large { 0'05'' } }
    c''4_\markup{\small {fino a saturazione}}_\trigs\< 
    
    
    \bar "'" 
    \mark \markup {\circle \large { 0'25'' } }
    c''4_\markup{\small {fino a desaturazione}}_\trigs\!\>_\scenedue
    
    
    \break
    
    
    
    
    % PENTAGRAMMA
    \stopStaff \pentagramma \startStaff
    \override Staff.Clef.color = #black
    \override Staff.Clef.layer = #1
    
    \notainvisibile
    \bar "'"
    \mark \markup {\circle \large { 0'35'' } }
    d'4_\scenedueb\!
    _\trigs
    _\markup{svuotando le memorie lentamente in 50''}
    
    
    \notavisibile
    \iniziocorona \bar "'" %\mark "4''≅"
    \mark \markup {\circle \large { 0'36'' } }
    aes4^\markup{legato sempre}
    (^\boccasemiaperta\< a4\p %!
    \notainvisibile
    d'4)_\aspirarest
    _\markup {\circle \small { 0'42'' } }
    \finecorona
    
    \notavisibile
    \iniziocorona \bar "'" 
    \mark \markup {\circle \large { 0'44'' } }
    aes4^\boccachiusa\< a4\p %!
    \notainvisibile
    d'4_\aspirarest
    _\markup {\circle \small { 0'50'' } }
    \finecorona
    
    \notavisibile
    \iniziocorona \bar "'" 
    \mark \markup {\circle \large { 0'52'' } }
    aes4^\boccachiusa\< cis'4 c'4^\boccasemiaperta\mf %!
    \notainvisibile
    d'4_\aspirarect
    _\markup {\circle \small { 0'57'' } }
    \finecorona
    
    \break
    
    \notavisibile
    \iniziocorona \bar "'" 
    \mark \markup {\circle \large { 0'59'' } }
    cis'4^\boccachiusa\< cis'4^\growl\f %!
    \notainvisibile
    d'4_\aspirarect
    _\markup {\circle \small { 1'03'' } }
    \finecorona
    
    \notavisibile
    \iniziocorona \bar "'" 
    \mark \markup {\circle \large { 1'05'' } }
    cis'4^\growl^\boccaaperta\f ceseh'4 c'4
    \notainvisibile
    d'4_\aspirarect
    _\markup {\circle \small { 1'10'' } }
    \finecorona
    
    \notavisibile
    \iniziocorona \bar "'" 
    \mark \markup {\circle \large { 1'11'' } }
    c'4^\gutturale^\boccaaperta\f ces'4 c'4
    \notainvisibile
    d'4_\aspirarect
    _\markup {\circle \small { 1'14'' } }
    \finecorona
    
    \break
    
    \notavisibile
    \iniziocorona \bar "'" 
    \mark \markup {\circle \large { 1'15'' } }
    cis'4^\gutturale^\boccaaperta\sfz fis'4 c'4
    \notainvisibile
    d'4_\aspirarect
    _\markup {\circle \small { 1'19.5'' } }
    \finecorona
    
    \notavisibile
    \iniziocorona \bar "'" 
    \mark \markup {\circle \large { 1'20'' } }
    cis'4^\gutturale^\boccaaperta\sfz\< fis'4 f'4 gis'4\ff
    \notainvisibile
    d'4_\aspirarect
    _\markup {\circle \small { 1'23.5'' } }
    \finecorona
    
    \notavisibile
    \iniziocorona \bar "'" 
    \mark \markup {\circle \large { 1'24'' } }
    cis'4^\gutturale^\boccaaperta\sfz\< fis'4 f'4 gis'4\fff
    \notainvisibile
    d'4_\aspirarect
    _\markup {\circle \small { 1'27.5'' } }
    \finecorona
    
    \break
    
    \notavisibile
    \iniziocorona \bar "'" 
    \mark \markup {\circle \large { 1'28'' } }
    cis'4^\scream^\boccaaperta\fff fis'4 f'4 gis'4 fis'4 f'4 d'4 c'4
    \notainvisibile
    d'4_\aspirarest
    _\markup {\circle \small { 1'33'' } }
    \finecorona
    
    \notavisibile
    \iniziocorona \bar "'" 
    \mark \markup {\circle \large { 1'34'' } }
    d'4^\boccaaperta\p cis'4
    \finecorona
    
    % PAGINA A CAPO
    \pageBreak




    \notainvisibile
    \bar "'"
    \mark \markup {\circle \large { 1'37'' } }
    d'4_\scenetre
    
    \notavisibile
    \iniziocorona \bar "'" 
    \mark \markup {\circle \large { 1'38'' } }
    fis4^\markup{legato sempre}_\trigs(^\boccaaperta\pp\< g4 fis4 b4\f
    \notainvisibile
    d'4)_\aspirarect
    _\markup {\circle \small { 1'47'' } }
    \finecorona
    
    \notavisibile
    \iniziocorona \bar "'" 
    \mark \markup {\circle \large { 1'48'' } }
    b4^\boccaaperta\f\< b4^\boccachiusa^\gutturale\sfz
    \notainvisibile
    d'4_\aspirarect
    _\markup {\circle \small { 1'53'' } }
    \finecorona
    
    \notavisibile
    \iniziocorona \bar "'" 
    \mark \markup {\circle \large { 1'54'' } }
    b4^\boccachiusa^\gutturale\sfz\< b4\ppp
    \notainvisibile
    d'4_\aspirarect
    _\markup {\circle \small { 1'58'' } }
    \finecorona
    
    \break 
    
    \notavisibile
    \iniziocorona \bar "'" 
    \mark \markup {\circle \large { 2'00'' } }
    b4^\boccaaperta\f\< b4\mf
    \notainvisibile
    \finecorona
    
    \notavisibile
    \iniziocorona \bar "'" 
    \mark \markup {\circle \large { 2'02'' } }
    b4^\boccaaperta\f c'4 b4 g4 b4
    \notainvisibile
    d'4_\aspirarest
    _\markup {\circle \small { 2'09'' } }
    \finecorona
    
    \notavisibile
    \iniziocorona \bar "'" 
    \mark \markup {\circle \large { 2'10'' } }
    c'4^\boccaaperta\mf\< b4 g4 b4\p
    \notainvisibile
    d'4_\aspirarest
    _\markup {\circle \small { 2'13'' } }
    \finecorona
    
    \notavisibile
    \iniziocorona \bar "'" 
    \mark \markup {\circle \large { 2'15'' } }
    c'4^\boccaaperta\p\< b4 g4 b4^\markup{stop legato}\pp
    \finecorona
    
    \break
    
    
    
    
    % UN SOLO RIGO
    \stopStaff \rigo \startStaff
    \override Staff.Clef.color = #white
    \override Staff.Clef.layer = #-1 
    
    \notainvisibile
    \bar "'" 
    \mark \markup {\circle \large { 2'19'' } }
    c''4_\scenequattro
    
    
    \iniziocorona \bar "'" 
    \mark \markup {\circle \large { 2'20'' } }
    b'4_\trigs^\aspirarect^\boccachiusa
    \finecorona
    
    \iniziocorona \bar "'" 
    \mark \markup {\circle \large { 2'24'' } }
    b'4^\espirarect^\boccachiusa
    \finecorona
    
    \iniziocorona \bar "'" 
    \mark \markup {\circle \large { 2'28'' } }
    b'4^\aspirarect^\boccachiusa
    \finecorona
    
    \iniziocorona \bar "'" 
    \mark \markup {\circle \large { 2'32'' } }
    b'4^\espirarect^\boccachiusa
    \finecorona
    
    \break
    
    \iniziocorona \bar "'" 
    \mark \markup {\circle \large { 2'36'' } }
    b'4^\aspirarect
    \finecorona
    
    \notavisibile
    \iniziocorona \bar "'" 
    \mark \markup {\circle \large { 2'37'' } }
    b'4(^\gutturale^\espirarect^\boccachiusa\p\< b'4)\sfz
    \finecorona
    \notainvisibile
    
    \iniziocorona \bar "'" 
    \mark \markup {\circle \large { 2'43'' } }
    b'4^\aspirarect
    \finecorona
    
    \notavisibile
    \iniziocorona \bar "'" 
    \mark \markup {\circle \large { 2'44'' } }
    b'4\sfz(^\gutturale^\espirarect^\boccachiusa b'4)
    \finecorona
    \notainvisibile
    
    \break
    
    \iniziocorona \bar "'" 
    \mark \markup {\circle \large { 2'47'' } }
    b'4^\aspirarect\f_\markup{accelerando...}
    
    \notavisibile
    b'4(^\gutturale^\boccachiusa\ff^\markup{sfz} b'4)
    _\markup {\circle \small { 2'48'' } }
    \notainvisibile
    
    b'4^\aspirarect\ff
    
    \notavisibile
    b'4(^\gutturale^\boccachiusa\fff^\markup{sfz} b'4)
    _\markup {\circle \small { 2'52'' } }
    \notainvisibile
    
    b'4^\aspirarect\fff
    \finecorona
    
    % PAGINA A CAPO
    \pageBreak
    
    
    
    
    \bar "'"
    \mark \markup {\circle \large { 2'55'' } }
    c''4_\scenecinque
    
    
    \iniziocorona \bar "'" 
    \mark \markup {\circle \large { 2'56'' } }
    \notavisibile
    b'4(_\trigs^\gutturale^\boccachiusa\mf^\markup{disperato} b'4)
    \notainvisibile
    b'4^\aspirarect
    _\markup {\circle \small { 2'59.5'' } }
    \finecorona
    
    \iniziocorona \bar "'" 
    \mark \markup {\circle \large { 3'00'' } }
    \notavisibile
    b'4(^\boccachiusa\mf b'4)
    \notainvisibile
    b'4^\aspirarect
    _\markup {\circle \small { 3'05'' } }
    \finecorona
    
    \break
    
    \iniziocorona \bar "'" 
    \mark \markup {\circle \large { 3'06'' } }
    \notavisibile
    b'4(^\gutturale^\boccachiusa^\markup{spezzando il suono}^\sfz^\<
    \notainvisibile
    b'4^\!^\>^\morph 
    \notavisibile
    b'4)^\pianto^\boccaaperta\!
    \finecorona
    
    \iniziocorona \bar "'" 
    \mark \markup {\circle \large { 3'16'' } }
    \notavisibile
    b'4(^\pianto^\boccaaperta b'4)
    \finecorona
    
    \break 
    
    \iniziocorona \bar "'" 
    \mark \markup {\circle \large { 3'24'' } }
    \notavisibile
    b'4(^\pianto^\boccaaperta^\sfz^\<
    \notainvisibile
    b'4^\!^\>^\morph 
    \notavisibile
    b'4)^\risata^\boccaaperta\!
    \finecorona
    
    \iniziocorona \bar "'" 
    \mark \markup {\circle \large { 3'32'' } }
    \notavisibile
    b'4(^\boccaaperta^\risata b'4)
    \finecorona
    
    % PAGINA A CAPO
    \pageBreak
    
    
    
    
    \bar "'"
    \mark \markup {\circle \large { 3'38'' } }
    \notainvisibile
    c''4_\scenesei
    \notavisibile
    % stanghe note ON
    \stemOn
    
    
    \iniziocorona \bar "'" 
    \repeat percent 16
    \repeat tremolo 4 b'8
    _\trigs^\markup{\fontsize #2 \circle {T}}
    _\markup {\circle \small { 3'38.5'' } }
    ^\markup{ritmo accelerando...}^\<
    \repeat percent 16
    \repeat tremolo 4 b'16
    ^\markup{\fontsize #1 \circle {TR}}
    _\markup {\circle \small { 3'47'' } }
    \repeat tremolo 8 b'32
    ^\markup{\fontsize #2 \circle {R}}
    ^\!^\markup{...fino a suono continuo...}
    \stemOff \notainvisibile b'4^\aspirarect
    _\markup {\circle \small { 3'49'' } }
    \notavisibile \stemOn
    \finecorona
    
    \break
    
    \iniziocorona \bar "'" 
    \mark \markup {\circle \large { 3'50'' } }
    \repeat percent 16
    \repeat tremolo 4 b'32(
    ^\markup{\fontsize #2 \circle {R}}
    _\markup{...}
    \repeat percent 16
    \repeat tremolo 4 b'32
    ^\markup{\fontsize #1 \circle {TR}}
    \repeat tremolo 8 b'32)
    ^\markup{\fontsize #2 \circle {R}}
    \stemOff \notainvisibile b'4^\aspirarect 
    _\markup {\circle \small { 3'59.5'' } }
    \notavisibile \stemOn
    \finecorona
    
    \break
    
    \iniziocorona \bar "'" 
    \mark \markup {\circle \large { 4'00'' } }
    \stemOff 
    b'4(^\markup{\fontsize #2 \circle {IIN}}\sfz
    \stemOn
    \repeat percent 16
    \repeat tremolo 4 b'32)(
    ^\markup{\fontsize #2 \circle {R}}
    _\markup {\circle \small { 4'01'' } }
    \stemOff 
    b'4)(^\markup{\fontsize #2 \circle {IIN}}\sfz
    _\markup {\circle \small { 4'07'' } }
    b'4)^\markup{\fontsize #2 \circle {N}}\sfz
    \stemOff \notainvisibile b'4^\aspirarect 
    _\markup {\circle \small { 4'09.5'' } }
    \notavisibile \stemOn
    \finecorona
    
    \break
    
    \iniziocorona \bar "'" 
    \mark \markup {\circle \large { 4'10'' } }
    \stemOff 
    b'4(^\markup{\fontsize #2 \circle {III}}\sfz
    \stemOn
    \repeat tremolo 4 b'32)(
    ^\markup{\fontsize #2 \circle {R}}
    \stemOff 
    b'4)(^\markup{\fontsize #2 \circle {IIN}}\sfz
    b'4)^\markup{\fontsize #2 \circle {N}}\sfz
    \stemOff \notainvisibile b'4^\aspirarect 
    _\markup {\circle \small { 4'15'' } }
    \notavisibile \stemOn
    \finecorona
    
    \iniziocorona \bar "'" 
    \mark \markup {\circle \large { 4'16'' } }
    \stemOff 
    b'4(^\markup{\fontsize #2 \circle {INN}}\sfz
    \stemOn
    \repeat percent 4
    \repeat tremolo 4 b'32)(
    ^\markup{\fontsize #2 \circle {PRR}}
    _\markup {\circle \small { 4'17'' } }
    \stemOff 
    b'4)(^\markup{\fontsize #2 \circle {IIN}}\sfz
    _\markup {\circle \small { 4'18'' } }
    b'4)^\markup{\fontsize #2 \circle {C}}\sfz
    \stemOff \notainvisibile b'4^\aspirarect 
    _\markup {\circle \small { 4'21'' } }
    \notavisibile \stemOn
    \finecorona
    
    \break
    
    \iniziocorona \bar "'" 
    \mark \markup {\circle \large { 4'22'' } }
    \stemOff 
    b'4(^\markup{\fontsize #2 \circle {SC}}\sfz
    b'4)(^\markup{\fontsize #2 \circle {CZ}}\sfz
    b'4)^\markup{\fontsize #2 \circle {Z}}\sfz
    \stemOff \notainvisibile b'4^\aspirarect 
    _\markup {\circle \small { 4'29.5'' } }
    \notavisibile \stemOn
    \finecorona
    
    \iniziocorona \bar "'" 
    \mark \markup {\circle \large { 4'30'' } }
    \stemOff 
    b'4(^\markup{\fontsize #2 \circle {IN}}\sfz
    b'4)(^\markup{\fontsize #2 \circle {PRI}}\sfz
    b'4)^\markup{\fontsize #2 \circle {NCI}}\sfz
    \stemOff \notainvisibile b'4^\aspirarect 
    _\markup {\circle \small { 4'37'' } }
    \notavisibile \stemOn
    \finecorona
    
    \break
    
    \iniziocorona \bar "'" 
    \mark \markup {\circle \large { 4'38'' } }
    \stemOff 
    b'4(^\markup{\fontsize #2 \circle {IN}}\sfz
    b'4)(^\markup{\fontsize #2 \circle {PRI}}\sfz
    b'4)(^\markup{\fontsize #2 \circle {I}}\sfz
    b'4)(^\markup{\fontsize #2 \circle {NCI}}\sfz
    b'4)(^\markup{\fontsize #2 \circle {I}}\sfz
    b'4)(^\markup{\fontsize #2 \circle {PIO}}\sfz
    b'4)^\markup{\fontsize #2 \circle {O!}}\sfz
    \finecorona
    
    % PAGINA A CAPO
    \pageBreak
    
    
    
    
    % stanghe note OFF
    \notainvisibile
    \stemOff
    
    \bar "'" 
    \mark \markup {\circle \large { 4'48'' } }
    c''4_\markup{\small {fino a saturazione}}\<_\scenesette
    
    
    \bar "'" 
    \mark \markup {\circle \large { 5'08'' } }
    c''4_\markup{\small {fino a silenzio}}\!\>_\sceneotto
    
    
    \bar "'" 
    \mark \markup {\circle \large { 5'28'' } }
    b'4\!_\freeze_\markup{svuota le 40 memorie}
    
    
    \break
    
    \bar "'"
    \mark \markup {\circle \large { 5'29'' } }
    \notainvisibile
    c''4_\scenenove
    \notavisibile
    
    \iniziocorona \bar "'" 
    \mark \markup {\circle \large { 5'30'' } }
    \stemOff 
    b'4^\markup{\fontsize #2 \circle {IN}}
    b'4^\markup{\fontsize #2 \circle {PRI}}
    b'4^\markup{\fontsize #2 \circle {NCI}}
    b'4(^\markup{\fontsize #2 \circle {PIO}}
    b'4)(^\markup{\fontsize #2 \circle {O}}^\espirarect
    _\markup {\circle \small { 3'38'' } }
    \notainvisibile b'4)^\espirarect \notavisibile
    \finecorona
    
    \break
    
    \notainvisibile
    \iniziocorona \bar "'" 
    \mark \markup {\circle \large { 5'44'' } }
    b'4^\aspirarect^\boccachiusa_\trigs\mf
    \finecorona
    
    \iniziocorona \bar "'" 
    \mark \markup {\circle \large { 5'48'' } }
    b'4^\espirarect^\boccachiusa
    \finecorona
    
    \iniziocorona \bar "'" 
    \mark \markup {\circle \large { 5'52'' } }
    b'4^\aspirarect^\boccachiusa
    \finecorona
    
    \iniziocorona \bar "'" 
    \mark \markup {\circle \large { 5'56'' } }
    b'4^\espirarect^\boccachiusa_\trigstop
    \finecorona
    
    \break
    
    \bar "'" 
    \mark \markup {\circle \large { 6'00'' } }
    c''4_\markup{\small {fino a saturazione}}\<_\scenedieci
    
    
    \bar "'" 
    \mark \markup {\circle \large { 6'10'' } }
    c''4_\markup{\small {fino a silenzio}}\!\>_\sceneundici
    
    
    \bar "'" 
    \mark \markup {\circle \large { 6'30'' } }
    b'4\!_\freeze_\markup{svuota le 40 memorie}
    
    
    % PAGINA A CAPO
    \pageBreak
    
    
    
    
    % PENTAGRAMMA
    \stopStaff \pentagramma \startStaff
    \override Staff.Clef.color = #black
    \override Staff.Clef.layer = #1
    
    \notainvisibile
    \bar "'"
    \mark \markup {\circle \large { 6'31'' } }
    d'4_\scenedodici\!
    
    
    \notavisibile
    \iniziocorona \bar "'" 
    \mark \markup {\circle \large { 6'32'' } }
    cis'4^\boccaaperta\< cis'4\p_\trigs
    \notainvisibile
    d'4_\aspirarest
    _\markup {\circle \small { 6'38'' } }
    \finecorona
    
    \notavisibile
    \iniziocorona \bar "'"
    \mark \markup {\circle \large { 6'40'' } }
    cis'4^\boccaaperta\p\< fis'4 f'4 gis'4\mf
    \notainvisibile
    d'4_\aspirarest
    _\markup {\circle \small { 6'46'' } }
    \finecorona
    
    \notavisibile
    \iniziocorona \bar "'" 
    \mark \markup {\circle \large { 6'48'' } }
    cis'4^\boccaaperta\mf\< fis'4 f'4 gis'4^\gutturale\f
    \notainvisibile
    d'4_\aspirarest
    _\markup {\circle \small { 6'54'' } }
    \finecorona
    
    \notavisibile
    \iniziocorona \bar "'" 
    \mark \markup {\circle \large { 6'56'' } }
    cis'4^\boccaaperta\f fis'4 f'4 gis'4
    \notainvisibile
    d'4_\aspirarest
    _\markup {\circle \small { 7'07'' } }
    \finecorona
    
    \break
    
    \notavisibile
    \iniziocorona \bar "'" 
    \mark \markup {\circle \large { 7'08'' } }
    cis'4^\boccaaperta\ff fis'4 f'4 gis'4
    \notainvisibile
    d'4_\aspirarest
    _\markup {\circle \small { 7'09.5'' } }
    \finecorona
    
    \notavisibile
    \iniziocorona \bar "'" 
    \mark \markup {\circle \large { 7'10'' } }
    cis'4^\scream^\boccaaperta\fff fis'4 f'4 gis'4 fis'4 f'4 d'4 c'4
    _\trigstop
    \notainvisibile
    d'4_\aspirarest
    _\markup {\circle \small { 7'20'' } }
    \finecorona
    
    \break
    
    % UN SOLO RIGO
    \stopStaff \rigo \startStaff
    \override Staff.Clef.color = #white
    \override Staff.Clef.layer = #-1 
    
    \notainvisibile
    \bar "'" 
    \mark \markup {\circle \large { 7'22'' } }
    c''4_\markup{lascia il freeze suonare;}
    _\markup{il performer nel mentre esce dal palco}
    
    
    \break
    
    \bar "'" 
    \mark \markup {\circle \large { 7'52'' } }
    b'4_\scenedodicib_\markup{\large {stop immediato dopo 30'' circa}}
    % FINE
    \bar "|."
    
    }

}

