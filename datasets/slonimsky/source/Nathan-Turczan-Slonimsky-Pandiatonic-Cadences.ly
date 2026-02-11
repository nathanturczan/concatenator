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


upper = \relative c'' {
  \global
  \clef treble
   \time 3/2
  \key c \major 
     \relative c'' 
       <<
       {
       \voiceOne 
       <c b'>2 <d a'>1
       <f, a>2 <g c>1
       <f e'>2 e1
       <d' e>2 <a g'>1
       <a b>2 <g c>1 \break 
       <b g'>2 e1
       <e, a>2 d1
       <g c>2 e1
       <e' b'>2 c'1
       }
       \new Voice  {
       \voiceTwo
       \skip 1.
       \skip 1.
       \skip 2
       b,2^( a)
       \skip 1.
       \skip 1.
       \skip 2
       a2( g)
       \skip 2
       b2^( c)
       \skip 2
       d2^( a)
       \skip2
       d2( g,)
     }
       >>
       }

lower = \relative c' {
\global
\clef bass
  \key c \major
  
         <<
       {
       \voiceOne 
       <g f'>2 <c, e'>1
       <g' c>2 <c, d'>1
       <g c'>2 <c g'>1
       <f g'>2 <c e'>1
       <f c>2 c1
       <f c>2 <c d'>1
       <f b>2 <c e>1
       <f a>2 <c g'>1
       <f a'>2 <c e'>1
       }
       
       \new Voice  {
       \voiceTwo
       \skip 1.
       \skip 1.
       \skip 1.
       \skip 1.
       \skip2
       d'2^( e)
     }
         >>
}


\score {
  <<
    \new PianoStaff <<
      \new Staff = "upper" \upper
      \new Staff = "lower" \lower
    >>
  >>
  \layout {
    \context { \Staff \RemoveEmptyStaves }
  }
  \midi { 
    \tempo 4 = 90
  }
}
