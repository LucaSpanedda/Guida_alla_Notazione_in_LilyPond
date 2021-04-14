% ALTERAZIONI
 
 
% le alterazioni in lilypond vanno aggiunte a seguito della nota
% l'ordine da rispettare è: nome della nota, alterazione, ottava, valore
% il bequadro invece deve essere posto: nota, ottava, alterazione, valore


% SCHEMA:

% is = diesis
% es = bemolle
% ! =  bequadro
% ? =  bequadro tra parentesi tonde


{c'1 cis'1 ces'1 c'!1 c'?1}


% sono presenti anche delle alterazioni per il quarto di tono ascendente e discendente:
% (rispettivamente) ih, eh, poste subito a seguito della nota.

{cih''1 ceh''1} 


% se invece si vogliono segnare tre quarti di tono ascendenti o tre discendenti:
% (rispettivamente) isih, eseh, poste subito a seguito della nota.

{cisih''1 ceseh''1}
