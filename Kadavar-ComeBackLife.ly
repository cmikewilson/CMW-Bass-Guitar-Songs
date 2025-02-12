\version "2.24.3"
\language "english"

\header {
  title    = "Come Back Life"
  subtitle = "Kadavar — Abra Kadavar"
  composer = "bassist Philipp 'Mammut' Lippitz"
  arranger = "bass guitar, E Standard"
}

%%|---+----+----+----+----+-----+----+----+----+----+----+----+----+-----|
%%|   |    | 1  | 2  | 3  | 4   | 5  | 6  | 7  | 8  | 9  | 10 | 11 | 12  |
%%| 1 | E2 | F2 | F# | G2 | G#  | A2 | A# | B2 | C3 | C# | D3 | D# | E3  |
%%| 2 | B1 | C2 | C# | D2 | D#  | E2 | F2 | F# | G2 | G# | A2 | A# | B2  |
%%| 3 | F# | G1 | G# | A1 | A#  | B1 | C2 | C# | D2 | D# | E2 | F2 | F#  |
%%| 4 | C# | D1 | D# | E1 | F1  | F# | G1 | G# | A1 | A# | B1 | C2 | C#  |
%%|   |    |    | oo |    | ooo |    | oo |    | oo |    |    |    | ooo |
%%|---+----+----+----+----+-----+----+----+----+----+----+----+----+-----|

xtempo = 145
%cs-std-tuning = \stringTuning <cs,, fs,, b,, e,>

%% ZA

zaa = \relative c, { d8\3 d\3 d\3 d\3  d\3 d\3 d\3 d\3 }     % 3:5555 5555
zab = \relative c, { d8\3 d\3 d\3 d\3  d\3 d\3 d\3 a\4 }  % 3:5555 555 4:5
zac = \relative c, { c8\3 c\3 r8 g\4  r8 g'\2 r8 d\3 }  % 33r3r5r5
zada = \relative c, { d8\3[d\3] d8.\3[d16\3] d8\3[d\3 d\3 a\4] } % 3:55 5.5 555 4:5
zadb = \relative c, { d8\3[d\3] d8.\3[d16\3] d8\3[d\3 d\3 d\3] }  % 3:55 5.5 5555
zae = \relative c, { d8\3[a\3 c\3] d4\3 a8\3[c\3 d\3] } % 3: 503 5 035
zaf = \relative c, { d8\3[a\3 c\3] d4\3 a8\3[c\3 a\3] } % 3: 503 5 030
zag = \relative c, { c8\3 c\3 c\3 c\3  c\3 c\3 c\3 c\3 }      % 3:3333 3333
zah = \relative c, { c8\3 c\3 c\3 c\3  c\3 c\3 c\3 a\3 }     % 3:3333 3330
zai = \relative c, { g8\4 g\4 g\4 g\4  g\4 g\4 g\4 g\4 }      % 4:3333 3333
zaj = \relative c, { g8\4 g\4 g\4 g\4  g\4 g\4 g\4 a\3 }   % 4:3333 333 3:0
zaka = \relative c, { d4\3 d8.\3[d16\3]  d8\3[d\3 d\3 d\3] }  % 3:5 5.5 5555
zakb = \relative c, { d4\3 d8.\3[d16\3]  d8\3[d\3 d\3 a\3] } % 3:5 5.5 5550
zal = \relative c, { c8\3 d\3 c\3  es4\2  es8\2 d\3 c\3 }      % 3:353 3 353
zam = \relative c, { a8\4[c\3 es\2] g4\2 as8\1 c4\1 } % 4:5 3:3 2:35 1:35
zan = \relative c, { g'8\2[es\2 d\3] b4\3 c8\3[b\3 d\3] } % 2:53 3:52325
zao = \relative c, { d8\3[d\3] d8.\3[d16\3] d8\3[d\3] d4\3 }   % 3:55 5.5 55 5
zap = \relative c, { d4\3 d8.\3[d16\3] d8\3[d\3] d8.\3[d16\3] } % 3:5 5.5 55 5.5
zaq = \relative c, { g'8\2[es\2 d\3] b4\3 c8\3[b\3 a\4] } % 2:53 3:5232 4:5
zar = \relative c, { a8\4 a\4 a\4 a\4  a\4 a\4 a\4 a\4 } % 4:5555 5555
zas = \relative c, { a8\4 a\4 a\4 a\4  a\4 a\4 a\4 e\4 } % 4:5555 5550

ZA = {
  \tempo 4 = 145
  %%\section
  %%\sectionLabel "Intro"
  \repeat volta 7 { \zaa^\markup "12×" } | \zab | \break
  \repeat volta 2 { \zac ~ \zada^\markup "2×" } | \zac ~ \zadb | \break
  \repeat volta 3 { \zaka^\markup "3×" } |
  \repeat volta 4 { \zae ~ \zaf^\markup "4×" } |
  \repeat volta 8 { \zaa^\markup "8×" } | \break
  \zag | \zah | \zag | \zaj |
  \repeat volta 2 { \zakb | \zal^\markup "2×" } | \break
  \zag | \zah | \zai | \zaj |
  \zakb | \zal | \zaka | \zaa |
  \repeat volta 4 { \zae ~ \zaf^\markup "4×" } |
  \repeat volta 16 { \zaa^\markup "16×" }
  \repeat volta 2 { \zam | \zan | \zap | \zao^\markup "2×" | }
  \zam | \zaq | \repeat volta 3 { \zar^\markup "3×" } | \zas |
  \break
}

%% ZB

%% m88, tempo 89
zba = \relative c, { a8\4[\xNote a\4 a\4 \xNote a\4] a\4[\xNote a\4] a16\4[g8.\4] } % 4:5x5x 5x 5 4:3.
zbb = \relative c, { a8\4[\xNote a\4 a\4 \xNote a\4] a\4[\xNote a\4] a16\4[c8.\3] } % 4:5x5x 5x 5 3:3.
zbc = \relative c, { a8\4[\xNote a\4 a\4 \xNote a\4] a\4[\xNote a\4] g'16\2[a\1] c8\1 } % 4:5x5x 5x 2:5 1:25
zbd = \relative c, { \tuplet 3/2 { a\4 a\4 a\4 }
		     \tuplet 3/2 { a\4 a\4 a\4 }
		     \tuplet 3/2 { a\4 a\4 a\4 }
		     \tuplet 3/2 { a\4 a\4 a\4 } } % 3: 555 555 555 555
zbe = \relative c, { \tuplet 3/2 { g\4 g\4 g\4 }
		     \tuplet 3/2 { g\4 g\4 g\4 }
		     \tuplet 3/2 { g\4 g\4 g\4 }
		     \tuplet 3/2 { g\4 g\4 g\4 } } % 3: 333 333 333 333

ZB = {
  \tempo 4 = 89
  \zba | \zbb | \zba | \zbc | \break
  \repeat volta 3 { \zba | \zbb^\markup "3×" } | \zba | \zbc |
  \zbd | \zbe |
  \break
}

%% ZC

%% m102, tempo 96
zca = \relative c, {
  \tuplet 3/2 { b8\4 b\4 b\4 }
  \tuplet 3/2 { b8\4 b\4 b\4 }
  \tuplet 3/2 { b8\4 b\4 b\4 }
  \tuplet 3/2 { b8\4 b\4 \glissando es\4 }
} % 3: 555 555 555 55-13
zcb = \relative c {
  \tuplet 3/2 { as4\3 as\3 as\3 }
  \tuplet 3/2 { as4\3 as\3 a,\4 }
} % 13-13-13 13-13-5

ZC = {
  \tempo 4 = 96
  \zca | \zcb |
  \break
}

%% ZD
%% a-c b-d d-es e-g fs-a g-as

%% m104, tempo 145
zda = \relative c, { d4\3 d8.\3[d16\3] d8\3[d\3] d\3[d16\3 d\3] } % 3: 5 5.5 55 555
zdb = \relative c, { d8\3[d\3] d8\3[d16\3 d\3] d8\3[d\3 d\3 d\3] } % 3: 55 555 5555
zdd = \relative c, { d4\3 d8.\3[d16\3] d8\3[d\3 d\3 d\3] } % 
zde = \relative c, {
  \tuplet 3/2 { d\3 d\3 d\3 }
  \tuplet 3/2 { d\3 d\3 d\3 }
  \tuplet 3/2 { d\3 d\3 d\3 }
  \tuplet 3/2 { d\3 a'\1 c\1 }
} % t555 t555 t555 t5 1:25
zdg = \relative c {
  \tuplet 3/2 { <d\1 d,\2> <d\1 d,\2> <d\1 d,\2> }
  \tuplet 3/2 { <d\1 d,\2> <d\1 d,\2> <d\1 d,\2> }
  \tuplet 3/2 { <d\1 d,\2> <d\1 d,\2> <d\1 d,\2> }
  \tuplet 3/2 { <d\1 d,\2> d,\3 d\3 }
} % t70 70 70 - t70 70 70 - t70 70 70 - t70 5 5
zdk = \relative c, { d2\3 r2 }
zdl = \relative c, { c8\3 c\3 c\3 c\3  c\3 c\3 c\3 a\4 } % 3:3333 333 4:5
zdm = \relative c, { d8\3 d\3 d\3 d\3  d\3 d\3 d\3 a\4 } % 3:5555 555 4:5
zdn = \relative c, { g'\2 g\2 g\2 g\2  g\2 g\2 g\2 g\2 } % 2:5555 5555

zdo = \relative c, { c1\3 }
zdp = \relative c, { g1\4 }
zdq = \relative c, { d1\3 }

ZD = {
  \tempo 4 = 145
  \zda | \zdb | \zda | \zdd |
  \zde | \zdg |
  \repeat volta 6 { \zae ~ \zaf^\markup "6×" } |
  \zdk | \repeat volta 7 { r1^\markup "7×" } | \break
  \repeat volta 8 { \zae ~ \zaf^\markup "8×" } |
  \zag | \zdl | \zai | \zai |
  \repeat volta 3 { \zaa^\markup "3×" } | \zdm |
  \zag | \zag |
  \zdn | \zdn | \zaa | \zdm |
  \zde |
  \zdo ~ \zdo | \zdp ~ \zdp | \zdq ~ \zdq |
}

music = {
  \ZA | \ZB | \ZC | \ZD |
  \fine
}

\score {
  <<
    \new Staff {
      \clef "bass_8"
      \key c \major
      \time 4/4
      %%\tempo 4 = \xtempo
      \music
    }
    \new TabStaff {
      \set Staff.stringTunings = #bass-tuning
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
    %%\tempo 4 = \xtempo
    \set Staff.midiInstrument = "electric bass (finger)"
  }
}
