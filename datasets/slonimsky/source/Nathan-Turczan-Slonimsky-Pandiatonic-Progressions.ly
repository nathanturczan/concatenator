\version "2.18.2"
global = {
  \accidentalStyle modern
  
}

% umpteenth score, gonna be great

% designate the title, composer and poet!
  \header {
    title = \markup { \fontsize #0.4 \bold "Slonimsky: Pandiatonic Progressions" }
    subtitle = "updated march2"
    composer = "Nathan Turczan"
  }

%designate language
\language "english"
%english-qs-qf-tqs-tqf


upper = \relative c' {
  \global
  \clef treble
   \time 9/8
   \key c \major 
     
     c8^\markup "1" d e f g a b c4 
     c,8^\markup "2" d' e, f' g, a' b, c,4
     c8^\markup "3" d' e' f, g, a' b, c,4 \break
     c8^\markup "4" d' e, f g' a, b c,4
     c8^\markup "5" d e' f g, a b, c4
     c8^\markup "6" d e f' g, a, b c4 \break
     c'8^\markup "7" b a g f e d c4
     c8^\markup "8" b' a g' f e' d, c,4
     c8^\markup "9" b' a g f' e, d' c,4 \break
     c8^\markup "10" b a' g f' e d, c4
     c8^\markup "11" b a g' f e d' c,4
     c8^\markup "12" b' a, g' f, e' d, c'4 \break
     c8^\markup "13" e f a d b g c,4
     c8^\markup "14" g' f a e b d c4
     c8^\markup "15" b' d, a' e g f c4 \break
     c8^\markup "16" f a d b g e c4
     c8^\markup "17" e g a' f d b c,4
     c8^\markup "18" d f b g' a, e' c,4 \break
     c8^\markup "19" b' g a e' f d c,4 
     c8^\markup "20" b' e a d, f g, c,4
     c8^\markup "21" f e a g d' b c,4 \break
     c8^\markup "22" a' d g b, f e c4
     c8^\markup "23" f b e a, d, g, c4
     c8^\markup "24" f b e a d, g, c,4 \break
     c8^\markup "25" g' d' a' e b f c4
     c8^\markup "26"g d' a' e' b f c4
     c8^\markup "27" e g b d f a c,,4 \break
     c8^\markup "28" a'' f d b g e c4
     c8^\markup "29" a' f' d b g e c4
     c8^\markup "30" a' f d' b g' e c,4 \break
     c8^\markup "31" a' g e' d f b, c,4 
     c8^\markup "32" a' f g b e d c,4
     c8^\markup "33" g e' a f d' b c,4 \break
     c8^\markup "34" g' f b a e' d c,4
     c8^\markup "35" a b a d f e c4
     c8^\markup "36" d e g f a b, c4
}




\score {
  <<
    \new PianoStaff <<
      \new Staff = "upper" \upper
    >>
  >>
  \layout {
    \context { \Staff \RemoveEmptyStaves }
  }
  \midi { 
    \tempo 4 = 200
  }
}