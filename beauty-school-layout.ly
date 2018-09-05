\paper {
bookTitleMarkup = \markup { 
  \column {
    
    \column { 
    \override #'(baseline-skip . 5)
        \fill-line { 
          {\bold \underline \abs-fontsize #18 \fromproperty #'header:dedication } 
          {\bold \abs-fontsize #18 \fromproperty #'header:subtitle } 
                  } 
        }
    
    \column { 
      \null 
      \fill-line {
          {\bold \abs-fontsize #16 \fromproperty #'header:poetDates }
          {\bold \abs-fontsize #16 \fromproperty #'header:subsubtitle }
          
            }
      \fill-line {\bold \abs-fontsize #24 \fromproperty #'header:title } 
    }
    
    \column {

      \column {
    \null
        \fill-line {
                { \italic \fromproperty #'header:poet } 
                { \italic \fromproperty #'header:composer } 
              }
          }
        }
      }
    }
  }

\header {
%tried in-line markup here
% title = \markup { \fontsize #4 \bold "Dead Mom"}
  title = "Dead Mom"
  dedication = "PIANO/VOCAL" 
  composer = "Music & Lyrics by Eddie Perfect"
  subtitle = "BEETLEJUICE"
  subsubtitle= "#5"
  poet = "     "
  poetDates = "     "
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


 
}

text = \lyricmode {
  Dead Mom, dead mom I need a lit -- tle help here. 
  I'm prob -- 'ly

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
 
}

songChords =   \chordmode {
     a1 s1 s1 s1 
     s1 cis1:m fis1:m d1 
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