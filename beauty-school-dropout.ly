\version "2.14.0"

\header {
	title = "Dead Mom"
	composer = "Music & Lyrics by Eddie Perfect"
	subtitle = "#5"
}

melody = \relative c'' {
%put measure numbers on every bar
  \override Score.BarNumber.break-visibility = ##(#f #t #t)
  
  \clef treble
  \key a \major
  \time 4/4
  \autoBeamOn

  \tempo 4 = 120


  r1 |

  r2^\markup { \bold VAMP } r8 e,4 cis 8

r2 r8 e4 gis8~	

(gis4 fis8[ e~ ]e) fis4 cis8~

cis4 b8 a8~a4 b8 b

a4 r8 a8 a8 b4 cis8~ \break

cis8 e4 fis8~fis8 gis4 fis8

e4 r4 r8 fis8 a b~

b4 cis8 b~b4 a8 fis8

r2 fis8 gis4 a8~ \break
%11
a8 gis4 fis8~ fis8 e4 cis8~
%12
cis4
 
}


text = \lyricmode {
 Dead Mom, dead mom I need a lit -- tle help here. 
 I'm prob -- 'ly talk -- ing to my -- self here, but dead mom I got -- ta ask: Peo -- ple say you're in the ground
}



upper = \relative c'' {
  
  \clef treble
  \key a \major
  \time 4/4	

  r8 cis, r8 b r8 cis4.
 
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
 
 
}

lower = \relative c {
  \clef bass
  \key a \major
  \time 4/4
 
  <a e'>8-> a a a a a a  a 
   
  <a e'>8-> a a a <a e'>-> a <a e'>-> a
  \break
   
  <a e'>8-> a a a a-> a a-> a
   
 <cis gis'>8-> cis cis cis cis-> cis cis-> cis
   
 <fis, cis'>8-> fis fis fis fis-> fis fis-> fis  
   
 <d' a'>8-> d d d d-> d d-> d
 
 <a e'>8-> a a a a-> a a-> a
 
 <gis e'>8-> gis gis gis gis-> gis gis-> gis
 
 g8 g8 g8 g8 g8 <g d'>8-> g8 <g d'>8->
  
 g8 g8 g8 g8 g8 <g d'>8-> g8 <fis cis'>8->
 %11
  <fis cis'>8-> fis fis fis fis-> fis fis <d' a'>->
 
 
}

songChords =   \chordmode {
     a1 a1 a1 cis1:m fis1:m d1 a1 e/gis1 g1 s2 s4 s8 fis8:m s2 s4 s8 d8
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