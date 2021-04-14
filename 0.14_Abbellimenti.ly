% ABELLIMENTI


% In lilypond esiste una lista di possibili abellimenti da mettere in notazione.
% Gli abellimenti hanno una loro struttura nel modo in cui vanno annotati che deve essere rispettata.
% Ecco una lista di alcune tipologie di abellimenti e la loro annotazione:


% Grace = \grace {nota di abbellimento} nota effettiva}
% Acciaccatura = \acciaccatura {nota di abbellimento} nota effettiva}
% Appoggiatura = \appoggiatura {nota di abbellimento} nota effettiva}

% Glissando = {nota di inizio\glissando nota di fine}
% Trillo = {nota di inizio\startTrillSpan nota di fine\stopTrillSpan}
% Pedale Sostegno = {nota di inizio pedale\sustainOn (note) nota di fine pedale\sustainOff}

\relative c''{\grace {c16} g8}
\relative c''{\acciaccatura {c16} g8}
\relative c''{\appoggiatura {c16} g8}
\relative c''{c1\glissando g''1}
\relative c' {c1\startTrillSpan g1\stopTrillSpan}
\relative c' {c1\sustainOn d1 e1 g1\sustainOff}