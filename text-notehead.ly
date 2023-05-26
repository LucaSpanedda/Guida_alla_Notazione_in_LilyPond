\version "2.22.2"

textA = {
 \once \override NoteHead  #'stencil = #ly:text-interface::print
 \once \override NoteHead #'text =
   \markup {
     \general-align #Y #CENTER {
       A
     }
   }
 }
 
textB = {
 \once \override NoteHead  #'stencil = #ly:text-interface::print
 \once \override NoteHead #'text =
   \markup {
     \general-align #Y #CENTER {
       B
     }
   }
 }
 
{ e'4 f' \textA g' c'  g' \textB c'  }