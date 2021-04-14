% Scrittura con \markup
\markup 
{ L'indicazione di markup permette di 
  scrivere un testo slegato dalla partitura }

\markup 
{ In Lilypond una o più note si possono numerare,}

\markup 
{ all'interno di un'accordo definito da < > }

\markup 
{ si può usare una scrittura per definire una numerazione, ad esempio: <c-3 g'-5>1 }

\markup 
{ dove a due note corrispondono due numerazioni, o, }

\markup 
{ si può usare una scrittura tipo <c-3-5-8>1, dove a una nota corrispondono più numeri }

\markup 
{ si può usare questa scrittura per scrivere ad esempio un basso cifrato }

\markup
{ - }

% Scrittura note numerate
\relative c' 
{
  <c-0 g'-0 c-0>1
  <c-3-5-8>1
}