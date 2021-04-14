<<
  \new ChordNames {
    
    % Modalità degli accordi 
    % se ci interessa inserire una notazione scritta
    % sopra ad ogni accordo. - Ex. C Cmaj ecc.
    \chordmode { }

  % Scrittura pentagramma e tab:
  }
  % avvio una nuova chiave
  \new Staff {
    % chiave di violino all'ottava
    \clef "treble_8"
    
    % tra < > inserire le note dell'accordo
    % e il valore di durata a seguito è indicato dal numero ex. 1
    % ^\markup indica che la tablatura è sopra le note
    <c g c' >1^\markup
      % \fret-diagram indica il valore da scrivere sulla tab.
      % #"6-o; indica il valore da scrivere sulla corda
      % in questo caso stiamo dicendo che sulla 6a corda abbiamo O, cioè corda a vuoto.
      % 3-x; indica che sulla terza corda abbiamo X, cioè corda da non suonare.
      % per scrivere su tutte le 6 corde dobbiamo:
      % mettere il cancelletto e aprire le virgolette,
      % scrivere tutte le corde interessate e ogni valore e chiuderle
      % ex. #"6-3;5-3;4-3;3-5;2-5;1-5;"
      {\fret-diagram #"6-o;5-o;4-o;3-x;2-x;1-x;"}
      % i valori sulla tab sono liberi quindi non devono 
      % corrispondere per forza alle note scritte nella partitura
      % in questo modo si è liberi di scrivere sull'accordatura che si preferisce.

      % a seguito,
      % proseguire con la scrittura del secondo accordo con lo stesso metodo:
      <d a d' f'>1^\markup 
      {\fret-diagram #"6-x;5-x;4-o;3-2;2-3;1-1;"}
      
      % e così via...
  }
>>

% schema con tutti i diagrammi Fretboard:
% http://lilypond.org/doc/v2.18/Documentation/notation/predefined-fretboard-diagrams#diagrams-for-guitar