\new Staff 
\with { instrumentName = "Solo Voice" \remove "Time_signature_engraver" } 
    {
    \cadenzaOn
    % UN SOLO RIGO
    \stopStaff \rigo \startStaff
    \override Staff.Clef.color = #white
    \override Staff.Clef.layer = #-1
    
    % stanghe note OFF
    \stemOff 

    \bar "'"
    b'4(
    _\markup{\italic {synchronous breathing}}
    _\markup{\italic
      {constantly breaking the sound to breathe}}
    ^\respirarect^\boccachiusa\<
    
    \bar "'" 
    b'4)(^\respirarect^\boccachiusa\mf\>
    \finecorona
    
    \bar "'" 
    b'4)(^\respirarect^\boccachiusa\p\>

    \bar "|" 
    b'4)\!
    
    \bar "|" 
    \notainvisibile
    c''4
    
    \bar "|" 
    
    \pageBreak 
    
    \notainvisibile
    \bar "|" c''4
    \notavisibile
    
    \bar "|" 
    
    \notainvisibile
    \bar "|" c''4
    \notavisibile
    
    b'4(
    _\markup{\italic
      {going towards the continuous sound}}
    ^\lowestn^\growl^\boccachiusa
    \finecorona
    
    \bar "|" 
    
    % PENTAGRAMMA
    \stopStaff \pentagramma \startStaff
    \override Staff.Clef.color = #black
    \override Staff.Clef.layer = #1
    \clef treble
    
    cis'4)(
    ^\gutturale^\boccachiusa \<
    \finecorona
    
    \bar "|" 
    
    {<cis') gis'\harmonic>4}
    ^\gutturale^\boccachiusa \mf
    \finecorona
    
    \bar "|" 
    
    \pageBreak

    <cis') cis\harmonic>4
    ^\gutturale^\boccaaperta \mf
    \finecorona
    
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