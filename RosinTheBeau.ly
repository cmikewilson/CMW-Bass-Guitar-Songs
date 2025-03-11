\version "2.24.3"
\language "english"

\header {
  title    = "Rosin the Beau"
  subtitle = "Traditional"
  composer = "bass guitar, E Standard"
  arranger = "(Patrick Costello)"
}

tuning = #bass-tuning
xtempo = 80

%% INTRO

%% | d3 | g2  | b1a1g1 | d1    | e1 b1g1 |
%% |    | g2  | b1a1g1 | e3 ga | e dg    |
%% |    | g   | bag    | d'    | e1bg    |
%% |    | g   | g4g3a3 | g     | g d'd,  |
%% |    | dbd | def#   | g' e  | g' e    |
%% |    | dbd | gab    | e ga  | e d     |
%% |    | g   | bag    | d'    | e bg    |
%% |    | g   | g4g3a3 | g     | g d     |

zaa = \relative c, { r4 r4 d4\3 }
zab = \relative c, { g'2.\2 }
zac = \relative c, { b'4\2 a\2 g\2 }
zad = \relative c, { d'2.\1 }
zae = \relative c, { e'2\1 b8\2(a\2) }
zaf = \relative c, { e2\3 g8\2(a\2) }
zag = \relative c, { e2\3 d4\3 }
zah = \relative c, { e4\3 g\2 a\2 }

zai = \relative c, { d'4\1 b\2 d\1 }
zaj = \relative c, { d'4\1 e\1 fs\1 }
zak = \relative c, { g''2\1 e4\1}
zal = \relative c, { d'4\1 b\1 a\1 }
zap = \relative c, { g'\2 a\1 b\1  }
zam = \relative c, { e2\3 g8\2 a\2 }
zan = \relative c, { e2\3 d4\3 }
zao = \relative c, { e2\1 d4\3 }

music = {
  \tempo 4 = \xtempo
  %%\section
  %%\sectionLabel "Intro"
  \time 3/4
  \zaa |
  \zab | \zac | \zad | \zae |
  \zab | \zac | \zaf | \zag | \break
  \zab | \zac | \zad | \zae |
  \zab | \zah | \zab | \zab | \break

  \zai | \zaj | \zak | \zak |
  \zal | \zap | \zam | \zan | \break
  \zab | \zac | \zad | \zae |
  \zab | \zah | \zab | \zab |
  \fine
}

\score {
  <<
    \new Staff {
      \clef "bass_8"
      \key c \major
      \music
    }
    \new TabStaff {
      \set Staff.stringTunings = \tuning
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
