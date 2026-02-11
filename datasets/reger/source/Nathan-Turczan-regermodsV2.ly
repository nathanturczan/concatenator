\version "2.18.2"

% umpteenth score, gonna be great

% designate the title, composer and poet!
  \header {
    title = \markup { \fontsize #4 \bold "max reger modulations V3" }
    subtitle = "updated april 29"
    composer = "Nathan Turczan"
  }

%designate language
\language "english"

upper = \relative c'' {
  \clef treble
   \time 4/4
  \key c \major 
  

   <<
     \relative c'' {
       \voiceOne 
       
       c4^\markup\bold "1"  a4 g fs   \bar "|"
       g1  \bar "|."

       e'2^\markup\bold "2" d4 cs \bar "|"
       d1  \bar "|."
       
       e4^\markup\bold "3" d8 b a4 gs \bar "|"
       a1  \bar "|."
       
       c2^\markup\bold "4" b2~ \bar "|"
       b1  \bar "|."
       
       c4^\markup\bold "5" b2 as4  \bar "|"
       b1  \bar "|."
       
       e4^\markup\bold "6" d8 b as4 gs \bar "|"
       fs1  \bar "|."
       
       c'4^\markup\bold "7" b as gs~  \bar "|"
       gs1  \bar "|."
       
       \time 5/4 e'4^\markup\bold "8" d cs a 
       fss4  \bar "|"
       \time 4/4 gs1  \bar "|."
       
       \time 6/4 e'4^\markup\bold "9" d b gs
       fss es    \bar "|"
       \time 4/4 fss1 \bar "|."
       
       \time 6/4 c'2^\markup\bold "10" b as4 gss   \bar "|"
       \time 4/4 as1  \bar "|."
       
       \time 6/4 c4^\markup\bold "11" b as2
       gss4 fss   \bar "|"
       \time 4/4 gss1  \bar "|."
       
       \time 6/4 c4^\markup\bold "12" b as cs
       bs ass \bar "|"
       \time 4/4 bs1  \bar "|."
       
       c4^\markup\bold "13" a bf g \bar "|"
       f1  \bar "|."
       
       c'1^\markup\bold "14"   \bar "|"
       bf  \bar "|."
       
       c4^\markup\bold "15" f ef4. d8  \bar "|"
       ef1  \bar "|."
       
       c4^\markup\bold "16" df c bf  \bar "|"
       c1  \bar "|."
       
       c4^\markup\bold "17" df bf af~   \bar "|"
       af1  \bar "|."
       
       c4^\markup\bold "18" df cf af  \bar "|"
       gf1  \bar "|."
       
       c4^\markup\bold "19" df cf bf  \bar "|"
       cf1  \bar "|."
       
       c4^\markup\bold "20" df bff gf   \bar "|"
       af1  \bar "|."
       
       \time 6/4 c4^\markup\bold "21" df bf cf 
       bff af   \bar "|"
       \time 4/4 bff1  \bar "|."
       
       c4^\markup\bold "22" a2 gs4  \bar "|"
       a1  \bar "|."
       
       c2^\markup\bold "23" b~  \bar "|"
       b1  \bar "|."
       
       c2^\markup\bold "24" b4 as  \bar "|"
       b1  \bar "|."
       
       c4^\markup\bold "25" d8 b a4 gs  \bar "|"
       fs1  \bar "|."
       
       c'4^\markup\bold "26" b d bs  \bar "|"
       cs1 \bar "|."
       
       c4^\markup\bold "27" a8 b cs4 as  \bar "|"
       b1 \bar "|."
       
       c2^\markup\bold "28" b8 gs es4  \bar "|"
       fs1 \bar "|."
       
       \time 6/4 c'2^\markup\bold "29" b  
       as4 gss   \bar "|"
       \time 4/4 as1 \bar "|."
       
       c2^\markup\bold "30" as4 fss  \bar "|"
       gs1 \bar "|."
       
       c4^\markup\bold "31" d8 b gs4 fss~  \bar "|"
       fss1 \bar "|."
       
       c'4^\markup\bold "32" bf a2~  \bar "|"
       a1 \bar "|."
       
       e2^\markup\bold "33" fs g1 \bar "|."
       
       e4^\markup\bold "34" f ef d
       ef1 \bar "|."
       
       g4^\markup\bold "35" af bf g
       af1 \bar "|."
       
       c1^\markup\bold "36" bf \bar "|."
       
       \time 3/4 c2~^\markup\bold "37" c8 d
       \time 4/4 ef1 \bar "|."
       
       \time 3/4 c4^\markup\bold "38" c df4
       \time 4/4 cf1 \bar "|."
       
       c4^\markup\bold "39" df2 c4
       df1\bar "|."
       
       \time 3/4 c4^\markup\bold "40" df cf
       \time 4/4 bff1 \bar "|."
       
       \time 3/4 c4^\markup\bold "41" df8 cf bf4
       \time 4/4 cf1 \bar "|."
       
       \key cs \major
        
       cs4^\markup\bold "42a" d f bf,~
       bf1 \bar "|."
        
       cs4^\markup\bold "42b" d f bf,~
       bf1 \bar "|."
       
       cs4^\markup\bold "43a" d ef bf
       af1 \bar "|."
       
       cs4^\markup\bold "43b" d ef bf
       af1 \bar "|."
       
       cs4^\markup\bold "44a" d ef8 g, af gf 
       f1 \bar "|."
       
       cs'4^\markup\bold "44b" d ef8 g, af gf 
       ff1 \bar "|."
       
       \time 6/4 es'4^\markup\bold "45a" fs8 d~ d4 f
       df cf8 af 
       \time 4/4 bf1 \bar "|."
       
       \time 6/4 es4^\markup\bold "45b" fs8 d~ d4 f
       df cf8 af 
       \time 4/4 bff1 \bar "|."
       
       \time 3/4 cs4^\markup\bold "46a" d f8 df
       \time 4/4 cf1 \bar "|."
       
       \time 3/4 cs4^\markup\bold "46b" d f8 df
       \time 4/4 cf1 \bar "|."
       
       \key c \major
       
       c4^\markup\bold "47" a g fs
       e1 \bar "|."
       
       c'4^\markup\bold "48" b2 as4
       b1 \bar "|."
       
       c4^\markup\bold "49" b a gs
       a1 \bar "|."
       
       c4^\markup\bold "50" b a gs~
       gs1 \bar "|."
       
       c4^\markup\bold "51" b gs ds'~ 
       ds1 \bar "|."
       
       c4^\markup\bold "52" b8 gs fs4 es
       fs1 \bar "|."
       
       c'4^\markup\bold "53"  b2 as8 gss 
       as1 \bar "|."
       
       c4^\markup\bold "54" b as2
       gs1 \bar "|."
       
       a2^\markup\bold "55" bf4 a~
       a1 \bar "|." 
       
       e2^\markup\bold "56" fs g1 \bar "|." 
       
       \time 3/4 a2^\markup\bold "57" b4 
       \time 4/4 c1 \bar "|." 
       
       \time 3/4 a4^\markup\bold "58" bf2 
       \time 4/4 af1 \bar "|." 
       
       a2^\markup\bold "59" c4 a 
       bf1 \bar "|."
       
       \time 3/4 a4^\markup\bold "60" bf af 
       \time 4/4 gf1 \bar "|."
       
       \time 3/4 a4^\markup\bold "61" bf2 
       \time 4/4 af1 \bar "|."
       
       c4^\markup\bold "62" bf2 af4~
       af1 \bar "|." 
      
       \time 5/4 c4^\markup\bold "63" bf2 af4~ af4
       \time 4/4 gf1 \bar "|."
        
       c2^\markup\bold "64" bf2
       cf1 \bar "|." 
        
       \time 6/4 c2^\markup\bold "65" bf2 cf2~
       \time 4/4 cf1 \bar "|."
       
       \time 3/4 a2^\markup\bold "66" g4~
       \time 4/4 g1 \bar "|."
       
       a4^\markup\bold "67" c b a
       b1 \bar "|."
       
       a4^\markup\bold "68" g8 b fs4 e
       fs1 \bar "|."
       
       a2.^\markup\bold "69" gs4
       a1 \bar "|."
       
       a2^\markup\bold "70" fs
       gs1 \bar "|."
       
       a4^\markup\bold "71" g fs2~ 
       fs1 \bar "|."
       
       a4^\markup\bold "72" g fs es 
       fs1 \bar "|."
       
       a2^\markup\bold "73" gs2~ 
       gs1 \bar "|."
       
       a4^\markup\bold "74" gs es fss
       gs1 \bar "|."
       
       \time 3/4 a4^\markup\bold "75" gs es
       \time 4/4  fss1 \bar "|."
       
       c'4^\markup\bold "76" b2 gss4
       as1 \bar "|."
       
       \time 5/4 c4^\markup\bold "77" b2 gss4 fss4
       \time 4/4 gss1 \bar "|."
       
       c4^\markup\bold "78" a bf g
       f1 \bar "|."
       
       c'2^\markup\bold "79" a 
       bf1 \bar "|."
       
       c2^\markup\bold "80" bf4 af 
       g1 \bar "|."
       
       \time 3/4 a4^\markup\bold "81" bf2
       \time 4/4 af1 \bar "|."
       
       a4^\markup\bold "82" bf2 af4~
       af1 \bar "|."
       
       \time 5/4 a4^\markup\bold "83" bf2 cf4 af4
       \time 4/4 bf1 \bar "|."
       
       c2^\markup\bold "84" bf2
       cf1 \bar "|."
       
       \time 6/4 c2^\markup\bold "85" bf cf2~
       \time 4/4 cf1 \bar "|."
       
       \key cf \major
       
       \time 5/4 cf4^\markup\bold "86a" bf g8 e ds4 es4
       \time 4/4 fs1 \bar "|."
       
       \time 5/4 cf'4^\markup\bold "86b" bf g8 e ds4 es4
       \time 4/4 fs1 \bar "|."
       
       \time 6/4 cf'4^\markup\bold "87a" bf g8 e ds4 fs4 ds4
       \time 4/4 cs1 \bar "|."
       
       \time 6/4 cf'4^\markup\bold "87b" bf g8 e ds4 fs4 ds4
       \time 4/4 cs1 \bar "|."
       
       \time 5/4 cf'4^\markup\bold "88a" bf a~a fss4
       \time 4/4 gs1 \bar "|."
       
       \time 5/4 cf4^\markup\bold "88b" bf a~a fss4
       \time 4/4 gs1 \bar "|."
       
       \key df \minor
       
       af2^\markup\bold "89a" fs2
       e1 \bar "|."
       
       af2^\markup\bold "89b" fs2
       e1 \bar "|."
       
       \time 3/4 af2^\markup\bold "90a" fs4~
       \time 4/4 fs1 \bar "|."
       
       \time 3/4 af2^\markup\bold "90b" fs4~
       \time 4/4 fs1 \bar "|."
       
       df'4^\markup\bold "91a" c a b
       as1 \bar "|."
       
       df4^\markup\bold "91b" c a b
       a1 \bar "|."
       
       df4^\markup\bold "92a" c a gs~
       gs1 \bar "|."
       
       df'4^\markup\bold "92b" c a gs~
       gs1 \bar "|."
       
       \time 5/4 df'4^\markup\bold "93a" c a~ a fs4
       \time 4/4 gs1 \bar "|."
       
       \time 5/4 df'4^\markup\bold "93b" c a~ a fs4
       \time 4/4 gs1 \bar "|."
       
       \time 5/4 df'4^\markup\bold "94a" c a gs es4
       \time 4/4 fs1 \bar "|."
       
       \time 5/4 df'4^\markup\bold "94b" c a gs es4
       \time 4/4 fss1 \bar "|."
       
       \key as \minor
       
       \time 6/4 as4^\markup\bold "95a" b g a c2
       \time 4/4 bf1 \bar "|."
       
        \time 6/4 as4^\markup\bold "95b" b g a c2
       \time 4/4 bf1 \bar "|."
       
       \time 5/4 cs4^\markup\bold "96a" b g a8 c d4
       \time 4/4 ef1 \bar "|."
       
       \time 5/4 cs4^\markup\bold "96b" b g a8 c d4
       \time 4/4 ef1 \bar "|."
       
       \time 6/4 as,4^\markup\bold "97a" b g a8 c d4 ef8 df
       \time 4/4 c1 \bar "|."
       
       \time 6/4 as4^\markup\bold "97b" b g a8 c d4 ef8 df
       \time 4/4 cf1 \bar "|."
       
       \time 7/4 as4^\markup\bold "98a" b g8 b c4 bf2 af4~
       \time 4/4 af1 \bar "|."
       
       \time 7/4 as4^\markup\bold "98b" b g8 b c4 bf2 af4~
       \time 4/4 af1 \bar "|."
       
       as4^\markup\bold "99a" b g8 b c4
       bf2 c4 df8 cf
       bf1 \bar "|."
       
       as4^\markup\bold "99b" b g8 b c4
       bf2 c4 df8 cf
       bff1 \bar "|."
       
       as4^\markup\bold "100a" b~ b c
       bf2 cf4 bf4
       cf1 \bar "|."
       
       as4^\markup\bold "100b" b~ b c
       bf2 cf4 bf4
       cf1 \bar "|."
     }
     \new Voice \relative c'{
       \voiceTwo
       
       
       e2 d2~ 
       d1 
 
       g2 fs4 e
       fs1
       
       g4 f! e2~ 
       e1
       
       e2. ds4 
       e1
       
       g2 fs~ 
       fs1
       
       g2 fs4. es8
       cs1
       
       g'2 fs
       es1
       
       g4. f8 e4 cs
       as4 bs1
       
       g'4. f8 e2
       ds4 css ds1
       
       e2 ds4 fs 
       es2~ es1
       
       g2 fs
       es4 dss es1
       
       g2 fs4 gs4 fss2~ 
       fss1
       
       e4 d2 c8 bf
       a1
       
       e' 2 ef d1
       
       e4 f g f 
       g1
       
       e4 f ef2~
       ef1
       
       e4 f df c
       df1
       
       e4 f gf f
       df1
       
       e4 f ef df
       ef1
       
       e4 f df cf~
       cf1
       
       e4 f df eff
       df cf df1
       
       e4 d c b
       c1
       
       e2. ds4
       e1
       
       g2 fs~
       fs1
       
       g2 fs4 es
       cs1
       
       g'2 a4 gs~
       gs1
       
       e4 d e ds~
       ds1
       
       e2. css4
       ds1
       
       e2 ds4 fs
       es2~ 
       es1
       
       g2 fs4 dss 
       es1
       
       e4 d cs ass
       bs1
       
       e4 d2 cs4
       d1
       
       c1 bf
       
       c2. b4
       c1
       
       e4 f g e
       f1
       
       e2 ef df1
       
       e4 f2
       ef1
       
       e4 f ef~
       ef1
       
       e4 f ef gf
       ff1
       
       e4 f df~
       df1
       
       e4 f8 df~ df4
       eff1
       
       es4 fs16 a g8 f2
       g1
       
       es4 fs16 a g8 f2
       gf1
       
       es4 fs16 a g8~ g2
       ef1
       
       es4 fs16 a g8~ g2
       ef1
       
       es4 fs16 a g8~ g ef f ef
       df1
       
       es4 fs16 a g8~ g ef f ef
       df1
       
       gs4 a g f
       gf4. f8 gf1
       
       gs4 a g f
       gf4. f8 gf1
       
       es4 fs16 a g8 f gf~
       gf1
       
       es4 fs16 a g8 f gf~
       gf1
       
       e2. ds4
       b1
       
       e2 d4 cs
       b1
       
       a'4 gs fs es 
       fs1
       
       a4 gs fs ds 
       e1
       
       a4 gs es fss
       gs1
       
       e2 ds4 css
       ds1
       
       e2 fs4 es~
       es1
       
       e4. gs8 es4 fss
       es1
       
       e4 f e2
       f1
       
       c1 bf
       
       e4 f2 ef1
       
       e4 f g f1
       
       e4 f g f8 ef
       df1
       
       e4 f2 ef1
       
       e4 f g af1
       
       a4 f g af8 gf
       ff1
       
       a4 f g af8 gf f4
       gf1
       
       e4 f gf4. ff8
       eff1
       
       e4 f gf4. ff8
       ef2 ff1
       
       e4 f2 e1
       
       e4 a g fs
       g1
       
       e2 d4. cs8
       d1
       
       e4 f e4. d8
       cs1
       
       e2 ds 
       e1
       
       e2 ds4 cs
       ds1
       
       e2 ds4 cs~
       cs1
       
       e4 fs~ fs es8 ds
       es1
       
       e2 css4 ds~
       ds1
       
       e2 css4
       ds1
       
       e2 ds4 bs
       css1
       
       e2 ds4 bs2~
       bs1
       
       e4 d2 c4~ 
       c1
       
       e2 f4 ef 
       d1
       
       a'2 f
       ef1
       
       e4 f g
       ef1
       
       e4 f gf4. f16 ef
       f1
       
       e4 f gf af f4
       gf1
       
       e4 f gf2
       g1
       
       e4 f gf4. ff8 ef2
       ff1
       
       ef4 df c b~ b4
       as1
       
       ef'4 df c b~ b4
       a1
       
       ef'4 df c b cs gs~
       gs1
       
       ef'4 df c b cs gs~
       gs1
       
       gf'2 f4 e ds4~
       ds1
       
       gf2 f4 e ds4~
       ds1
       
       df4 c a2
       gs1
       
       df'4 c a2
       g1
       
       df'4 c a8 as 
       b1
       
       df4 c a8 as 
       b1
       
       af'2 fs4. gs8
       fs1
       
       af2 fs4. gs8
       fs1
       
       af2 fs4 ds
       es1
       
       af2 fs4 ds
       e1
       
       af2 fs4 ef ds4~
       ds1
       
       af'2 fs4 ef ds4~
       ds1
       
       af'2 fs8 f e4 css4
       ds1
       
       af'2 fs8 f e4 css4
       ds1
       
       es4 fs e f2 ef4
       d1
       
       es4 fs e f2 ef4
       df1
       
       cs4  ds8 b~ b4 f'2
       g1
       
       cs,4  ds8 b~ b4 f'2
       gf1
       
       es4 fs e f2 ef4~
       ef1
       
       es4 fs e f2 ef4~
       ef1
       
       es4 fs e2 f4 g af8 gf
       f1
       
       es4 fs e2 f4 g af8 gf
       ff1
       
       es4 fs e2 f4 g af2
       gf1
       
       es4 fs e2 f4 g af2
       gf1
       
       es4 fs e2 f4 g gf2~
       gf1
       
       es4 fs e2 f4 g gf2~
       gf1
     }
   >>

}

lower = \relative c {
\clef bass
   \time 4/4
  \key c \major
  
     <<
     {
       \voiceOne
       g'4 c b a 
       b1
       
       c4 b a2~
       a1
       
       c8 b a d cs4 b 
       cs1
       
       g4 a gs fs 
       gs1
       
       e'2 ds4 cs4
       ds1
       
       c4 d cs b 
       as1
       
       e'2 cs4. bs8
       cs1
       
       c4 a2 e4
       ds4~ ds1
       
       c'4 a gs b 
       as2~ as1
       
       g4 a fs ds'
       css bs css1
       
       e2 cs
       bs2~ bs1
       
       e2 cs4 es dss4 css 
       dss1
       
       g,4 f2 e4 
       f1
       
       g2 a bf1
       
       g4 c bf2~
       bf1
       
       g4 af2 g4
       af1
       
       g4 af gf2
       f1
       
       g4 af cf2
       bf1
       
       g4 af gf2~
       gf1
       
       g4 af gf ef 
       ff1
       
       g4 af gf~ gf
       ff2~ ff1
       
       g4 f e2~
       e1
       
       g4 a g fs 
       g1
       
       e'2 d4 cs
       d1
       
       e4 d cs b
       a1
       
       e'4 d4~ d8 fs ds4
       e1
       
       g,4 f a fss
       gs1
       
       g4 a b as4~
       as1
       
       g4 a fs ds'
       cs bs cs1
       
       e2 cs4 bs~
       bs1
       
       g2 es4 css
       ds1
       
       g4 g f e
       f1
       
       g2 d2~ d1
       
       g4 af g2~
       g1
       
       c2 df4 c~
       c1
       
       g2 a bf1
       
       g4 af2
       gf1
       
       g4 af bf
       af1
       
       g4 af bf ef
       df1
       
       g,4 af2
       gf1
       
       g4 af gf~
       gf1
       
       \key cs \major
       
       gs4 a8 b c4 d
       ef1
       
       gs,4 a8 b c4 d
       ef1
       
       gs,4 a8 b c4 df
       c1
       
       gs4 a8 b c4 df
       cf1
       
       gs4 a8 b c2
       af1
       
       gs4 a8 b c2
       af1
       
       cs4. d16 c b4 c
       df2~ df1
       
       cs4. d16 c b4 c
       df2~ df1
       
       gs,4 a8 b c df
       ef1
       
       gs,4 a8 b c df
       eff1
       
       \key c \major
       
       a,4 c b4. a8
       g1
       
       a4 g fs2~
       fs1
       
       e'4 d cs2~ cs1
       
       e4 d cs2
       cs1
       
       e4 d cs2
       b1
       
       
       a4 b as2~ 
       as1
       
       a4 gs ds' c8 bs
       cs1
       
       c4 e css cs
       bs1
       
       c4 d2 cs4
       d1
       
       a1 d,1
       
       c'4 d2 c1
       
       c4 d df c1
       
       c4 d c2
       bf1
       
       c4 bf2~
       bf1
       
       c4 d df cf1
       
       e4 d df c 
       df1
       
       e4 d df c 
       cf4 bff1
       
       a4 c df2
       cf1
       
       a4 c df2
       cf4. bff8 aff1
       
       c4 d8 c b4 c1
       
       c4 e d2~
       d1
       
       c4 b a2~
       a1
       
       c4 d cs b
       a1
       
       c2 b2~
       b1
       
       c4 b2 as4 
       b1
       
       c4 b2 gs4 
       as1
       
       c4 d8 cs bs2
       cs1
       
       c4 b as2
       bs1
       
       c4 b as4~
       as1
       
       a4 g fs es~
       es1
       
       a4 g fs es dss4
       es1
       
       a4 f2 e4
       a1
       
       a2 c
       bf1
       
       e2 d4 bf~
       bf1
       
       c4 d df 
       c1
       
       c4 d ef8 df c4
       df1
       
       c4 d ef2 df4~
       df1
       
       a4 c df4. ff8
       ef1
       
       a,4 c df2 cf4. bff8
       af1
       
       \key cf \major
       
       gf2 e8 g fs4 gs4
       cs1
       
       gf2 e8 g fs4 gs4
       cs1
       
       gf2 e8 g fs2. 
       es1
       
       gf2 e8 g fs2. 
       e1
       
       ef'4 df c8 d e cs as4
       bs1
       
       ef4 df c8 d e cs as4
       b1
       
       \key df \minor
       
       ff4 ef d8 e ds4
       e1
       
       ff4 ef d8 e ds4
       e1
       
       ff4 ef d8 e 
       ds1
       
       ff4 ef d8 e 
       d1
       
       ff'4 ef d4~ d4
       cs1
       
       ff4 ef d4~ d4
       cs1
       
       ff4 ef d4 bs4
       cs1
       
       ff4 ef d4 bs4
       cs1
       
       ff4 ef d4 e8 cs as4
       bs1
       
       ff'4 ef d4 e8 cs as4
       b1
       
       ff'4 ef d b as4~
       as1
       
       ff'4 ef d b as4~
       as1
       
       \key as \minor
       
       cs4 ds8 b~ b4 c4~ c2
       f,1
       
       cs'4 ds8 b~ b4 c4~ c2
       f,1
       
       es4 fs e4 c'4 bf4~
       bf1
       
       es,4 fs e4 c'4 bf4~
       bf1
       
       cs4 ds8 b~ b4 c4 bf2
       af1
       
       cs4 ds8 b~ b4 c4 bf2
       af1
       
       cs4 ds b a8 c 
       d8 f ef4 c4 
       df1
       
       cs4 ds b a8 c 
       d8 f ef4 c4 
       df1
       
       cs4 ds b a8 c
       d8 f ef4~ ef df4~
       df1
       
       cs4 ds b a8 c
       d8 f ef4~ ef df4~
       df1
       
       cs4 ds b a8 c
       d8 f ef4~ ef df4
       ef1
       
       cs4 ds b a8 c
       d8 f ef4~ ef df4
       eff1
     }
     
     \new Voice  \relative c'{
       \voiceTwo
       c,2 d 
       g,1 
       
       c4 g' a a,
       d1
       
       c4 d4e2 
       a,1
       
       c4 a4 b2 
       e1
       
       c4 e fs2
       b,1
       
       c4 b cs2
       fs1
       
       c4 e fs gs 
       cs,1
       
       c4 d a cs
       ds4 gs,1
       
       c4 d e gs
       as4 as, ds1
       
       c4 a b ds 
       es2 as,1
       
       c4 e fs as
       bs2 es,1
       
       c4 e fs es fss2 
       bs,1
       
       c4 d g, c
       f,1
       
       c'2 f bf,1
       
       c4 af bf2 
       ef1
       
       c4 f8 df ef2
       af,1
       
       c4 f, gf af
       df1
       
       c4 f ef df
       gf1
       
       c,4 f gf2
       cf,1
       
       c4 f, gf cf 
       ff,1
       
       c'4 f gf cf,
       ff2 bff,1
       
       c4 d e4 e,
       a1
       
       c4 a  b2
       e1
       
       c4 e fs2
       b,1
       
       c4 b cs2
       fs,1
       
       c'4 g' fs gs
       cs,1
       
       c4 d cs ds
       gs,1
       
       c4 a gs as
       ds1
       
       c4 a b ds
       es2 as,1
       
       c4 e fs8 as, bs4
       es1
       
       c4 b cs8 es, fss4
       bs1
       
       c4 g a2
       d1
       
       c2 a g1
       
       c4 f, g2
       c1
       
       c4 f bf, c
       f1
       
       c2 f bf,1
       
       c4 f bf,
       ef1
       
       c4 f g 
       af1
       
       c,4 f g af
       df,1
       
       c4 f2
       gf1
       
       c,4 f gf
       cf,1
       
       cs4 fs8 g af4 bf,
       ef1
       
       cs4 fs8 g af4 bf,
       ef1
       
       cs4 fs8 g c,4 ef
       af,1
       
       cs4 fs8 g c,4 ef
       af,1
       
       cs4 fs8 g c,4 af
       df1
       
       cs4 fs8 g c,4 af
       df1
       
       cs4 fs g af
       bf df, gf1
       
       cs,4 fs g af
       bf df, gf1
       
       cs,4 fs8 g af bf
       cf1
       
       cs,4 fs8 g af bf
       cf1
       
       a,4 fs b2
       e,1
       
       a4 e' fs fs, 
       b1
       a4 b cs2
       fs1
       
       a,4 b fs gs
       cs1
       
       a4 b cs as 
       gs1
       
       a4 gs as2
       ds1
       
       a4 e' ds es
       as,1
       
       a'4 gs css, dss
       es1
       
       a4 d, g a
       d,1
       
       a1 g
       
       a'4 d, g c,1
       
       a'4 d, e f1
       
       a4 d, e f
       bf,1
       
       a4 d2
       ef1
       
       a4 d, ef
       af1
       
       a4 d, ef af
       df,1
       
       a'4 d, ef af df,4
       gf1
       
       a4~ a bf gf 
       cf,1
       
       a'4~ a bf gf cf,2 
       ff1
       
       a4 d, g
       c,1
       
       a'4 c, d2
       g1
       
       a4 e8 g a4 a,
       d1
       
       a'4 d, e2
       a,1
       
       a'2 b2
       e,1
       
       a4 e fs2 
       b,1
       
       a'4 e b cs 
       fs,1
       
       a'4 fs gs2
       cs,1
       
       a'4 e8 gs as4 ds,
       gs1
       
       a4 e8 gs as4 ds,1
       
       a4 e' b8 ds es4
       as,1
       
       a4 e' b8 d es4 bs4
       es,1
       
       a4 d g, c
       f,1
       
       a2 f2
       bf1
       
       a2 d2
       ef1
       
       a,4 d ef
       af1
       
       a,4 d8 bf ef4 af 
       df,1
       
       a4 d8 bf ef4 cf df4
       gf1
       
       a4~ a bf4. g8
       cf1
       
       a4~ a bf gf cf,2 
       ff1
       
       cf4 gf8 bf c e b4 gs4
       fs1
       
       cf'4 gf8 bf c e b4 gs4
       fs1
       
       cf'4 gf8 bf c8 e b4
       as bs 
       cs1
       
       cf4 gf8 bf c8 e b4
       as4 bs 
       cs1
       
       cf4 gf8 bf f'8 d cs4 ds4
       gs,1
       
       cf4 gf8 bf f'8 d cs4 ds4
       gs,1
       
       df'4 af8 c d c b4
       e,1
       
       df'4 af8 c d c b4
       e,1
       
       df'4 af8 c d cs
       b1
       
       df4 af8 c d cs
       b1
       
       df'4 af8 c d4 b8 es,
       fs1
       
       df'4 af8 c d4 b8 es,
       fs1
       
       df'4 af8 c d fs, gs4
       cs,1
       
       df'4 af8 c d fs, gs4
       cs,1
       
       df'4 af8 c d d, cs4 ds4
       gs,1
       
       df''4 af8 c d d, cs4 ds4
       gs,1
       
       df''4 af8 c d d, e gs as4
       ds,1
       
       df'4 af8 c d d, e gs as4
       ds,1
       
       as'4 ds, e a,2. 
       bf1
       
       as'4 ds, e a,2. 
       bf1
       
       as4 ds e a, bf4
       ef1
       
       as,4 ds e a, bf4
       ef1
       
       as4 ds, e a, bf g
       af1
       
       as'4 ds, e a, bf g
       af1
       
       as'4 ds, g a4 d,4 ef4 af4
       df,1
       
       as'4 ds, g a4 d,4 ef4 af4
       df,1
       
       as'4 ds, e8 g a4 d,4 ef af f
       gf1
       
       as4 ds, e8 g a4 d,4 ef af f
       gf1
       
       as4 ds,4 g a 
       d, ef4~ ef gf 
       cf,1
       
       as'4 ds,4 g a 
       d, ef4~ ef gf 
       cf,1
       
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
    \tempo 4 = 72
  }
}
