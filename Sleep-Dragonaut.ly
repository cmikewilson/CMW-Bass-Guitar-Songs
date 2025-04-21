\version "2.24.4"
\language "english"

\header {
  title    = "Dragonaut"
  subtitle = "Sleep"
  composer = "bassist Al Cisneros"
  arranger = "bass guitar, C Standard (CFA#D#)"
}

c-std-tuning = \stringTuning <c,, f,, as,, ds,>

zaa = \relative c, {
  gs8\3 \^ aqf f4\3 \tuplet 3/2 { ds'4\2(f8\2) } f,4\3
} % 30570
zab = \fixed c, {
  gs4\1 f\2 \tuplet 3/2 { ds4\2 c8\3 } \tuplet 3/2 { ds4\2(f8\2) }
} % 575757
zac = \fixed c, {
  as,4\3 c\3 \tuplet 3/2 { ds4\2 c8\3 } \tuplet 3/2 { ds4\2(f8\2) }
} % 575757

opening = {
  \section
  \sectionLabel "Opening"
  \repeat volta 2 { \zaa | \zab | \zaa | \zac | }
}

zba = \fixed c,, { \autoBeamOff r2 f8\3\mf gs\3\^[aqf] f\3 } % 030
zbb = \fixed c,, {
  \autoBeamOff
  gs8\3\^[aqf] f2.\3 ~
  f2\3~f8\3 c'8\3\f \tuplet 3/2 { ds'4\2 c'8\3 }
} % 30 757
zbc = \fixed c, { ds4\2 f2.\2 } % 57
zbd = \fixed c, {
  \tupletDown
  \tuplet 3/2 4 { { r4 b8\1 } { as4\1 gs8\1 } { f4\2 ds8\2 } { c4\3 as,8\3 } }
} % 8757575
zbe = \zaa
zbf = \zab

intro = {
  \section
  \sectionLabel "Intro"
  \zba | \zbb | \zbc | \zbd | \break
  \repeat volta 2 { \zbe | \zbf | }
}

zca = \fixed c, {
  r2. r8 as8\2\mf \glissando c'1\2 ~ c'4\2
  \tuplet 3/2 { c'4\2 as8\2 }
  \tuplet 3/2 { c'4\2 cs'8\2 }
  \tuplet 3/2 { c'4\2 as8\2 }
} % 12/14~14 12 14 15 14 12
zcc = \fixed c, { c'1\2 ~ c'4\3 g\3 fs\3 f\3 } % 14-14 13 12

preverse = {
  \section
  \sectionLabel "PreVerse"
  \zca | \zcc |
}

zda = \fixed c, {
  \tuplet 3/2 { ds4\2 as,8\3 } (c4\3) c4\3
  \tuplet 3/2 { ds4\2 as,8\3 }
} % 557755
zdb = \fixed c, {
  c4\3
  \tuplet 3/2 { c4\3 as,8\3 }
  \tuplet 3/2 { c4\3 cs8\3 }
  \tuplet 3/2 { c4\3 as,8\3 }
} % 7757875
zdc = \fixed c, {
  \tuplet 3/2 { ds4\2 as,8\3 } (c4\3) c\3
  \tuplet 3/2 { ds4\2 as,8\3 }
} % 557755
zdd = \fixed c, {
  \tuplet 3/2 { c4\3 g,8\4 }
  g4\2 fs\2 f\2
} % 77987

verse = {
  \section
  \sectionLabel "Verse"
  \repeat volta 2 { \zda | \zdb | \zdc | \zdd | }
}

zea = \fixed c, { as,8\3[c\3] c4\3 c4\3 c,8\4[c,\4] } % 577700
zeb = \fixed c,, { g8\4 fs4.\4 fs8\4 f4.\4 } % 7665

chorus = {
  \section
  \sectionLabel "Chorus"
  \repeat volta 2 { \repeat unfold 3 { \zea | } \zeb |
  }
}

zfa = \fixed c,, {
  c4\4\f \tuplet 3/2 4 { c8\4 c'4\3  c8\4 as4\3  c8\4 c'4\3 } c8\4
} % 00705070
zfb = \fixed c,, {
  \tuplet 3/2 4 { as4\3 c8\4  c'4\3 c8\4 }
  \tuplet 3/2 4 { f8\4[g\4 as\3]  ds'\2[c'\3 as\3] }
} % 5070575575
zfc = \fixed c,, {
  \tuplet 3/2 4 { { f8\4[(g\4) as\3]  (c'\3)[as\3 g\4] }
		  { ds'\2[c'\3(as\3)] }
		  { g\4[as\3(c'\3)] } }
} % 575 757 575 757
zfd = \fixed c,, {
  \tuplet 3/2 4 { { as4\3 c8\4 }
		  { c'4\3 c8\4 }
		  { f\4[fs\4 f\4] }
		  { ds\4[f\4 ds\4] }
		}
} % 50 70 565 353

bridge = {
  \section
  \sectionLabel "Bridge"
  \time 9/8 \zfa |
  \time 4/4 \zfb |
  \time 9/8 \zfa |
  \time 4/4 \zfc |
  \time 9/8 \zfa |
  \time 4/4 \zfd
}

zga = \fixed c, {
  \tuplet 3/2 { ds4\2 as,8\3 } (<c\3 c,\4>4) <c\3 c,\4>
  \tuplet 3/2 { ds4\2 as,8\3 }
} % 557755
zgb = \fixed c, {
  <c\3 c,\4>4
  \tuplet 3/2 { c4\3 as,8\3 }
  \tuplet 3/2 { c4\3 cs8\3 }
  \tuplet 3/2 { c4\3 as,8\3 }
} % 7757875
zgc = \fixed c, {
  \tuplet 3/2 { ds4\2 as,8\3 } (<c\3 c,\4>4) <c\3 c,\4> <c\3 c,\4>
} % 557755
zgd = \fixed c, { c4\3 g\2 fs\2 f\2 } % 77987
zge = \fixed c, {
  c,4\4
  \tuplet 3/2 4 { { c4\3 as,8\3 } { c4\3 cs8\3 } { c4\3 f8\2 } }
} % 0757877
zgf = \fixed c, {
  g4\2 \tuplet 3/2 4 { { as4\1 g8\2 } { as4(c'8\1) } { as4\1 \glissando ds'8\1 } }
  ~
  \tuplet 3/2 4 {
    { ds'4\1 c'8\1  (as8\1 c'\1 as\1) }
    { g4\2 f8\2 }
    { ds\2(f\2 ds\2) }
  }
} % 979797 12
zgg = \fixed c, {
  c4\3
  \tuplet 3/2 4 {
    { as,8\3 c4\3 }
    { f8\2\^ fqs\2 f\2 }
    { ds4\2 c8\3 }
  }
} % 7577757
zgh = \fixed c, {
  \tuplet 3/2 { ds4\2 c8\3 }
  as,4\3
  \tuplet 3/2 4 {
    { f8\2\^fqs f8\2 }
    { ds4\2 c8\3 }
  }
} % 57577757
zgi = \fixed c, {
  \tuplet 3/2 4 {
    { ds4\2 c8\3 }
    { <as,\3 c,\4>8(c4\3) }
  }
  c,4\4
  \tuplet 3/2 { c4\3 as,8\3 }
} % 57<50>7075
zgj = \fixed c, {
  \tuplet 3/2 { c4\3 as,8\3 }
  g,4\4 fs,\4 f,\4
} % 75 765
zgk = \fixed c, { c8\3[as,\3] (c\3)[c\3] ds\2[as,\3] (c\3)[c\3] } % 75775577
zgl = \fixed c, {
  r8
  \tuplet 3/2 4 {
    { c8\3 f,4\4 }
    { as,8\3(c4\3) }
    { ds4\2 c8\3 }
  }
  as,8\3
} % r7557575
zgm = \fixed c, {
  \tuplet 3/2 4 {
    { f8\2\^fqs f8\2 }
    { ds4\2 c8\3 }
    { ds\2[(e\2)f\2] }
    { fs\2 \glissando [f\2ds\2] }
  }
} % 77575678/75

solo = {
  \section
  \sectionLabel "Solo"
  \zga | \zgb | \zgc | \zgd |
  \zga | \zge | \zgf | \zgg | \zgh | \zgi | \zgj | \zgk | \zgl |
  \zgk | \zgm | 
}

zha = \fixed c, {
  \tuplet 3/2 { as,4\3 c8\3\f }
  r8 c4.\3
  \tuplet 3/2 { as,4\3(c8\3) }
} % 57757
zhb = \fixed c, {
  \tuplet 3/2 4 {
    { ds,8\4\^eqf, r8 }
    { c4\3 c8\3 }
  }
  \grace as,\3 c4\3 c\3 c\3
} % 3^775777
zhc = \fixed c, {
  ds,8\^eqf,4\4
  ds4.\2 c4\3
  \tuplet 3/2 { as,8\3(c4\3) }
  as,8\3
} % 3^57575
zhd = \fixed c, {
  \tuplet 3/2 4 {
    { ds8\2\^eqf as,\3 }
    { b,4\3(as,8\3) }
    { f,8\4[(gf,\4 f,\4)] }
    { as,8\3[(c\3) as,\3] }
  }
} % 5^757 565 575
zhe = \fixed c, {
  ds8\2\^eqf4
  \tuplet 3/2 { c4\3 as,8\3}
  (c8\3) r8
  \tuplet 3/2 { ds8\2\^eqf c\3 }
} % 5^757 5^7
zhf = \fixed c, {
  \grace as,\3(c8\3) r8
  \tuplet 3/2 4 {
    { c4\3 as,8\3 }
    { c4\3 as,8\3 }
    { fs,8\4[(f,\4) as,\3] }
  }
} % 57 7575655
zhg = \fixed c, {
  \tuplet 3/2 4 {
    { c8\3(as,\3) g,\4 }
    { ds4\2 ds8\2 }
  }
  c4.\3
  \tuplet 3/2 { f8\2(g\2) as\1 }
} % 757557797
zhh = \fixed c, {
  \tuplet 3/2 4 {
    { c'8\1[(as\1)g\2] }
    { f8\2[(fs\2 f\2)] }
    { ds\2[(f\2)ds\2] }
    { c8\3(as,\3)g,\4 }
  }
} % 979787575757
zhi = \fixed c, {
  ds8\2\^eqf4
  \tuplet 3/2 { c8\3[(as,\3c\3)] }
  r4.
  \tuplet 3/2 { ds8\2[c\3 as,\3] }
} % 5^757 575
zhj = \fixed c, {
  \time 9/8
  c4.\3
  \tuplet 3/2 4 {
    { f,8\4[(fs,\4 g,\4)] }
    { as,8\3[(c\3 as,\3)] }
    { g,8\4[f,\4(g,\4)] }
  }
} % 7. 567 575 757
zhk = \fixed c, {
  ds8\2\^eqf4
  \tuplet 3/2 { c8\3[(as,\3 c\3)] }
  ds,4.\4
  \tuplet 3/2 { as,8\3[(c\3 as,\3)] }
} % 5^757 3 575
zhl = \fixed c, {
  c4.\3
  \tuplet 3/2 { ds8\2[c\3(as,\3)]}
  c4.\3
  \tuplet 3/2 { ds,4\4 ds,8\4 }
} % 7575733
zhm = \fixed c, {
  \tuplet 3/2 { ds8\2[c\3(as,\3)] }
  (c4.\3) ds,4.\4
  \tuplet 3/2 { ds8\2[c\3(as,\3)] }
} % 57573575
zhn = \fixed c, {
  c4\3
  \tuplet 3/2 4 {
    { ds,4\4 ds,8\4 }
    { as,8\3[(c\3 as,\3)] }
    { f,\4[(fs,\4)as,\3] }
  }
} % 733 575 565
zho = \fixed c, {
  c4\3
  ds8\2\^eqf
  \tuplet 3/2 4 { c4\3 as,8\3  (c4\3)c8\3 }
} % 75^7577
zhp = \fixed c, {
  \tuplet 3/2 { f,4\4 f,8\4 }
  fs,4\4 g,4\4
  \tuplet 3/2 { as,4\3 c8\3 }
} % 556757
zhq = \fixed c, { c4\3 ds\2 c2\3 } % 57
zhr = \fixed c, {
  f4\2 fs\2 g\2
  \tuplet 3/2 4 {
    as4\1 c'8\1 ~
    c'4\1 as8\1  g4\2 fs8\2  \glissando  ds'8\1 c'\1 as\1  (c'4\1) as8\1
  }
} % 78979~798/12 97~97
zhs = \fixed c, {
  \tuplet 3/2 4 { g4\2 fs8\2  f4\2 ds8\2  f4\2 \glissando g8\2 }
} % 98757/9
zht = \fixed c, {
  \tuplet 3/2 4 {
    { r4 \glissando fs8\2 }
    { r4 \glissando f8\2 }
  }
  r4 ds4.\2 c8\3
} % /8 /7 r57
zhu = \fixed c, {
  \tuplet 3/2 4 { ds4\2 c8\3  (as,4\3) g,8\4 }
  \grace as,8\3 \glissando c2\3
} % 57575/7

outro = {
  \section
  \sectionLabel "Outro"
  \zha |
  \time 5/4 \zhb | \time 11/8 \zhc | \time 4/4 \zhd |
  \time 9/8 \zhe | \time 4/4 \zhf | \time 9/8 \zhg |
  \time 4/4 \zhh | \time 5/4 \zhi | \zhj |
  \time 10/8 \zhk | \zhl | \zhm |
  \time 4/4 \zhn | \zho | \zhp ~ \zhq | \zhr |
  \time 3/4 \zhs | \time 5/4 \zht | \time 4/4 \zhu |
}

music = {
  \time 4/4
  \opening \break
  \intro \break
  \preverse \break
  \verse \break
  \chorus \break
  \bridge \break
  \solo \pageBreak
  \outro \fine
}

\score {
  <<
    \new Staff {
      \clef "bass_8"
      \key c \major
      \music
    }
    \new TabStaff {
      \set Staff.stringTunings = \c-std-tuning
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
