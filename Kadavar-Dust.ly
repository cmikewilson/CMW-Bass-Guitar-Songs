\version "2.24.3"
\language "english"

\header {
  title    = "Dust"
  subtitle = "Kadavar — Abra Kadavar"
  composer = "bassist Philipp 'Mammut' Lippitz"
  arranger = "bass guitar, E Standard, kind of 12/8 or swing"
}

tuning = #bass-tuning
xtempo = 145

%% INTRO

zaa = \relative c, { a'8\2[g\2] a\2[g\2] a4\2 a,8\4[b\4] } % 7575757
zab = \relative c, { d4\3 e\3 g8\2 e4.\3 } % 5757
zac = \relative c, { a2\4 b\4 } % 57
zad = \relative c, { d2\3 e\3\staccato } % 57'
zae = \relative c, { e8\3[e\3] \tuplet 3/2 { a\2 b\2 d\1 } e8\1[d\1] b16\2[a8.\2] } % 7 779 79797
zaf = \relative c, { e8\3[e\3] \tuplet 3/2 { a\2 b\2 d\1 } e8\1[e\1] \tuplet 3/2 { b\2 a\2 \glissando g\2 } } % 7 779 799 975
zag = \relative c, { e4\3 e\3 e\3 e8\3[b\4] } % 77777
zah = \relative c, { c8\4[c\4] c\4[c\4] c\4[c\4] c\4[a\4] } % 88888885
zai = \relative c, { b8\4[b\4] b\4[b\4] d\3[b\4] d\3[d\3] } % 77775755
zaj = \relative c, { e8\3[d\3] d\3[e\3] ~ e\3[e\3] e\3[a,\4] } % 7557775
zak = \relative c, { e8\3[e\3] e\3[e\3] e\3[e\3] \tuplet 3/2 { g\2(e\3) c\4 } } % 777777 078
zal = \relative c, { d8\3[e\3] e\3[e\3] e\3[e\3] e\3[e\3] } % 57777777
zam = \relative c, { d8\3[e\3] e\3[e\3] e\3[e\3] \tuplet 3/2 { e\3 e\3 e\3 } } % 577777 777
zan = \relative c, { d8\3[e\3] \tuplet 3/2 { e\3(d\3) b\4 } e\3 d4.\3 } % 57 757 75.
zao = \relative c, { e8\3[d\3] d\3[e\3] ~ e\3[e\3] e4\3\staccato } % 755777

intro = {
  \tempo 4 = \xtempo
  \section
  \sectionLabel "Intro"
  \repeat volta 2 { \zaa | \zab | \zac | \zad^\markup "2×" | }
  \repeat volta 2 { \zae | \zaf^\markup "2×" | } \break
  \zag | \zah | \zai | \zaj | \break
  \zak ~ \zah | \zai | \zao | \break
  \zal | \zal | \zam | \zan |
}

%% VERSE A

zba = \relative c, { e2.\3 d8\3[c\4] } % 7.58
zbb = \relative c, { c4\4 a8\4[a\4] ~ a\4[b\4] ~ b\4[a\4] } % 8-5575
zbe = \relative c, { e4\3 \tuplet 3/2 { a,8\4(b\4) d\3 } e4\3 d8\3[c\4] } % 2 797 903
zbf = \relative c, { e4\3 \tuplet 3/2 { a8\2(b\2) d\1 } e4\1 g,8\1[c,\4] } % 2 797 903
zbg = \relative c, { g4\4 a\4 b\4 d\3 } % 3575
zbh = \relative c, { e4\3 g\2 e\3 d\3 } % 7575
zbi = \relative c, { e4\3 g\2 e\3 \tuplet 3/2 { d8\3 b\4(a\4) } } % 357570
zbj = \relative c, { d8\3[d\3] \tuplet 3/2 { b8\4(c\4)(cs\4) } d8\3[d\3] \tuplet 3/2 { b8\4(c\4)(cs\4) } } % 55 789 55 789
zbk = \relative c, { d8\3[d\3] \tuplet 3/2 { b\4(c\4)(cs\4) } d8\3[d\3] a4\4 } % 55 789 555
zbl = \relative c, { e8\3[d\3] e\3[e\3] e\3[e\3] \tuplet 3/2 { e8\3(d\3) a\4 } } % 757777 755
zbm = \relative c, { e4\3 e\3 e8\3[e\3] e\3[e\3] } % 777777
zbn = \relative c, { b4\4 \tuplet 3/2 { d8\3 b\4 a\4 } g'8\2[fs\2] d\3[e\3] } % 7 070 4507
zbo = \relative c, { e8\3[e\3] e\3[e\3] \tuplet 3/2 { e8\3 e\3 e\3 } e4\3 } % 7777 777 7
zbp = \relative c, { e8\3[d\3] d\3[d\3] ~ d\3[d\3] \tuplet 3/2 { d8\3 b\4 a\4 } } % 75555 575

zbx = \relative c, { e8\3[d\3] e\3[e\3] ~ e\3[e\3] } % 75777
zbq = \relative c, { \zbx d\3[d\3] } % 00
zdf = \relative c, { \zbx e\3[e\3] } % 77
zdi = \relative c, { \zbx e\3[a,\3] } % 70
zbr = \relative c, { \zbx \tuplet 3/2 { e8\3(d\3) a\3 } } % 700
zdk = \relative c, { \zbx \tuplet 3/2 { e8\3(d\3) a\3 } } % 770
zdh = \relative c, { \zbx \tuplet 3/2 { e8\3 a,\3 a\3 } } % 700
zdj = \relative c, { \zbx a\3[a\3] } % 00

verseA = {
  \section
  \sectionLabel "Verse 1 (0:39)"
  \repeat volta 2 { \zba ~ \zbb | \zdf | \zdi^\markup "2×" | } \break
  \repeat volta 2 { \zbf ~ \zbb | \zdf | \zdi^\markup "2×" | } \break
  \zbg | \zbh | \zbg | \zbh | \break
  \zbg | \zbi | \zbj | \zbk | \break
  \zba ~ \zbb | \zdf | \zdi | \break
  \zba ~ \zbb | \zdf | \zdk | \break
  \zbe ~ \zbb | \zdf | \zdi | \break
  \zbf ~ \zbb | \zdf | \zdi | \break

  \zbm ~ \zbp | \zbn ~ \zbo | \break
  \repeat volta 2 { \zbm ~ \zbp | \zbn ~ \zbq^\markup "2×" | } \break
  \zbm ~ \zbp | \zbn ~ \zbr |
}

%% BRIDGE

zca = \relative c, { a8\4[a\4] a\4[a\4] a\4[a\4] a4\4\staccato } % 0000000.
zcb = \relative c, { b8\4[b\4] b\4[b\4] d\3[b\4] d\3[ds\3] } % 77775756
zcc = \relative c, { e8\3[e\3] g\2[fs\2] ~ fs\3[d\3] b\4[d\3] } % 7754575
zcd = \relative c, { e8\3[d\3] e\3[e\3] e\3[d\3] e4\3\staccato } % 7577777.
zce = \relative c, { e8\3[e\3] e\3[e\3] e\3[e\3] e\3[e\3] } % 77777777
zcf = \relative c, { d8\3[e\3] \tuplet 3/2 { e8\3(d\3) b\4 } e8\3 d4.\3 } % 57 757 75.
zcg = \relative c, { d8\3[e\3] e\3[e\3] e\3[e\3] e\3[b\4] } % 07777777
zch = \relative c, { e8\3[e\3] g\2[fs\2] ~ fs\3[d\3] e\3[d\3] } % 7754575

bridge = {
  \section
  \sectionLabel "Bridge (2:15)"
  \zcg | \zca | \zcb | \zcc | \break
  \zcd | \zca | \zcb | \zch | \break
  \zce | \zal | \zal | \zcf |
}

%% VERSE B

%zda = \relative c, { e8\3[d\3] d\3[d\3] ~ d\3[d\3] \tuplet 3/2 { d8\3 b\4 a\4 } } % 75555 575
zdb = \relative c, { b4\4 \tuplet 3/2 { d8\3(ds\3)(e\3) } g8\2[fs\2] d\3[e\3] } % 7 567 5457
zdc = \relative c, { c8\4[a\4] a\4[a\4] ~ a8\4 b4\4 a8\4 } % 855575
zdd = \relative c, { e2.\3 g8\2[c,\4] } % 7 58
zde = \relative c, { e8\3[d\3] d\3[d\3] d\3[d\3] \tuplet 3/2 { d8\3 b\4 a\4 } } % 75555 575

verseB = {
  \section
  \sectionLabel "Verse 2 (2:33)"
  \zba ~ \zdc | \zdf | \zdi | \break
  \zdd ~ \zdc | \zdf | \zbr | \break
  \zbe ~ \zdc | \zdf | \zbr \break
  \zbf ~ \zdc | \zdf | \zdh \break

  \zbm ~ \zbp | \zdb ~ \zdj | \break
  \zbm ~ \zbp | \zbn ~ \zdj | \break
  \zce ~ \zbp | \zbn ~ \zdj | \break
  \zbm ~ \zde | \zbn ~ \zdk |
}

%% OUTRO

zeb = \relative c, { e8\3[e\3] e\3[e\3] e\3[e\3] \tuplet 3/2 { e8\3(d\3) c\4 } } % 777777 708
zec = \relative c, { c8\4[c\4] c\4[c\4] c\4[c\4] a\4[a\4] } % 88888855
zed = \relative c, { e8\3[d\3] d\3[e\3] ~ e\3[e\3] \tuplet 3/2 { e8\3(d\3) a\3 } } % 75577 750
zee = \relative c, { e8\3[e\3] e\3[e\3] e\3[e\3] \tuplet 3/2 { g8\2 d\3 c\4 } } % 777777 508
zef = \relative c, { e8\3[d\3] d\3[e\3] ~ e\3[e\3] a,4\4 } % 755775
zeg = \relative c, { e8\3[e\3] e\3[e\3] e\3[e\3] d\3[c\4] } % 22222203
zeh = \relative c, { e8\3[e\3] e\3[e\3] e\3[e\3] g\2[c,\4] } % 22222253
zei = \relative c, { e8\3[d\3] d\3[e\3] ~ e4\3 r4 } % 75577
zej = \relative c, { c8\4[c\4] c\4[c\4] c\4[c\4] a4\4 } % 8888885

outro = {
  \section
  \sectionLabel "Outro (3:27)"
  \zbg | \zbh | \zbg | \zbh | \break
  \zbg | \zbi | \zbj | \zbk | \break
  \zeb ~ \zec | \zai | \zed | \break
  \zee ~ \zec | \zai | \zef | \break
  \zeg ~ \zec | \zai | \zed | \break
  \zeh ~ \zej | \zai | \zei | 
}

music = {
  \intro | \break
  \verseA | \break
  \bridge | \break
  \verseB | \break
  \outro |
  \fine }

\score {
  <<
    \new Staff {
      \clef "bass_8"
      \key c \major
      \time 4/4
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
