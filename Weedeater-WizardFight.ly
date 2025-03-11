\version "2.24.3"
\language "english"

\header {
  title = "Wizard Fight"
  composer = "Weedeater: Dave Collins, Dave Shepherd"
  tuning = "D Standard"
}

d-std-tuning = \stringTuning <d,, g,, c, f,>

zai = \relative d,, { d8 d d c'\3 \glissando d4\3 }  % 00057
zaj = \relative d, { d8\3 [c\3 a\4] c\3 [a\4 d\3] }  % 757577
zak = \relative d, { as4. c4.\3 }  % 35

za = {
  \repeat volta 2 {
    \repeat volta 3 { \zai | \zai | \zai | \zaj^\markup "3×" }
    { \zai | \zai | \zai | \zak^\markup "2×" }
  }
}

zbl = \relative d,, { d4 d8 [d] d [d] | }  % 0 0000
zbm = \relative d, { c4.\3 as4.\3 | }  % 5.3.
zbn = \relative d,, { f4.\4 g4.\4 }  % 3.5.

zb = {
  \repeat volta 2 {
    \repeat volta 3 { \zbl | \zbm | \zbn^\markup "3×" }
    { \zbm | \zbn | \zbm | \zbn^\markup "2×" }
  }
}

zco = \relative d,, { g8\4 [g\4 g\4] g\4 [g\4 g\4] | }  % 555 555

music = {
  \repeat volta 2 {
    {
      \za | \break
      \zb | \break
    }
    \alternative {
      \volta 1 { \zco | \zco | }
      \volta 2 { r1. }
    }
  }
  \fine
}

\score {
  <<
    \new Staff {
      \clef "bass_8"
      \key c \major
      \time 6/8
      \tempo 4=226
      \music
    }
    \new TabStaff {
      \set Staff.stringTunings = #d-std-tuning
      { \music }
    }
  >>
  \layout {
    \context {
      \Voice
      \omit StringNumber
    }
  }
  %%\midi {}
}
%%\score {
%%  \unfoldRepeats
%%  \music
%%  \midi {
%%    \tempo 4=226
%%    \set Staff.midiInstrument = "electric bass (finger)"
%%  }
%%}
