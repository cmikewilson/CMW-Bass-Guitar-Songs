\version "2.24.3"
\language "english"

\header {
  title    = "Jason ... The Dragon"
  subtitle = "Weedeater — Jason ... The Dragon"
  composer = "bassist Dave Collins"
  arranger = "bass guitar, D Standard"
}

d-std-tuning = \stringTuning <d,, g,, c, f,>

zaa = \relative c, { d8\3[d,\4] d'\3[d,\4] d'\3[d,\4] } % (1) 707070 3/4
zab = \relative c, { d8\3[c\3] a\4[c\3] a\4[c\3] } % (2) 757575
zac = \relative c, { a8\4[gs\4] g\4[f\4] } % (3) 7653 2/4,
zad = \relative c, { c16\3 \glissando d\3[d,8\4] d'\3[d,\4] d'\3[d,\4] } % (4) 5707070
zae = \relative c, { d8\3[c\3] a\4[c\3] a\4[c\3] } % (5) 757575

opening = {
  \section
  \sectionLabel "Opening Riff"
  \tempo 4 = 130
  \time 3/4 \zaa | \zab | \time 2/4 \zac |
  \repeat volta 2 { \time 3/4 \zad | \zae | \time 2/4 \zac } |
}

zba = \relative c, {
  d,8\4 ~ d16\4[d\4] f\4(d\4) d8\4 ~ [d\4] <d'\3 a'\2> ~ <d\3 a'\2>
} % 00300 97 4/8
zbb = \relative c, { d,8\4 ~ d\4 d\4 f\4\^ fqs d\4 } % 0030
zbc = \relative c, { g16\4[a\4] c\3[d\3] c\3[a\4] g\4[f\4] } % 57575753
zbd = \relative c, { d16\3[cs\3] c\3[a\4] d\3[cs\3] c\3[a\4] } %76577657

mid = {
  \section
  \sectionLabel "Mid Riff"
  \tempo 4 = 140
  \repeat volta 2 {
    \time 7/8 \zba | \time 6/8 \zbb | \time 4/8 \zbc |
    \time 7/8 \zba | \time 6/8 \zbb | \time 4/8 \zbd |
  }
}

zca = \relative c, { gs16\4[gs\4] gs\4[g\4] ~ g\4[g\4] g\4[g\4] } % 6665555
zcb = \relative c, { g16\4[d\4] f\4[d\4] gs\4[g\4] f\4[d\4] } % 50306530
zcc = \zbd % 76577657
zcd = \relative c, { gs16\4[gs\4] gs\4[g\4] \glissando d\4 r8 }

final = {
  \section
  \sectionLabel "Final Riff"
  \tempo 4 = 140
  \repeat volta 8 { \time 2/4 \zca | \zcb | } % x8
  \repeat volta 8 { \zcc | } % x8
}
finalb = {
  \zcd
}

music = {
  \opening \break
  \mid \break
  \final \finalb \fine
}

\score {
  <<
    \new Staff {
      \clef "bass_8"
      \key c \major
      \time 3/4
      \music
    }
    \new TabStaff {
      \set Staff.stringTunings = \d-std-tuning
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
}
\score {
  \unfoldRepeats
  \music
  \midi {
    \set Staff.midiInstrument = "electric bass (finger)"
  }
}
