\version "2.22.2"

sym = {
 \once \override NoteHead  #'stencil = #ly:text-interface::print
 \once \override NoteHead #'text =
   \markup {
     \general-align #Y #CENTER {
       \epsfile #X #4 #"sym.eps"
     }
   }
 }
 
 normNH = \revert NoteHead.stencil
 
{ e'4 f' \sym g' c'  \normNH  g' c'  }