% versione lilypond
\version "2.18.2"

% definisco qui le proprietà grafiche del cluster
standard-cluster =

#(ly:make-stencil (list 'embedded-ps
"gsave
currentpoint translate
newpath
0 0.01 moveto
1 0.51 lineto
1 -0.01 lineto
0 -0.51 lineto
closepath
fill
grestore")
  (cons 0 1)
  (cons 0 0))



% inizio vero e proprio della scrittura
% relativo a c'' 
<<
  \relative c''
  % tempo in 8/8
  {\time 8/8 
   
   % scrivo due silenzi di durata 2 (tot. una battuta)
   s2 s2
   
   % elimino lo spazio tra le note che vado a scrivere in partitura
   % valido per questa sezione di accordi
  \override NoteHead #'X-offset = #0
  
% scrivo accordi usando il cluster
\override NoteHead #'stencil = \standard-cluster
<c d e f g>2
}


    % seconda parte della partitura; in polifonia
    \\ 
    

% relativo a c'
\relative c'
  % non è necessario riscrivere il tempo
  {
   
   % elimino lo spazio tra le note che vado a scrivere in partitura
   % valido per questa sezione di accordi
  \override NoteHead #'X-offset = #0
  
% scrivo accordi usando il cluster
\override NoteHead #'stencil = \standard-cluster
<f g a b c d>1

% scrivo silenzio di durata 1/4
   s4

% scrivo accordi usando il cluster
\override NoteHead #'stencil = \standard-cluster
<f g a>2

}
>>



