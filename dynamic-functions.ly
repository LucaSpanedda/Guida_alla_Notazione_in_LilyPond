\version "2.22.2"


txt =
#(define-event-function (text) (markup?)
   (make-dynamic-script text))

\relative {
  c'4\txt "dynamic functions"
 \bar "" \break
  c''4\txt "for lilypond"
  \bar "" \break
}
