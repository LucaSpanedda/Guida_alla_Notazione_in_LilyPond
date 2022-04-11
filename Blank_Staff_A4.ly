\version "2.9.13"
\header {
  tagline = ""
}
\paper {
  #(set-paper-size "letter")
  top-margin = 0.6\cm
}
emptymusic = {
  \repeat unfold 12 % Change this for more lines.
  { s1\break }
}
\layout { 
  indent = 0.0\cm
  pagenumber = no
}
\new Score \with {
  \override TimeSignature #'transparent = ##t
  \override Clef #'transparent = ##t
  defaultBarType = #""
  \remove Bar_number_engraver
  \remove Clef_engraver
} <<
  \context Staff \emptymusic
>>