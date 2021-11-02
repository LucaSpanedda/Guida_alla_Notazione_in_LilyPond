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
