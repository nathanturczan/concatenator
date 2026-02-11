\version "2.18.2"
global = {
  \accidentalStyle modern
  
}

% umpteenth score, gonna be great

% designate the title, composer and poet!
  \header {
    title = \markup { \fontsize #0.4 \bold "Slonimsky: 4-part pandiatonic" }
    subtitle = ""
    composer = "Nathan Turczan"
  }

%designate language
\language "english"
%english-qs-qf-tqs-tqf

aa = \relative c'' {
  \global
  \clef treble
  \time 2/4
  \tuplet 5/4 { <b a'>4 <a c> <g b> <f g'> <e a> } <d c'>1
}

ab = \relative c {
  \global
  \clef bass
  \time 4/4
  \tuplet 5/4 { <d e'>4 <g f'> <c d> <e, b'> <f g> } <c c'>1
}

ba = \relative c'' {
  \global
  \clef treble
  \time 2/4
  \tuplet 5/4 { <g a>4 <f e'> <e c'> <d g> <a c> } <g d'>1
}

bb = \relative c {
  \global
  \clef bass
  \time 4/4
  \tuplet 5/4 { <b d>4 <d c'> <f g> <c a'> <f, e'> } <c e'>1
}


ca = \relative c' {
  \global
  \clef treble
  \time 4/4
  \tuplet 3/2 { <a' g'>2 <g e'> <f a> } <g c>1
}
cb = \relative c {
  \global
  \clef bass
  \time 4/4
  \tuplet 3/2 {<e d'>2 <f c'> <g b> }<c, a'>1
}

da = \relative c'' {
  \global
  \clef treble
  \time 4/4
  \tuplet 3/2 { <g a'>2 <a g'> <b c> } <g e'>1
}
db = \relative c {
  \global
  \clef bass
  \time 4/4
  \tuplet 3/2 {<e d'>2 <f c'> <g f'> }<c d>1
}

ea = \relative c'' {
  \global
  \clef treble
  \time 4/4
  \tuplet 5/4 { <c d>4 <b e> <d c'> <e a> <c b'>} <d g>1 
}
eb = \relative c' {
  \global
  \clef bass
  \time 4/4
  \tuplet 5/4 {<g a>4 <d f> <a g'> <d, f'> <g d'> }<c, e'>1
}

fa = \relative c'' {
  \global
  \clef treble
  \time 4/4
  \tuplet 5/4 { <c, c'>4 <f g> <d a'> <b c> <g f'> } <a b'>1
}
fb = \relative c {
  \global
  \clef bass
  \time 4/4
  \tuplet 5/4 {<c b'>4 <e a> <f, g'> <d' f> <c e> }<e, d'>1
}

ga = \relative c' {
  \global
  \clef treble
  \time 4/4
  \tuplet 5/4 { <a' c'>4 <f g'> <e c'> <f g> <c b'> } <b d>1
}
gb = \relative c {
  \global
  \clef bass
  \time 4/4
  \tuplet 5/4 {<b' f'>4 <c e> <f, b> <c a'> <a g'> } <e' f>1
}

ha = \relative c' {
  \global
  \clef treble
  \time 4/4
  \tuplet 3/2 { <e c'>2 <d f> <c g'> } <b a'>1
}
hb = \relative c {
  \global
  \clef bass
  \time 4/4
  \tuplet 3/2 { <c f>2 <e g> <a, f'> } <f e'>1
}

ia = \relative c' {
  \global
  \clef treble
  \time 4/4
  \tuplet 3/2 {<b c>2 <g f'> <c g'> } <b a'>1
}
ib = \relative c {
  \global
  \clef bass
  \time 4/4
  \tuplet 3/2 { <a f'>2 <c d> <f, e'> } <e f'>1
}

ja = \relative c' {
  \global
  \clef treble
  \time 4/4
  \tuplet 5/4 {<a a'>4 <b f'> <g d'> <f e'> <g b> }<e f>1
}
jb = \relative c, {
  \global
  \clef bass
  \time 4/4
  \tuplet 5/4 {<f b>4 <d c'> <e a> <c b'> <a' d> } <b c>1
}

ka = \relative c' {
  \global
  \clef treble
  \time 4/4
  
}
kb = \relative c {
  \global
  \clef bass
  \time 4/4
  
}

la = \relative c' {
  \global
  \clef treble
  \time 4/4
  
}
lb = \relative c {
  \global
  \clef bass
  \time 4/4
  
}

ma = \relative c' {
  \global
  \clef treble
  \time 4/4
  
}
mb = \relative c {
  \global
  \clef bass
  \time 4/4
  
}

na = \relative c' {
  \global
  \clef treble
  \time 4/4
  
}
nb = \relative c {
  \global
  \clef bass
  \time 4/4
  
}

oa = \relative c' {
  \global
  \clef treble
  \time 4/4
  
}
ob = \relative c {
  \global
  \clef bass
  \time 4/4
  
}

pa = \relative c' {
  \global
  \clef treble
  \time 4/4
  
}
pb = \relative c {
  \global
  \clef bass
  \time 4/4
  
}

qa = \relative c' {
  \global
  \clef treble
  \time 4/4
  
}
qb = \relative c {
  \global
  \clef bass
  \time 4/4
  
}

ra = \relative c' {
  \global
  \clef treble
  \time 4/4
  
}
rb = \relative c {
  \global
  \clef bass
  \time 4/4
  
}

sa = \relative c' {
  \global
  \clef treble
  \time 4/4
}
sb = \relative c {
  \global
  \clef bass
  \time 4/4
  
}

ta = \relative c' {
  \global
  \clef treble
  \time 4/4
  
}
tb = \relative c {
  \global
  \clef bass
  \time 4/4
  
}

ua = \relative c' {
  \global
  \clef treble
  \time 4/4
  
}
ub = \relative c {
  \global
  \clef bass
  \time 4/4
  
}

va = \relative c' {
  \global
  \clef treble
  \time 4/4
  
}
vb = \relative c {
  \global
  \clef bass
  \time 4/4
  
}

wa = \relative c' {
  \global
  \clef treble
  \time 4/4
  
}
wb = \relative c {
  \global
  \clef bass
  \time 4/4
  
}
    
xa = \relative c' {
  \global
  \clef treble
  \time 4/4
  
}
xb = \relative c  {
  \global
  \clef bass
  \time 4/4
  
}

ya = \relative c' {
  \global
  \clef treble
  \time 4/4
  
}
yb = \relative c  {
  \global
  \clef bass
  \time 4/4
  
}

za = \relative c' {
  \global
  \clef treble
  \time 4/4
  
}
zb = \relative c  {
  \global
  \clef bass
  \time 4/4
  
}

aaa = \relative c' {
  \global
  \clef treble
  \time 4/4
  
}
aab = \relative c {
  \global
  \clef bass
  \time 4/4
  
}

bba = \relative c' {
  \global
  \clef treble
  \time 4/4
  
}
bbb = \relative c {
  \global
  \clef bass
  \time 4/4
  
}

cca = \relative c' {
  \global
  \clef treble
  \time 4/4
  
}
ccb = \relative c {
  \global
  \clef bass
  \time 4/4
  
}

dda = \relative c' {
  \global
  \clef treble
  \time 4/4
  
}
ddb = \relative c {
  \global
  \clef bass
  \time 4/4
  
}

eea = \relative c' {
  \global
  \clef treble
  \time 4/4
  
}
eeb = \relative c {
  \global
  \clef bass
  \time 4/4
  
}

ffa = \relative c' {
  \global
  \clef treble
  \time 4/4
  
}
ffb = \relative c {
  \global
  \clef bass
  \time 4/4
  
}

gga = \relative c' {
  \global
  \clef treble
  \time 4/4
  
}
ggb = \relative c {
  \global
  \clef bass
  \time 4/4
  
}

hha = \relative c' {
  \global
  \clef treble
  \time 4/4
  
}
hhb = \relative c {
  \global
  \clef bass
  \time 4/4
  
}

iia = \relative c' {
  \global
  \clef treble
  \time 4/4
  
}
iib = \relative c {
  \global
  \clef bass
  \time 4/4
  
}

jja = \relative c' {
  \global
  \clef treble
  \time 4/4
  
}
jjb = \relative c {
  \global
  \clef bass
  \time 4/4
  
}

kka = \relative c' {
  \global
  \clef treble
  \time 4/4
  
}
kkb = \relative c {
  \global
  \clef bass
  \time 4/4
  
}

lla = \relative c' {
  \global
  \clef treble
  \time 4/4
  
}

llb = \relative c {
  \global
  \clef bass
  \time 4/4
  
}

mma = \relative c' {
  \global
  \clef treble
  \time 4/4
  
}
mmb = \relative c {
  \global
  \clef bass
  \time 4/4
  
}

nna = \relative c' {
  \global
  \clef treble
  \time 4/4
  
}
nnb = \relative c {
  \global
  \clef bass
  \time 4/4
  
}

ooa = \relative c' {
  \global
  \clef treble
  \time 4/4
  
}
oob = \relative c {
  \global
  \clef bass
  \time 4/4
  
}

ppa = \relative c' {
  \global
  \clef treble
  \time 4/4
  
}
ppb = \relative c {
  \global
  \clef bass
  \time 4/4
  
}

qqa = \relative c' {
  \global
  \clef treble
  \time 4/4
  
}
qqb = \relative c {
  \global
  \clef bass
  \time 4/4
  
}

rra = \relative c' {
  \global
  \clef treble
  \time 4/4
  
}
rrb = \relative c {
  \global
  \clef bass
  \time 4/4
  
}

ssa = \relative c' {
  \global
  \clef treble
  \time 4/4
  
}
ssb = \relative c {
  \global
  \clef bass
  \time 4/4
  
}

tta = \relative c' {
  \global
  \clef treble
  \time 4/4
  
}
ttb = \relative c {
  \global
  \clef bass
  \time 4/4
  
}

uua = \relative c' {
  \global
  \clef treble
  \time 4/4
  
}
uub = \relative c {
  \global
  \clef bass
  \time 4/4
  
}

vva = \relative c' {
  \global
  \clef treble
  \time 4/4
  
}
vvb = \relative c {
  \global
  \clef bass
  \time 4/4
  
}

wwa = \relative c' {
  \global
  \clef treble
  \time 4/4
  
}
wwb = \relative c {
  \global
  \clef bass
  \time 4/4
  
}
    
xxa = \relative c' {
  \global
  \clef treble
  \time 4/4
  
}
xxb = \relative c  {
  \global
  \clef bass
  \time 4/4
  
}

yya = \relative c' {
  \global
  \clef treble
  \time 4/4
  
}
yyb = \relative c  {
  \global
  \clef bass
  \time 4/4
  
}

zza = \relative c' {
  \global
  \clef treble
  \time 4/4
  
}
zzb = \relative c  {
  \global
  \clef bass
  \time 4/4
  
}

aaaa = \relative c' {
  \global
  \clef treble
  \time 4/4
  
}
aaab = \relative c {
  \global
  \clef bass
  \time 4/4
  
}

bbba = \relative c' {
  \global
  \clef treble
  \time 4/4
  
}
bbbb = \relative c {
  \global
  \clef bass
  \time 4/4
  
}

ccca = \relative c' {
  \global
  \clef treble
  \time 4/4
  
}
cccb = \relative c {
  \global
  \clef bass
  \time 4/4
  
}

ddda = \relative c' {
  \global
  \clef treble
  \time 4/4
  
}
dddb = \relative c {
  \global
  \clef bass
  \time 4/4
  
}

eeea = \relative c' {
  \global
  \clef treble
  \time 4/4
  
}
eeeb = \relative c {
  \global
  \clef bass
  \time 4/4
  
}

fffa = \relative c' {
  \global
  \clef treble
  \time 4/4
  
}
fffb = \relative c {
  \global
  \clef bass
  \time 4/4
  
}

ggga = \relative c' {
  \global
  \clef treble
  \time 4/4
  
}
gggb = \relative c {
  \global
  \clef bass
  \time 4/4
  
}

hhha = \relative c' {
  \global
  \clef treble
  \time 4/4
  
}
hhhb = \relative c {
  \global
  \clef bass
  \time 4/4
  
}

iiia = \relative c' {
  \global
  \clef treble
  \time 4/4
  
}
iiib = \relative c {
  \global
  \clef bass
  \time 4/4
  
}

jjja = \relative c' {
  \global
  \clef treble
  \time 4/4
  
}
jjjb = \relative c {
  \global
  \clef bass
  \time 4/4
  
}

kkka = \relative c' {
  \global
  \clef treble
  \time 4/4
  
}
kkkb = \relative c {
  \global
  \clef bass
  \time 4/4
  
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
\score {
  <<
    \new PianoStaff <<
      \new Staff = "ja" \ja
      \new Staff = "jb" \jb
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
