\new Staff 
\with { instrumentName = "Male Voices" \remove "Time_signature_engraver" } 
    {
    \cadenzaOn
    % UN SOLO RIGO
    \stopStaff \rigo \startStaff
    \override Staff.Clef.color = #white
    \override Staff.Clef.layer = #-1
    
    % stanghe note OFF
    \stemOff 

    \bar "|" 
    \notainvisibile
    c''4
    
    \bar "|" 
    \notainvisibile
    c''4
    
    \bar "|" 
    \notavisibile
    b'4(
    _\markup{\italic {asynchronous breathing}}
    _\markup{\italic
      {freely breaking the sound to breathe}}
    ^\respirarect^\boccachiusa\<
    \finecorona

    \bar "|" 
    b'4)(^\respirarect^\boccachiusa\mf\<
    \finecorona
    
    \bar "|" 
    b'4)(^\respirarect^\boccachiusa\f\>
    \finecorona
    
    \bar "|"
    
    \pageBreak  
    
    \bar "|" 
    b'4)(^\respirarect^\boccachiusa\p\>
    \finecorona
    
    \bar "|"
    
    b'4)^\respirarect^\boccachiusa\!
    \finecorona
    
    \bar "|" 
    
    b'4(^\gutturale^\boccachiusa\p\<
    \finecorona
    
    \bar "|" 
    
    b'4)(^\gutturale^\boccachiusa\mf\>
    \finecorona
    
    \bar "|" 
    
    b'4)^\gutturale^\boccachiusa\!
    \finecorona
    
    \bar "|" 
    
    \pageBreak
    
    % PENTAGRAMMA
    \stopStaff \pentagramma \startStaff
    \override Staff.Clef.color = #black
    \override Staff.Clef.layer = #1
    \clef treble
    {
      b'64^"O"\<
      _\markup{\italic {scegliendo liberamente le note}}
      _\markup{\italic {ritmi asincroni}}
      c'64^"A" a'64^"I" d'64^"O" 
      d''64^"U" f'64^"O" c''64^"A" a'64^"O"
      b'64^"I" c'64^"E" a'64^"I" d'64^"U" 
      d''64^"O" f'64^"U" c''64^"E" a'64^"O"\mf
    }
    
    \bar "|" s4
    
    \bar "|" s4

    \bar "|" s4
    
    \bar "|" s4
    
    \bar "|" 
    
    \pageBreak 
    
    \bar "|" s4
    
    \bar "|" s4
    
    \bar "|" s4

    \bar "|" s4
    
    \bar "|" s4
    
    \bar "|" 
    
    \pageBreak 
    
    \bar "|" s4
    
    \bar "|" s4
    
    \bar "|" s4

    \bar "|" s4
    
    \bar "|" s4
    
    \bar "|" 
    
    \pageBreak 
    
    \bar "|" s4
    
    \bar "|" s4
    
    \bar "|" s4

    \bar "|" s4
    
    \bar "|" s4
    
    \bar "|" 
    
    \pageBreak 
    
    \bar "|" s4
    
    \bar "|" s4
    
    \bar "|" s4

    \bar "|" s4
    
    \bar "|" s4
    
    \bar "|" 
    
    \pageBreak 
    
    \bar "|" s4
    
    \bar "|" s4
    
    \bar "|" s4

    \bar "|" s4
    
    \bar "|" s4
    
    \bar "|" 
    
    \pageBreak 
    
    \bar "|" s4
    
    \bar "|" s4
    
    \bar "|" s4

    \bar "|" s4
    
    \bar "|" s4
    
    \bar "|" 
    
    \pageBreak 
    
    \bar "|" s4
    
    \bar "|" s4
    
    \bar "|" s4

    \bar "|" s4
    
    \bar "|" s4
    
    \bar "|" 
    
    
    }