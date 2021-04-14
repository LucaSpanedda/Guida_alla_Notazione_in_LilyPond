% GRUPPI IRREGOLARI


% per indicare un gruppo irregolare, bisogna porre prima delle parentesi
% (parentesi delle note interessate da scrivere nel gruppo irregolare)
% la indicazione: \tuplet 
% seguita da numeratore gruppo irregolare/ divisore gruppo irregolare

\relative c' \tuplet 3/2{c8 c8 c8} \tuplet 3/4{d8 d8 d8} {c8 [c8 c8 c8]} \tuplet 2/3{c'4 c'4}
\relative c' \tuplet 3/4{c8 c8 \tuplet 6/2 {c8 c8 \tuplet 6/4{c8 c8 c8}}}
\tuplet 7/4{c'8 d'8 e'8 c'8 d'8 e'8 a'8}