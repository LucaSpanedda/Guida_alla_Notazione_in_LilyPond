\new Staff 
\with { instrumentName = "Wind Instrument" \remove "Time_signature_engraver" } 
    {
    \cadenzaOn
    % UN SOLO RIGO
    \stopStaff \rigo \startStaff
    \override Staff.Clef.color = #white
    \override Staff.Clef.layer = #-1
    
    % stanghe note OFF
    \stemOff 
    
    \notainvisibile
    \bar "|" c''4
    
    \bar "|" \mark" 10'' " c''4
    
    \bar "|" \mark" 20'' " c''4
    
    \notavisibile
    \bar "|" \mark" 30'' " 
    b'4(^\soffio\<
    _\markup{\italic
      {freely breaking the sound to breathe}}
    
    \bar "|" \mark" 40'' " 
    b'4)(^\soffio\mf\>
    _\markup{\italic 
    {going towards ...} \sub{\flatterzungeC} }

    \bar "|" 
    
    \pageBreak 
    
    b'4)(^\flatterzungeC^\soffio\p\<
    
    \bar "|" 
    
    b'4)(^\flatterzungeC^\soffio\f\>
    _\markup{\italic 
    {going towards ...} \sub{\soffio} }
    
    \bar "|"
    
    b'4)(^\soffio\pp\>
    
    \bar "|"
    
    b'4)^\soffio\!
    
    \notainvisibile
    \bar "|" c''4
    \notavisibile
    
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
    
    \pageBreak 
    
    \bar "|" s4
    
    \bar "|" s4
    
    \bar "|" s4

    \bar "|" s4
    
    \bar "|" s4
    
    \bar "|" 
    
    \pageBreak 
    
    \notainvisibile
    \bar "|" c''4
    \notavisibile
    
    }