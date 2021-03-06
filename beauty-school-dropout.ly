\version "2.14.0"

bookTitleMarkup = \markup { 
  \column { 
    \column { 
      \line { \italic \fromproperty #'header:title } 
      } 
    } 
  }

\header {
  title = \markup { \fontsize #4 \bold "Dead Mom"}
  subtitle = "PIANO/VOCAL" 
	composer = "Music & Lyrics by Eddie Perfect"
	%subtitle = "#5"
}

melody = \relative c'' {
%put measure numbers on every bar
  \override Score.BarNumber.break-visibility = ##(#f #t #t)
  \clef treble
  \key a \major
  \time 4/4
  \autoBeamOn
  \tempo "Earnest Teen Rock" 4 = 120

%<<MUSIC START>>
  r1 |
  r1 |
  r1 |
  r2^\markup { \bold VAMP } r8 e,4 cis 8
  r2 r8 e4 gis8~	
  (gis4 fis8[ e~ ]e) fis4 cis8~
  cis4 b8 a8~a4 b8 b
  a4 r8 a8 a8 b4 cis8~ \break
  cis8 e4 fis8~fis8 gis4 fis8
  e4 r4 r8 fis8 a b~
  b4 cis8 b~b4 a8 fis8
  r2 fis8 gis4 a8~ \break \pageBreak
  a8 gis4 fis8~ fis8 e4 cis8~
  cis4 r4 r8 fis8 gis8 a8~
  a4 gis4 fis4 e8 cis8~ 
  cis8 b4. a4 b8 cis8~ \break
  cis4 e8 cis8~(cis4 e8 cis8~
  cis8 e4 cis8~cis8) b4 a8
  r1
  r2 r8 e'4 cis8 \bar "||"
  %verse 2
  r2 r4 e8 gis8~
  gis4 fis8 e8~e4 fis8 cis~
  cis4 b8 a8~a4 b8 b8
  a4 r4 a8 b4 cis8~
  cis8 e4 fis8~fis4 a8 fis8~
  fis8 e4 fis8~fis4 a8 b~
  b4 cis8 b~b4 a8 fis
  r2 fis8 gis4 a8~
  a8 gis4 fis8~fis e4 cis8~
  cis8 b r4 fis'8 gis4 a8~
  a8 gis4 fis8~fis e4 cis8~
  cis8 b4 r8 a4 b8 cis8~(\break
  cis4 e8 cis8~cis4 e8 cis8~
  cis8 e4 cis8~cis8) b4 a8
  r2. fis'8 a \bar "||"
  %chorus 1



 
}

text = \lyricmode {
  Dead Mom, dead mom I need a lit -- tle help here. 
  I'm prob -- 'ly talk -- ing to my -- self here, but dead mom I got -- ta ask: 
  Peo -- ple say you're in the ground, but I feel you all a -- round me. 
  Are you there dead mom, __ __ dead mom?
  Dead mom, if you were here I know that you would lis -- ten. 
  Dad -- die's real es -- tate am -- bi -- tions are com -- plete -- ly off the charts.
  Ev -- 'ry day they're sta -- ring at me like all hur -- ry up, get hap -- py, 
  move a -- long! __ __ __ Dead mom.

}



upper = \relative c'' {
  
  \clef treble
  \key a \major
  \time 4/4	

  r8 cis, r8 b r8 cis4.
  r8 cis r8 b r8 cis4.
  r8 cis r8 b r8 cis4.
 
\repeat volta 2 { r8 cis  r8 b r8 cis4.}
 
  r8 cis r8 b r8 cis4.
  r8 cis r8 b r8 cis4.
  r8 cis r8 b r8 cis4.
  r8 cis r8 b r8 cis4.
  r8 cis r8 b r8 cis4.
  r8 cis r8 b r8 cis4.
  r8 cis r8 b r8 cis4.
  r8 cis r8 b r8 cis4. 
  r8 cis r8 b r8 cis4.
  r8 cis r8 b r8 cis4.
  r8 cis r8 b r8 cis4.
  r8 cis r8 b r8 cis4.
  r8 cis r8 b r8 cis4.
  r8 cis r8 b r8 cis4.
  d8 d d d d d d d 
  b8 b b b b b b a
  %verse 2
  r8 cis r8 b r8 cis4.
  r8 cis r8 b r8 cis4.
  r8 cis r8 b r8 cis4.
  r8 cis r8 b r8 cis4.
  r8 cis r8 b r8 cis4.
  r8 cis r8 b r8 cis4.
  r8 cis r8 b r8 cis4.
  r8 cis r8 b r8 cis4. 
  r8 cis r8 b r8 cis4.
  r8 cis r8 b r8 cis4.
  r8 cis r8 b r8 cis4.
  r8 cis r8 b r8 cis4.
  r8 cis r8 b r8 cis4.
  r8 cis r8 b r8 cis4.
 
 
}

lower = \relative c {
  \clef bass
  \key a \major
  \time 4/4
 
 %<<MUSIC START>>
  <a e'>8-> a a a a a a  a 
  <a e'>8-> a a a a a a  a 
  <a e'>8-> a a a a a a  a 
  <a e'>8-> a a a <a e'>-> a <a e'>-> a \break 
  <a e'>8-> a a a a-> a a-> a
  <cis gis'>8-> cis cis cis cis-> cis cis-> cis
  <fis, cis'>8-> fis fis fis fis-> fis fis-> fis 
  <d' a'>8-> d d d d-> d d-> d
  <a e'>8-> a a a a-> a a-> a
  <gis e'>8-> gis gis gis gis-> gis gis-> gis 
  g8 g8 g8 g8 g8 <g d'>8-> g8 <g d'>8->
  g8 g8 g8 g8 g8 <g d'>8-> g8 <fis cis'>8->
  <fis cis'>8-> fis fis fis fis-> fis fis <d' a'>->
  d8 d d d d <d a'>8-> d <fis, cis'>8->
  fis8 fis fis fis fis-> fis fis <d' a'>->
  d8 d d d d <d a'>8-> d <a e'>8->
  a8 a a a a <a e'>-> a  <gis e'>8-> 
  gis8 gis gis gis gis <gis e'>8-> gis <gis e'>8->
  <a d fis>1
  <<{<a fis'>1} \\ {d8 d d d d d d d}>>
%verse 2
  <a e'>8-> a a a a-> a a-> a
  <cis gis'>8-> cis cis cis cis-> cis cis-> cis
  <fis, cis'>8-> fis fis fis fis-> fis fis-> fis 
  <d' a'>8-> d d d d-> d d-> d
  <a e'>8-> a a a a-> a a-> a
  <gis e'>8-> gis gis gis gis-> gis gis-> gis 
  g8 g8 g8 g8 g8 <g d'>8-> g8 <g d'>8->
  g8 g8 g8 g8 g8 <g d'>8-> g8 <fis cis'>8->
  <fis cis'>8-> fis fis fis fis-> fis fis <d' a'>->
  d8 d d d d <d a'>8-> d <fis, cis'>8->
  fis8 fis fis fis fis-> fis fis <d' a'>->
  d8 d d d d <d a'>8-> d <a e'>8->
  a8 a a a a <a e'>-> a  <gis e'>8-> 
  gis8 gis gis gis gis <gis e'>8-> gis <gis e'>8->

 
}

songChords =   \chordmode {
     a1 s1 s1 s1 
     s1 cis1:m fis1:m d1 
     a1 e/gis1 g1 s2 s4 s8 
     fis8:m s2 s4 s8 d8 s2 s4 s8 
     fis8:m s2 s4 s8 d8 s2 s4 s8 
     a8 s2 s4 s8 e/gis8 s2 s4 s4 
     d1

   }

\score {
  <<
    \new Voice = "mel" { \autoBeamOff \melody }
    \new Lyrics \lyricsto mel \text
    \new PianoStaff <<
      \new Staff = "upper" \upper
       \new ChordNames {
      \songChords
      } 
      \new Staff = "lower" \lower
     
    >>
  >>
  \layout {
    \context { \Staff \RemoveEmptyStaves }
  }
  \midi { }
}








%{ 
\book {
  \paper {
    indent = 0\mm
    scoreTitleMarkup = \markup {
      \fill-line {
        \null
        \override #`(direction . ,UP) {
          \dir-column {
            \center-align \fontsize #-1 \bold
              \fromproperty #'header:mycustomtext %% User-defined field
            \center-align \fontsize #4 \bold
              \fromproperty #'header:piece
          }
        }
        \fromproperty #'header:opus
      }
    }
  }
  \header { tagline = ##f }
  \score {
    { s1 }
    \header {
      piece = "FUGA I"
      mycustomtext = "A 4 VOCI" %% User-defined field
      opus = "BWV 846"
    }
  }
}
%}
