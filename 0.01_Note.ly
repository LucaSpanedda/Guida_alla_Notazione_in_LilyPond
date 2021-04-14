% NOTE


% In lilypond la scrittura delle note musicali avviene tramite delle parentesi graffa agli estremi.
% Le note possono venire scritte nella notazione anglosassone, una scala sarà quindi:

{c d e f g a b c} 

% Ogni parentesi aperta e chiusa indica un diverso pentagramma.

% Per trasportare la nota un ottava sopra o sotto mettere rispettivamente a seguito della nota,
% un'apostrofo: '  o una virgola: ,  
% L'ottava del do centrale è quella del primo apostrofo (c')

{c' d' e' f' g' a' b' c' c, d, e, f, g, a, b, c,} 

% Per continuare a salire o scendere di ottava, basta continuare ad aggiungere apostrofi o virgole.

{c'' c,, c''' c,,,} 


% Se si vuole specificare un'ottava precisa di partenza nella scrittura, si può usare la sigla: \relative

\relative c'
{c d e f g a b c} 

\relative c,
{c d e f g a b c c d e f g a b c} 

\relative e''                        
{c d e f g a b c} 
%(fa riferimento all'ottava tra il do'' ed il do''')