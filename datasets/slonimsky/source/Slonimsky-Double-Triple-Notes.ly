\version "2.18.2"
global = {
  \accidentalStyle modern
  
}

% umpteenth score, gonna be great

% designate the title, composer and poet!
  \header {
    title = \markup { \fontsize #0.4 \bold "Slonimsky: Doube and Triple Notes" }
    subtitle = "updated june 27"
    composer = "Nathan Turczan"
  }

%designate language
\language "english"
%english-qs-qf-tqs-tqf

aa = \relative c' {
  \global
  \clef treble
  \time 4/4
  <<
     {
       \voiceOne
       e4 a4 d2
       }
     \new Voice  \relative c'
     {
       \voiceTwo
       c4 f4 b4 g4
     }
     >>
  
}


ba = \relative c' {
  \global
  \clef treble
  \time 4/4
  <<
     {
       \voiceOne
       d'4 b4 g'4 e4
       }
     \new Voice  \relative c'
     {
       \voiceTwo
       c4 a'4 f2
     }
     >>
  
}



ca = \relative c' {
  \global
  \clef treble
  \time 4/4
  <<
     {
       \voiceOne
       d'4 e4 b4 g'4
       }
     \new Voice  \relative c'
     {
       \voiceTwo
       c4 f4 a2
     }
     >>
   
}


da = \relative c' {
  \global
  \clef treble
  \time 4/4
  <<
     {
       \voiceOne
       a'4 e'4 d4 g4
       }
     \new Voice  \relative c'
     {
       \voiceTwo
       c4 f4 b2
     }
     >>
  
}


ea = \relative c'' {
  \global
  \clef treble
  \time 4/4
  <<
     {
       \voiceOne
       g'4 d4 a4 b4
       }
     \new Voice  \relative c'
     {
       \voiceTwo
       c4 e4 f2
     }
     >>
  
}


fa = \relative c' {
  \global
  \clef treble
  \time 4/4
  <<
     {
       \voiceOne
       d4 a'4 e'4 f,4
       }
     \new Voice  \relative c'
     {
       \voiceTwo
       c4 b4 g2
     }
     >>
  
}


ga = \relative c' {
  \global
  \clef treble
  \time 4/4
  <<
     {
       \voiceOne
       e'4 a,4 b4 d4
       }
     \new Voice  \relative c'
     {
       \voiceTwo
       c4 f4 g,2
     }
     >>
  
}

ha = \relative c' {
  \global
  \clef treble
  \time 4/4
  <<
     {
       \voiceOne
       b'4 e4 a4 d,4
       }
     \new Voice  \relative c'
     {
       \voiceTwo
       c4 g'4 f2
     }
     >>
  
}


ia = \relative c' {
  \global
  \clef treble
  \time 4/4
  <<
     {
       \voiceOne
       e'4 b4 a4 g'4
       }
     \new Voice  \relative c'
     {
       \voiceTwo
       c4 d4 f2
     }
     >>
  
}


ja = \relative c' {
  \global
  \clef treble
  \time 3/4
  <<
     {
       \voiceOne
       b'4 e2
       }
     \new Voice  
     {
       \voiceTwo
       g,4 a( d,)
     }
     \new Staff {
       \clef bass
       c,4 f,2
       
       
       
     }
     >>
  
}


ka = \relative c' {
  \global
  \clef treble
  \time 3/4
  <<
     {
       \voiceOne
       e'4 b' f
       }
     \new Voice  
     {
       \voiceTwo
       d, a'2
     }
     \new Staff {
       \clef bass
       
       c,4 g2
       
       
       
     }
     >>
  
}


la = \relative c' {
  \global
  \clef treble
  \time 3/4
  <<
     {
       \voiceOne
       d''4 b( a)
       }
     \new Voice  
     {
       \voiceTwo
       e4 g2
     }
     \new Staff {
       \clef bass
       
       c,,4 f2
       
       
     }
     >>
  
}




\book{
  
\score {
  <<
    \new Staff = "aa" \aa
  >>
  \layout {
    \context { \Staff \RemoveEmptyStaves  }
  }
  \midi { 
    \tempo 4 = 90
    \context {
      \Score
      midiChannelMapping = #'instrument
    }
  }
}
\score {
  <<
    \new Staff = "ba" \ba
  >>
  \layout {
    \context { \Staff \RemoveEmptyStaves  }
  }
  \midi { 
    \tempo 4 = 90
    \context {
      \Score
      midiChannelMapping = #'instrument
    }
  }
}
\score {
  <<
    \new Staff = "ca" \ca
  >>
  \layout {
    \context { \Staff \RemoveEmptyStaves  }
  }
  \midi { 
    \tempo 4 = 90
    \context {
      \Score
      midiChannelMapping = #'instrument
    }
  }
}
\score {
  <<
    \new Staff = "da" \da
  >>
  \layout {
    \context { \Staff \RemoveEmptyStaves  }
  }
  \midi { 
    \tempo 4 = 90
    \context {
      \Score
      midiChannelMapping = #'instrument
    }
  }
}
\score {
  <<
    \new Staff = "ea" \ea
  >>
  \layout {
    \context { \Staff \RemoveEmptyStaves  }
  }
  \midi { 
    \tempo 4 = 90
    \context {
      \Score
      midiChannelMapping = #'instrument
    }
  }
}
\score {
  <<
    \new Staff = "fa" \fa
  >>
  \layout {
    \context { \Staff \RemoveEmptyStaves  }
  }
  \midi { 
    \tempo 4 = 90
    \context {
      \Score
      midiChannelMapping = #'instrument
    }
  }
}
\score {
  <<
    \new Staff = "ga" \ga
  >>
  \layout {
    \context { \Staff \RemoveEmptyStaves  }
  }
  \midi { 
    \tempo 4 = 90
    \context {
      \Score
      midiChannelMapping = #'instrument
    }
  }
}
\score {
  <<
    \new Staff = "ha" \ha
  >>
  \layout {
    \context { \Staff \RemoveEmptyStaves  }
  }
  \midi { 
    \tempo 4 = 90
    \context {
      \Score
      midiChannelMapping = #'instrument
    }
  }
}
\score {
  <<
    \new Staff = "ia" \ia
  >>
  \layout {
    \context { \Staff \RemoveEmptyStaves  }
  }
  \midi { 
    \tempo 4 = 90
    \context {
      \Score
      midiChannelMapping = #'instrument
    }
  }
}
\score {
  <<
    \new Staff = "ja" \ja
  >>
  \layout {
    \context { \Staff \RemoveEmptyStaves  }
  }
  \midi { 
    \tempo 4 = 90
    \context {
      \Score
      midiChannelMapping = #'instrument
    }
  }
}
\score {
  <<
    \new Staff = "ka" \ka
  >>
  \layout {
    \context { \Staff \RemoveEmptyStaves  }
  }
  \midi { 
    \tempo 4 = 90
    \context {
      \Score
      midiChannelMapping = #'instrument
    }
  }
}
\score {
  <<
    \new Staff = "la" \la
  >>
  \layout {
    \context { \Staff \RemoveEmptyStaves  }
  }
  \midi { 
    \tempo 4 = 90
    \context {
      \Score
      midiChannelMapping = #'instrument
    }
  }
}


}
