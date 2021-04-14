% RITMO


% VALORE DI DURATA DELLE NOTE

% In Lilypond il valore di durata delle note musicali viene indicato in forma di numero,
% e posto a seguito della nota e la sua indicazione d'ottava:

{c'1}


% Il numero a seguito della nota:
% 1 indica la semibreve
% 2 la minima
% 4 la semiminima
% 8 la croma
% 16 la semicroma
% 32 la biscroma
% 64 la semibiscroma
% 128 la fusa
% 256 la semifusa (non presente in lilypond)

{d1 e1 f1 g1 a1 b1 c1 c2 c4 c8 c16 c32 c64 c128}


% mentre:
% \longa (quattro battute)  e \breve (due battute) richiedono la notazione speciale indicata:

{c\longa c\breve}



% VALORE DI DURATA DELLE PAUSE

%le pause utilizzano gli stessi valori numerici delle note aggiungendo però prima della notazione: r

{r1 r2 r4 r8 r16 r32 r64 r128}

{r\longa r\breve}

