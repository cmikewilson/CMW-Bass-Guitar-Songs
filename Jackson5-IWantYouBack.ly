\version "2.24.3"
\language "english"

\header {
  title    = "I Want You Back"
  composer = "Wilton Felder"
  tuning   = "E Standard"
}

%% reference I started with was in the key b flat
xtempo = 98

%% INTRO
zaa = \relative e, { r1^"Intro" | }
%% m2
zab = \relative e, { bf8\4 r8 r4 r8. cs16 (d\3) [f\2 g\2 ef\3] | }
%zac = \relative e, { r2 r16 c d\3 ef\3 r16 e f fs | }
zac = \relative e, { r2 r16 c d\3 ef\3 (ef\3) e f fs | } %sbl
%% m4
zad = \relative e, { g4\2 d\3 ef8.\3 [bf16\4] (bf4) }
zae = \relative e, { c4\4 f8.\3 [bf,16\4] r2 }
%% m6
zaf = \zab
zag = \zac
%% m8
zah = \zad
zai = \relative e, {
  %c8\4 r f8.\3 [bf,16\4]
  c4\4 f8.\3 [bf,16\4] %sbl
  r8 f'16\3 ([g\3]) bf\2 [g\3 bf8\2]
}
%% m10
zaj = \relative e {
  bf8.\2 \ff [bf16\2] a8.\2 [a16\2] g\2 [g8\2 f16\3] (f\3) [d\3 f\3 d\3] | %sbl
}
zak = \relative e, {
  ef8.\3 [ef16\3] d8.\3 [d16\3] c\4 [c8\4 f16\3] (f\3) [c\4 f\3 fs\3] | %sbl
}
%% m12
%%zal = \relative e, { g8.\2 [g16\2] d8\3 r ef8.\3 \f [bf16\4] r4 }
zal = \relative e, { g4\3 \glissando d4\3 ef8.\3 \f [bf16\4] (bf4) } %sbl
zam = \zai

intro = {
  \zaa |
  \zab | \zac | \zad | \zae \break |
  \zaf | \zag | \zah | \zai \break |
  \zaj | \zak | \zal | \zam \break |
}

%% VERSE1
%% m14
zba = \relative e, { bf8\4^"Verse 1" r8 r4 r8. cs16 d\3 [f\2 g\2 ef\3] | }
zbb = \zac
%% m16
zbc = \zad
zbd = \zai
%% m18
zbe = \zab
zbf = \zac
%% m20
zbg = \zad
zbh = \zai

verseOne = {
  \zba | \zbb | \zbc | \zbd \break |
  \zbe | \zbf | \zbg | \zbh \break |
}

%% CHORUS1
%% m22
zca = \relative e {
  bf8.\2^"Chorus 1" \ff [bf16\2]
  a8.\2 [a16\2]
  g\2 [g8\2 f16\3]
  (f\3) [d\3 f\3 d\3]
}
zcb = \zak
%% m24
zcc = \zal
zcd = \zai
%% m26
zce = \zaj
zcf = \zak
%% m26
zcg = \zal
zch = \relative e, { c4\4 f8\3 r }

chorusOne = {
  \zca | \zcb | \zcc | \zcd \break |
  \zce | \zcf | \zcg | \time 2/4 \zch \break |
}

%% INTRELUDE
%% m30
zda = \relative e, { r16^"Intrelude" bf\4 [bf\4 bf\4] bf\4 r8. r2 | }
zdb = \relative e, { r16 bf\4 [bf\4 bf\4] bf\4 r8. r2 | }
%% m32
zdc = \zdb
zdd = \zdb

intrelude = {
  \time 4/4 \zda | \zdb | \zdc | \zdd \break |
}

%% VERSE2
%% m34
zea = \relative e, { bf8\4^"Verse 2" \f r8 r4 r8. cs16 d\3 [f\2 g\2 ef\3] | }
zeb = \zac
%% m36
zec = \zad
zed = \zai
%% m38
zee = \zab
zef = \zac
%% m40
zeg = \zad
zeh = \zai

verseTwo = {
  \zea | \zeb | \zec | \zed \break |
  \zee | \zef | \zeg | \zeh \break |
}

%% CHORUS2
%% m42
zfa = \relative e {
  %bf8.\2^"Chorus 2" \ff [bf16\2] a8.\2 [a16\2] g\2 [g\2] r
  %f\3 r d\3 [f\3 d\3] |
  bf8.\2^"Chorus 2" \ff [bf16\2] a8.\2 [a16\2] g\2 [g8\2 f16\3] %sbl
  (f\3) [d\3 f\3 b,\3] | %sbl
}
zfb = \relative e, {
  %ef16\3 [bf'\2 ef\1 d,8\3 d16\3 d\3 c8\3 c16\3 c8\3]
  %f16\2 [d\3 f\2 fs\2] |
  ef16\3 [bf'\2 ef\1 d,\3] %sbl
  (d8.\3) [c16\4] %sbl
  (c\4) [fs,\4 c'\4 f\3] %sbl
  (f\3) [fs,\4 f'\3 fs\3] | %sbl
}
%% m44
%zfc = \zal
zfc = \relative e, {
  g4\3 \glissando d4\3
  ef16\3 [d\3 c\4 bf\4]
  (bf8) ([bf])
} %sbl
zfd = \zam
%% m46
zfe = \zaj
zff = \zak
%% m48
zfg = \zal

chorusTwo = {
  \zfa | \zfb | \zfc | \zfd \break |
  \zfe | \zff | \zfg \break |
}

%% BRIDGE
%% m49
zga = \relative e, { r1^"Bridge" }
%% m50
zgba = \relative e, { r16 g\2 [bf\2 d,\3] ~ d4\3 }
zgbb = \relative e, { r16 ef\3 [g\2 bf,\4] ~ bf4\4 }
zgb = { r2. \zgba \zgbb \zgba \zgbb r8. e,16\2 }
%% m53
%%zgc = \relative e, {
%%  g16\2 \ff [bf\2 d\1 d,\3] ~ d\3 \f [ f\3 \ff a\2 ef\3] ~
%%  ef\3 \f [g\2 \ff bf\2 bf,\4 ] ~ bf\4 [d\3 f\3] r16
%%}
zgc = \relative e, {
  g16\2 \ff [bf\2 d\1 d,\3]        %sbl
  (d\3) \f [ f\3 \ff a\2 ef\3]     %sbl
  (ef\3) \f [g\2 \ff bf\2 bf,\4 ]  %sbl
  (bf\4) [d\3 f\3 e\2]             %sbl
}
%% m54
zgd = \zgc
zge = \zgd
%% m56
%%zgf = \zgd
zgf = \relative e, {  % almost like \zgc
  g16\2 \ff [bf\2 d\1 d,\3]        %sbl
  (d\3) \f [ f\3 \ff a\2 ef\3]     %sbl
  (ef\3) \f [g\2 \ff bf\2 bf,\4 ]  %sbl
  (bf\4) [d\3 f8\3]                %sbl
}

bridge = {
  \zga |
  \zgb \break |
  \zgc | \zgd | \zge | \zgf \break |
}

%% OUTRO
%% m57
zha = \relative e {
  bf8.\2^"Outro" [bf16\2] a8.\2 [a16\2] g\2 [g\2] r f\3 r d\3 [f\3 d\3]
}
zhb = \zak
%% m59
zhc = \relative e, { g8.\2 [g16\2] d8\3 r ef8.\3 \f [bf16\4] r4 }
zhd = \zch
%% m61
zhe = \relative e, { r16 bf\4 \mf [bf\4 bf\4] bf\4 r8. r2 }
zhf = \relative e, {
  r16 bf\4 [bf\4 bf\4] bf\4 r8. r4 f'16\3 [g\3 bf\2 g\3]
}
%% m63
zhg = \relative e {
  bf8.\2 \ff [bf16\2] a8.\2 [a16\2] g\2 [g\2] r
  f8 [f16 f] r16
}
zhh = \zfb
%% m65
zhi = \zfc
zhj = \zch
%% m67
zhk = \zhe
zhl = \zdb

outro = {
  \zha | \zhb | \zhc | \time 2/4 \zhd \break |
  \time 4/4 \zhe | \zhf \break |
  \zhg | \zhh | \zhi | \time 2/4 \zhj \break |
  \time 4/4 \zhk | \zhl \break |
}

musicA = { \intro |
	  \verseOne |
	  \chorusOne |
	  \intrelude |
	  \verseTwo |
	  \chorusTwo |
	  \bridge |
	  \outro |
	}

music = \transpose bf af { \musicA }

\score {
  <<
    \new Staff {
      \clef "bass_8"
      \key af \major
      \time 4/4
      \tempo 4 = \xtempo
      \music
    }
    \new TabStaff \with {
      stringTunings = #bass-tuning
    }	\music
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
