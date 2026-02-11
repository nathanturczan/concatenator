\version "2.18.2"
global = {
  \accidentalStyle modern
  
}

% umpteenth score, gonna be great

% designate the title, composer and poet!
  \header {
    title = \markup { \fontsize #0.4 \bold "Slonimsky: Pandiatonic Cadences" }
    subtitle = "updated march 4"
    composer = "Nathan Turczan"
  }

%designate language
\language "english"
%english-qs-qf-tqs-tqf

aa = \relative c'' {
  \global
  \clef treble
  \time 4/4
  <c b'>1 <d a'>1
}

ab = \relative c' {
  \global
  \clef bass
  \time 4/4
  <g f'>1 <c, e'>1
}

ba = \relative c' {
  \global
  \clef treble
  \time 4/4
  <f a>1 <g c>1
}

bb = \relative c {
  \global
  \clef bass
  \time 4/4
  <g' c>1 <c, d'>1
}


ca = \relative c' {
  \global
  \clef treble
  \time 4/4
  <<
       {
       \voiceOne 
       <f e'>2 b2^( a1)
       }
       
       \new Voice  {
       \voiceTwo
       \override Stem.neutral-direction = #up
       \skip 2 e2~ e1
     }
         >>
}
cb = \relative c {
  \global
  \clef bass
  \time 4/4
  <g c'>2 <c g'>2~ <c g'>1
}

da = \relative c' {
  \global
  \clef treble
  \time 4/4
  <d' e>1 <a g'>1
}
db = \relative c {
  \global
  \clef bass
  \time 4/4
  <f g'>1 <c e'>1
}

ea = \relative c' {
  \global
  \clef treble
  \time 4/4
  <a' b>2 <g c>2~ <g c>1 
}
eb = \relative c {
  \global
  \clef bass
  \time 4/4
  <<
       {
       \voiceOne 
       <f c>2 d'2^( e1)
       }
       
       \new Voice  {
       \voiceTwo
       \skip 2 c,2~ c1
     }
         >>
}

fa = \relative c'' {
  \global
  \clef treble
  \time 4/4
  <<
       {
       \voiceOne 
       <b g'>2 e2~ e1
       }
       
       \new Voice  {
       \voiceTwo
       \skip 2 a,2( g1)
     }
         >>
}
fb = \relative c {
  \global
  \clef bass
  \time 4/4
  <f c>2 <c d'>2~ <c d'>1
}

ga = \relative c' {
  \global
  \clef treble
  \time 4/4
  <<
       {
       \voiceOne 
       <e a>2 b'2^( c1)
       }
       
       \new Voice  {
       \voiceTwo
       \skip 2 d,2~ d1
     }
         >>
}
gb = \relative c {
  \global
  \clef bass
  \time 4/4
  <f b>2 <c e>2~ <c e>1
}

ha = \relative c' {
  \global
  \clef treble
  \time 4/4
  <<
       {
       \voiceOne 
       <g' c>2 d'2^( a1)
       }
       
       \new Voice  {
       \voiceTwo
       \skip 2 e2~ e1
     }
         >>
}
hb = \relative c {
  \global
  \clef bass
  \time 4/4
  <f a>2 <c g'>2~ <c g'>1
}

ia = \relative c' {
  \global
  \clef treble
  \time 4/4
  <<
       {
       \voiceOne 
       <e' b'>2 c'2~ c1
       }
       
       \new Voice  {
       \voiceTwo
       \skip 2 d,2( g,1)
     }
         >>
}
ib = \relative c {
  \global
  \clef bass
  \time 4/4
  <f a'>2 <c e'>2~ <c e'>1
}



\book{
  
\score {
  <<
    \new PianoStaff <<
      \new Staff = "aa" \aa
      \new Staff = "ab" \ab
    >>
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
    \new PianoStaff <<
      \new Staff = "ba" \ba
      \new Staff = "bb" \bb
    >>
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
    \new PianoStaff <<
      \new Staff = "ca" \ca
      \new Staff = "cb" \cb
    >>
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
    \new PianoStaff <<
      \new Staff = "da" \da
      \new Staff = "db" \db
    >>
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
    \new PianoStaff <<
      \new Staff = "ea" \ea
      \new Staff = "eb" \eb
    >>
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
    \new PianoStaff <<
      \new Staff = "fa" \fa
      \new Staff = "fb" \fb
    >>
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
    \new PianoStaff <<
      \new Staff = "ga" \ga
      \new Staff = "gb" \gb
    >>
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
    \new PianoStaff <<
      \new Staff = "ha" \ha
      \new Staff = "hb" \hb
    >>
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
    \new PianoStaff <<
      \new Staff = "ia" \ia
      \new Staff = "ib" \ib
    >>
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
