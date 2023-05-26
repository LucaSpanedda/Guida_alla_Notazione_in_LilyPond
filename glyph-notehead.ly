\version "2.22.2"


glyph = {
 \once \override NoteHead  #'stencil = #ly:text-interface::print
 \once \override NoteHead #'text =
   \markup {
     \general-align #Y #CENTER {
       % https://lilypond.org/doc/v2.22/Documentation/notation/the-emmentaler-font
      \musicglyph "noteheads.s0laFunk" 
     }
   }
 }
 
{ e'4 f' \glyph g' c'  g' \glyph c'  }