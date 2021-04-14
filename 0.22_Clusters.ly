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
% (chiave di sol e tempo 4/4)
\relative g' 
{
\time 4/4

% elimino lo spazio tra le note che vado a scrivere in partitura
\override NoteHead #'X-offset = #0
  
% scrivo accordi usando il cluster
\override NoteHead #'stencil = \standard-cluster
<f g a b c d>2

}

