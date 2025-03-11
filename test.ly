\version "2.24.3"
\language "english"

\header {
  title    = "Test"
  arranger = "bass guitar, E Standard"
}

tuning = #bass-tuning
xtempo = 90

% zaa = \relative c, { e8.\2[e16\2] e8.\2[e16\2] e8.\2[e16\2] \tuplet 3/2 { g8\2(e\2) c\3 } } % 222222 523
% zab = \relative c, { c8.\3[c16\3] c8.\3[c16\3] c8.\3[c16\3] c8.\3[a16\3] } % 33333330
% zac = \relative c, { b8.\3[b16\3] b8.\3[b16\3] d8.\2[b16\3] d8.\2[d16\2] } % 22220200
% zad = \relative c, { e8.\2[d16\2] d8.\2[e16\2] ~ e8.\2[e16\2] e4\2\staccato }
% zbm = \relative c, { e4\3 e\3 e8\3 e\3 e\3 e\3 } % 
% zbp = \relative c, { e8\4[d\3] d\3[d\3] ~ d\3[d\3] \tuplet 3/2 { d8\3 b\4 a\3 } } % 75555 570
% zbn = \relative c, { b4\4 \tuplet 3/2 { d8\3 b\4 a\3 } g'8\2[fs\2] d\3[e\3] } % 7 070 4507
% zbx = \relative c, { e8\3[d\3] e\3[e\3] ~ e\3[e\3] } % 75777
% zbr = \relative c, { \zbx \tuplet 3/2 { e8\3(d\2) a\3 } } % 700
zak = \relative c, {
  e4\3 e8\3 e4\3 e8\3 e4\3 e8\3
  \tuplet 3/3 {g8\2(e\3) c\4}
} % 777777 078
zah = \relative c, {c4\4 c8\4 c4\4 c8\4 c4\4 c8\4 c4\4 a8\4} % 88888885
zai = \relative c, {b4\4 b8\4 b4\4 b8\4 d4\3 b8\4 d4\3 d8\3} % 77775755
zao = \relative c, {e4\3 d8\3 d4\3 e8\3 ~ e4\3 e8\3 e4.\3\staccato} % 755777

music = {
  \tempo 4 = \xtempo
  \section
  \sectionLabel "Test"
  %\zaa ~ \zab | \zac | \zad |
  %\repeat volta 4 { \zbm ~ \zbp | \zbn ~ \zbr | }
  \zak ~ \zah | \zai | \zao | \break
}

\score {
  <<
    \new Staff {
      \clef "bass_8"
      \key c \major
      \time 12/8
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
