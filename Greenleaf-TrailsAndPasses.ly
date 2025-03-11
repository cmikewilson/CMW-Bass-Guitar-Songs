\version "2.24.3"
\language "english"

\header {
  title    = "Trails & Passes"
  composer = "Greenleaf (bassist Bengt Bäcke)"
  tuning   = "C Standard"
}

xtempo = 154
c-std-tuning = \stringTuning <c,, f,, as,, ds,>

%%      2 4 6  7  9 11
%% 1 D# F G A  A# C D
%% 2 A# C D E  F  G A
%% 3 F  G A B  C  D E
%% 4 C  D E F# G  A B

%% AINTRO (1-8) A

AIntro = {
  \section
  \sectionLabel "Intro"
  \repeat volta 10 { r1^\markup "10×" }
}

%% BBUILD-UP (9-16) B

zba = \relative c, { c8\3 [c\3 c\3 c\3] c\3 [c\3 c\3 c\3] } %12

BBuildUp = {
  \section
  \sectionLabel "Build-up"
  \repeat volta 5 { \zba^\markup "5×" } |
}

%% CINTRO (17-32) C

zca = \relative c, { as8\3 c\3 c\3 as\3 c\3 c\3 as\3 c\3 } % 17
zcb = \relative c, { c\3 as\3 c\3 c\3 as\3 c\3 c\3 f,\3 }  % 18

CIntro = {
  \sectionLabel "Intro"
  \repeat volta 8 { \zca \zcb^\markup "8×" } | \break
}

%% DPREVERSE (33-48) D

zda = \relative c,, { c8\4 c\4 c\4 c\4 c'\3 c\3 c\3 c\3 } % 33
%zdd = \relative c,, { c8\4 c\4 c\4 c\4 c'\3 c\3 c4\3 } % 36
zde = \relative c,, { ds8\4 ds ds ds ds ds ds ds } % 37
zdg = \relative c,, { f8\4 f\4 f\4 f\4 f\4 f\4 f\4 c'\3 } % 39
zdh = \relative c, { f8\2 f\2 f\2 f\2 ds\2 c\3 as\3 c\3 } % 40
zdi = \relative c, { f8\2 f\2 f\2 f\2 f\2 ds\2 c\3 as\3 } % 48

DPreVerse = {
  \section
  \sectionLabel "Pre-verse"
  \repeat volta 2 {
    \repeat volta 4 { \zda^\markup "4×" } |
    \zde | \zde | \zdg | \zdh^\markup "2×" |
  }
  \break
}

%% EVERSE (49-72) E

zea = \relative c, { as8\3 c\3 c\3 as\3  c\3 c\3 as\3 c\3 } % (17)
zeb = \relative c, { c\3 as\3 c\3 c\3  as\3 c\3 c\3 f,\3 } % (18)

zec = \relative c, { as8\3 c\3 ds\2 c\3  ds\2 f\2 ds\2 f\2 } % 55
zed = \relative c, { g'8\2 c\1 as\1 g\2  fs\2 f\2 ds\2 c\3 } % 56
fill = { \zec | \zed | }

zee = \zde
zeg = \zdg
zeh = \relative c, { f8\2 f\2 f\2 f\2  ds\2 c\3 as\3 c\3 } % 108

Verse = {
  \section
  \sectionLabel "Verse"
  \repeat volta 2 {
    \repeat volta 3 { \zea | \zeb^\markup "3×" } | \fill | \break
    \zee | \zee | \zeg | \zeh^\markup "2×" | \break
  }
}

%% FCHORUS (73-88) F

zfa = \relative c, { c8\3 c\3 c\3 c\3 c\3 c\3 c\3 c\3 } % 73
zfb = \relative c, { c8\3 c\3 c\3 c\3 c\3 c\3 c\3 f,\3 } % 74
zfc = \relative c, { as8\3 as\3 as\3 as\3 as\3 as\3 as\3 as\3 } % 75
zfd = \relative c,, { f8\4 f\4 f\4 f\4 f\4 f\4 f\4 f\4 } % 77
zfe = \relative c,, { ds8\4 ds\4 ds\4 ds\4 f\4 f\4 f\4 f\4 } % 78
zff = \relative c, { c8\3 c\3 c\3 c\3  c\3 f\2 as\1 c\1 } % 169
zfg = \relative c { c8\1 as\1 g\2 as\1  c\1 as\1 g\2 ds\3 } % 170

Chorus = {
  \section
  \sectionLabel "Chorus"
  \repeat volta 2 {
    \zfa | \zfb |
    \zfc | \zfc | \zfd | \zfe | \zff | \zfg^\markup "2×" | \break
  }
}

%% GINTRO (89-96) G

zga = \relative c, { as8\3 c\3 c\3 as\3 c\3 c\3 as\3 c\3 } % (17)
zgb = \relative c, { c\3 as\3 c\3 c\3 as\3 c\3 c\3 f,\3 } % (18)

GIntro = {
  \section
  \sectionLabel "Intro"
  \repeat volta 4 { \zga | <>_"Repeat Verse and Chorus" \zgb^\markup "4×" } | \break
}

%% KBRIDGE (137-152) K

zka = \relative c, { c,2\4 \glissando gs'2\4 ~ gs1\4 } % 137
zkb = \relative c, { f,2\3 \glissando c'2\3 ~ c1\3 } % 139
zkc = \relative c, { gs2\4 \glissando c,2\4 ~ c1\4 } % 143

KBridge = {
  \section
  \sectionLabel "Bridge"
  \zka | \zkb | \zka | \zkc | \zka | \zkb | \zka |
  \break
}

%% LSOLO (153-170) L

zla = \relative c, { g8\4 g\4 g\4 g\4 g\4 g\4 g\4 g\4 } % 151, 152
zlb = \zla
zlc = \zba % 155 (73, 81, 121)
zld = \relative c, { c8\3 [c\3 c\3 c\3] c\3 [c\3 c\3 f,\3] } %12 (74)
zle = \zfc % 157, 158 (75)
zlf = \zfd % 159 (77)
zlg = \zfe % 160 (78)
zlh = \zff %\relative c, { c8\3 c\3 c\3 c\3  c\3 c\3 f16\2 [as\1] c8\1 } % 169
zli = \zfg %\relative c { c8\1 [as\1 g\2 as\1]  c\1 [as\1 g\2 ds\3] } % 170

LSolo = {
  \section
  \sectionLabel "Solo"
  \zla | \zla |
  r1 | r1 |
  \zlc | \zlc | \zle | \zle | \break
  \zlf | \zlg |
  \repeat volta 2 { { \zlc | \zld }^\markup "2×" } | \break
  \zle | \zle | \zlf | \zlg | \zlh | \zli |
  \break
}

%% MCHORUS (171-219) M

zma = \zba % 171 (161) 7s on 3rd
zmc = \zle  % 173, 174 (165, 166) 5s on 3rd x2
zmd = \relative c, { f8\2 f\2 f\2 f\2 f\2 f\2 f\2 f\2 } % 175, 7s on 2nd
zme = \relative c, { ds8\2 ds\2 ds\2 ds\2 f\2 f\2 f\2 f\2 } % 176, 5s 7s on 2nd
zmf = \zff %\relative c, { c8\3 c\3 c\3 c\3 c\3 c\3 f\2 g\2 } % 177 (79) 779 fill
zmg = \zfg %\relative c { as8\1 c\1 c\1 c\1  c\1 c\1 c\1 f,\2 } % 178 (80) 7997 fill

zmh = \relative c, {f1\2} % 219 () lone 7 on 2nd
zmi = \relative c, { as8\3 c\3 c\3 as\3 c\3 c\3 as\3 c\3 } % (17)
zmj = \relative c, { c\3 as\3 c\3 c\3 as\3 c\3 c\3 f,\3 } % (18)

MChorus = {
  \section
  \sectionLabel "Chorus"
  \repeat volta 4 {
    \zma | \zma | \zmc | \zmc |
    \zmd | \zme | \zmf | \zmg^\markup{"4×"} | \break
  }
  \repeat volta 7 { \zmi | \zmj^\markup "7×" } | \fill | \zmh |
}

music = { \AIntro \BBuildUp
	  \CIntro \DPreVerse %\pageBreak
	  \Verse \Chorus
	  \GIntro % \Verse \Chorus
	  \KBridge \LSolo \MChorus
	  \fine
	}

\score {
  <<
    \new Staff {
      \clef "bass_8"
      \key c \major
      \time 4/4
      \tempo 4 = \xtempo
      \music
    }
    \new TabStaff {
      \set Staff.stringTunings = #c-std-tuning
      \music
    }
  >>
  \layout {
    \context {
      \Voice
      \omit StringNumber
    }
    indent = 0.0
  }
  %%\midi {}
}
\score {
  \unfoldRepeats
  \music
  \midi {
    \tempo 4 = \xtempo
    \set Staff.midiInstrument = "electric bass (finger)"
  }
}
