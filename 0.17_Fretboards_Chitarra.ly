% La scrittura my-tuning seguita da \stringTuning <- - - - - ->
% permette di scegliere le note dell'accordatura personalizzata
% delle corde a vuoto.
% In questo caso usiamo l'accordatura - DROP C
my-tuning = \stringTuning <c, g, c f a d'> 


\layout {
  \context {
    \FretBoards
    % stringTunings = #my-tuning richiama l'accordatura impostata
    % my-tuning è il nome della funzione che abbiamo dato all'accordatura
    % si usa il cancelletto per definire quale funzione.
    stringTunings = #my-tuning
  }
}


<<
\new ChordNames 
  {
    % in chordmode si possono inserire i nomi degli accordi
    % all'interno delle parentesi
    
    \chordmode { %a %c %ecc. Ogni accordo viene 
                   %scritto sopra la tab relativa
                 }
    
  }
  
% \new FretBoards indica una nuova scrittura per Tab in FretBoards
\new FretBoards 

  {
    % ogni accordo viene scritto all'interno delle < >
    % e rappresentato nella relativa Tab 
    % sulla base dell'accordatura scelta
    <c, g, c>1
    <c, ais, c f>1
    <c, g, c>1
    <c, ais, c f>1
    <dis, ais, c>1
    <dis, c >1
    <dis, ais, c>1
    <dis, c >1
  }
  
>>