\version "2.18.2"
global = {
  \accidentalStyle modern
  
}

% umpteenth score, gonna be great

% designate the title, composer and poet!
  \header {
    title = \markup { \fontsize #0.4 \bold "Slonimsky: Pandiatonic Counterpoint" }
    subtitle = "updated march 2"
    composer = "Nathan Turczan"
  }

%designate language
\language "english"
%english-qs-qf-tqs-tqf


upper = \relative c'' {
  \global
  \clef treble
   \time 9/2
  \key c \major 

     \relative c' 
       
       
       e2^\markup "1" g c d, a' b, f' c1 \bar "||"
       c'2^\markup "2" b a g f e d c1 \bar "||"
       g'2^\markup "3" d' f e a, c b c1 \bar "||"
       c2^\markup "4" b a g f e d c1 \bar "||"
       c''2^\markup "5" b e, a d, f g, c1 \bar "||"
       c,2^\markup "6" d e f g a b c1 \bar "||"
       c,2^\markup "7" b' g a e f d c'1 \bar "||"
       c,2^\markup "8" d e f g a b c1 \bar "||"
       <<
       {
       \voiceOne 
       a2^\markup "9" d g c, e f b, c1 \bar "||"
       c2^\markup "10" b a g f e d c1 \bar "||"
       a''2^\markup "11" c, b g' d f e c1 \bar "||"
       c,2^\markup "12" d e f g a b c1 \bar "||"
       g2 a b c d e f g e1
       g,2 a b c d e f g e1
       d2 c b a g f e d c b a g2~ g1
       g'2 a b c d e f g e1
       }
       
       \new Voice  {
       \voiceTwo
       d,2 e b' a c, g' f c1
       \skip 1
       \skip 1
       \skip 1
       \skip 1.
       
       f2 g a e' c b d, c1
       \skip 1
       \skip 1
       \skip 1
       \skip 1.
       d2 e f g a b c d c1
       d,2 e f g a b c d c1
       a2 g f e d c b a g f e d e1
       d'2 e f g a b c d c1
     }
       >>

       }




lower = \relative c' {
\global
\clef bass

  \key c \major
  
  c2 b a g f e d c1
  c'2 g d' e, b' c, f a1
  c2 b a g f e d c1
  c2 d c e a, g b f'1
  c2 d e f g a b c1
  c,2 f g, b e, a d, c1
  c'2 d e f g a b c1
  c,2 b' g a e f d c'1
  c2 b a g f e d c1
  <c c'>2 <d g> <g, f'> <a c'> <c e> <f, d'> <b a'> <e b'>1
  c2 d e f g a b c1
  <c, c'>2 <a b'> <g d'> <b c> <f a> <d' e> <c f> <e, g'>1
  \time 10/2
  b'2 c d e f g a b c1
       <<
       {
       \voiceOne
       g2 c b e d g f b a1 
       }
       
       \new Voice  {
       \voiceTwo
       b,,2 c d e f g a b c1
       }
       >>
  \time 14/2
  f2 e d c b a g f e d c b c1
  \time 10/2
<<
       {
       \voiceOne
       b'2 a d c f e a g c1
       }
       
       \new Voice  {
       \voiceTwo
       b,,2 c d e f g a b c1
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
    \tempo 4 = 200
  }
}
