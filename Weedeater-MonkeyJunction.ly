\version "2.24.3"
\language "english"

\header {
  title    = "Monkey Junction"
  composer = "Weedeater: Dave Collins, Dave Shepherd"
  tuning   = "D Standard"
}

d-std-tuning = \stringTuning <d,, g,, c, f,>
ztempo = 140

zaa = \relative d,, { d4. c'8\3 [d\3 c\3] }
zab = \relative d,, { a'4\4 c2\3 }
zac = \relative d,, { gs4.\4 d8 f4 }
zad = \relative d,, { g8\4 gs4\4 g8\4 f4 }
zae = \relative d,, { g8\4 d4 c'8\3[d\3 c\3] }
zaf = \relative d,, { a'4\4 c2\3 }
zag = \relative d,, { gs2.\4 ~ gs2.\4 }

music = {
  \key c \major
  \time 6/8
  \tempo 4 = \ztempo
  \zaa | \zab | \zac | \zad | \zae | \zaf | \zag |
  \fine
}

\score {
  <<
    \new Staff {
      \clef "bass_8"
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
\score {
  \unfoldRepeats
  \music
  \midi {
    \tempo 4 = \ztempo
    \set Staff.midiInstrument = "electric bass (finger)"
  }
}
