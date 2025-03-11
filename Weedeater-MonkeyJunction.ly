\version "2.24.3"
\language "english"

\header {
  title    = "Monkey Junction"
  composer = "Weedeater: Dave Collins, Dave Shepherd"
  tuning   = "D Standard"
}

d-std-tuning = \stringTuning <d,, g,, c, f,>
ztempo = 140

v = \relative d,, { d4. c'8\3 [d\3 c\3] 
		    a4\4 c2\3
		    gs4.\4
		    d8 f4 g8\4 gs4\4 g8\4 f4 g8\4 d4
		    c'8\3 [d\3 c\3] 
		    a4\4 c2\3 |
		    gs1\4 ~ gs1\4
		    \fine
		  }

music = \v

\score {
  <<
    \new Staff {
      \clef "bass_8"
      \key c \major
      \time 6/8
      \tempo 4 = \ztempo
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
