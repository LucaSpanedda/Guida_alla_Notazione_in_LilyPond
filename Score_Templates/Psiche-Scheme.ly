% VERION (for future compatibility)
\version "2.22.2"

% GLOBAL PARAMETERS
#(set-default-paper-size "a3landscape")
date = #(strftime "%d-%m-%Y" (localtime (current-time))) 


% PARAMETRI
glissandoSkipOn = 
{
  \override NoteColumn.glissando-skip = ##t
  \hide NoteHead
  \override NoteHead.no-ledgers = ##t
}
iniziocorona = \set Score.repeatCommands = #'((volta #f) (volta "") end-repeat)
finecorona = \set Score.repeatCommands = #'((volta #f))
stemOff = \hide Staff.Stem 
stemOn  = \undo \stemOff
rigo = \override Staff.StaffSymbol.line-count = #1
pentagramma = \revert Staff.StaffSymbol.line-count
iniziocorona = \set Score.repeatCommands = #'((volta #f) (volta "") end-repeat)
finecorona = \set Score.repeatCommands = #'((volta #f))
notainvisibile = \override Voice.NoteHead.color = #white
notavisibile = \override Voice.NoteHead.color = #black
gamboinvisibile = \stemOff 
gambovisibile = \stemOn


    \score 

{\new StaffGroup
 <<

% TIMER ---------------------------------------------------------------------

\new Staff 
\with { instrumentName = "" \remove "Time_signature_engraver" } 
    {
    \cadenzaOn
    % UN SOLO RIGO
    \stopStaff \rigo \startStaff
    \override Staff.Clef.color = #white
    \override Staff.Clef.layer = #-1
    
    % stanghe note OFF
    \stemOff 
    
    \notainvisibile
    \bar "|" s4    % 0'' !!!!
    
    \bar "|" \mark" __ " s4
    
    \bar "|" \mark" __ " s4

    \bar "|" \mark" __ " s4
    
    \bar "|" \mark" __ " s4
    
    \pageBreak 
    
    \bar "|" \mark" __ " s4
    
    }

% ------------------------------------------------------------------------------


% SOLO VOICE ---------------------------------------------------------------------

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

    \bar "|" s4
    
    \bar "|" s4
    
    \bar "|" s4

    \bar "|" s4
    
    \bar "|" s4
    
    \bar "|" 
    
    \pageBreak 
    
    }

% ------------------------------------------------------------------------------


% MALE VOICES ---------------------------------------------------------------------

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

    \bar "|" s4
    
    \bar "|" s4
    
    \bar "|" s4

    \bar "|" s4
    
    \bar "|" s4
    
    \bar "|" 
    
    \pageBreak   
    
    }

% ------------------------------------------------------------------------------


% FEMALE VOICES ---------------------------------------------------------------------

\new Staff 
\with { instrumentName = "Female Voices" \remove "Time_signature_engraver" } 
    {
    \cadenzaOn
    % UN SOLO RIGO
    \stopStaff \rigo \startStaff
    \override Staff.Clef.color = #white
    \override Staff.Clef.layer = #-1
    
    % stanghe note OFF
    \stemOff 

    \bar "|" s4
    
    \bar "|" s4
    
    \bar "|" s4

    \bar "|" s4
    
    \bar "|" s4
    
    \bar "|" 
    
    \pageBreak  
    
    }

% ------------------------------------------------------------------------------


% WIND INSTRUMENT ---------------------------------------------------------------------

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
    
    \bar "|" s4
    
    \bar "|" s4
    
    \bar "|" s4

    \bar "|" s4
    
    \bar "|" s4
    
    \bar "|" 
    
    \pageBreak  
    
    }

% ------------------------------------------------------------------------------

 >>
}



\header 
{
tagline = 
"| website: https://lucaspanedda.github.io/ | 
 | e-mail: lucaspanedda1995@gmail.com |" 
}