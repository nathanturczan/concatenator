\version "2.18.2"
global = {
  \accidentalStyle modern
  
}

% umpteenth score, gonna be great

% designate the title, composer and poet!
  \header {
    title = \markup { \fontsize #0.4 \bold "Slonimsky: 5,6,7 Part Pandiatonic Harmony" }
    subtitle = "updated march 4"
    composer = "Nathan Turczan"
  }

%designate language
\language "english"
%english-qs-qf-tqs-tqf


upper = \relative c'' {
  \global
  \clef treble
   \time 5/2
  \key c \major 
     \relative c'
       <e a d>2 <c, g' e'> <d a' c> <c d g>1
       <a d g>2 <g e' b'> <b d a'> <d g c>1
       <d' g c>2 <a d g> <f a e'> <d e c'>1 \break
       <a' d b'>2 <b e d'> <f e' a> <a d c'>1
       <a b e>2 <e d' g> <d a' e'> <b g' d'>1
       <d b' e>2 <b g' d'> <c e b'> <g d' a'>1 \break
       \time 8/2
       <d' g b e>2 <e b' c g'> <d a' c f> <d f g c> <c f a d> <c e g b> <f e' a>1
       \time 6/2
       <f b e a>2 <e a d g> <f a d e> <e f b> <b d f a>1
       \time 7/2 
       <e b' d a'>2 <d a' f'> <c f b e> <e a d> <c e f b> <d e a>1
       
}

lower = \relative c {
\global
\clef bass
  \key c \major
  <c g'>2 <f, a'> <g f'> <c, e'>1
  <c' e>2 <f, c'> <g f'> <c, e'>1
  <c' e'>2 <f c'> <g b> <c, g'>1 
  <c g' e'>2 <f, c' a'> <g d' b'> <c, g' e'>1
  <c' g' d'>2 <f, c' a'> <g f' b> <c, g' e'>1
  <c a' g'>2 <f c' a'> <g d' f> <c, g' e'>1
  <f c' a'>2 <d a' f'> <g e' b'> <b e a> <e, b' g'> <a d f> <c, g' d' b'>1
  <c' g' d'>2 <c f b> <c g' b> <c g' a d> <c e g>1
  <g f' c>2 <g c e b'> <g d' a'> <g c f b> <g d' a'> <g c f b>1
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
    \tempo 4 = 200
  }
}
