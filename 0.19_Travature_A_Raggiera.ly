% Travature a raggiera (Gradually Speed UP-and-DOWN)

% versione lilypond
\version "2.18.2"

\override Beam.grow-direction = #LEFT
\featherDurations #(ly:make-moment 2/1)
{ c16[ c c c c c c c] }
\override Beam.grow-direction = #RIGHT
\featherDurations #(ly:make-moment 2/3)
{ c32[ d e f] }
% ripristina le travature normali
\override Beam.grow-direction = #'()
{ g32[ a b c] }