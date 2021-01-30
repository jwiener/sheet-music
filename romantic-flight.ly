\version "2.20.0"
% this began with the orchestra/piano template from the following URL: https://lilypond.org/doc/v2.20/Documentation/learning/orchestra-choir-and-piano

% QUESTION: How do you put a dynamic on the last 8th of the bar when it's a whole note?


%*******************
%      GLOBALS
%*******************  
#(set-global-staff-size 13)

\paper {
  #(set-paper-size "tabloid")
  indent = 3.0\cm  % add space for instrumentName
  short-indent = 1.5\cm  % add less space for shortInstrumentName
}


\header { 
  title = "3m25"
  subtitle = "Romantic Flight (concert pitch)"
  composer = "John Powell"
 }



%Global Variables% 
% \keyTime = {\time 3/4 \key b \major }






%*******************
%MUSIC VARIABLES
%*******************

%ALL BARLINES DEFINED ON TOP STAFF!
piccoloMusic = \relative c'' {\tempo 4 = 109 \time 3/4 \key b \major | s2. | s2. \bar "||" | s2.*8 \pageBreak| s2.*3 | s2. | \tempo   "(-7)" 4 = 102   s2.\bar "||" | s2. | s2. \pageBreak | s2.*6 \pageBreak}

fluteMusic = \relative c' { \time 3/4 \key b \major |s2.*17 | s2.*6  }
clarinetIMusic = \relative c'' { \time 3/4 \key b \major |s2.*10 | 
                                 s2.*7 | r2. | r2. | cis,4\mf\<( dis fis) | b2. | b4 cis4.( dis8) | cis2.\> | %page 2
                                 r2.\mf %page 3
}
clarinetII-IIIMusic = \relative c'' {  \time 3/4 \key b \major  |s2.*10 | 
                                       s2.*4 | << {r2.} \\ {r4 b,4.\mf( ais8)}>> | <e' b>8-.\mf _\markup{\italic "leggiero"}[ <e b>-.] <dis b>-. 8-. r <dis b>-. | <dis b>-. 8-. r <dis b>-. r <dis b>-. %page 2
                                       <ais cis>8-. | | | | | |
}
bassoonI-IIMusic = \relative c' {\clef bass \time 3/4 \key b \major | s2.*15 | <e, b'>8-.\mf_\markup{\italic "leggiero"} [ 8-.] <dis' b>8-. 8-. r <dis b>8-. |  <dis b>8-.[ 8-.] <dis b>8-. 8-. r <dis b>8-.   }
contrabassoonMusic = \relative c' {\clef bass \time 3/4 \key b \major | s2.*15 | e,,8-. \mf_\markup{\italic "leggiero"}  r b'-. r b'-. r | b,-. r r b'-. fis-.[ b,-.] }

%%%%BRASS VARIABLES%%%
trumpetMusic = \relative c { \time 3/4 \key b \major | s2.*17 }
% Key signature is often omitted for horns

hornOneMusic =  \relative c {\time 3/4 \key b \major | s2.*14 | r4 ^"a6" b'\mf _\markup{ \italic "con amore"} ( cis) |  e4-- dis4.( \< fis8) | dis2.\!\> |  cis4\!\<  b4.( dis8) | fis,2.\!\> | cis'4\!  }

tromboneOneMusic = \relative c { \clef bass \time 3/4 \key b \major | s2.*17 }


  %%%%%% PERCUSSION VARIABLES  %%%%%%
timpaniMusic = \relative c {  \clef bass \time 3/4 \key b \major | s2.*17  }
glockMusic = \relative c'' {\time 3/4 \key b \major | s2.* 17  }
percussionMusic = \relative c {\time 3/4 \key b \major |  s2.*17  }
susCymMusic = \relative c {
  \time 3/4 \key b \major 
  |  s2.*14 | 
  \override NoteHead.style = #'harmonic
  e''2.:32\p\< | e2.\mf  | r2.}


celestaRHMusic = \relative c { \time 3/4 \key b \major | s2.*17 }
celestaLHMusic = \relative c { \clef bass \key b \major | s2.*17 }
harpRHMusic = \relative c { \time 3/4 \key b \major  | s2.*10 | r2. | r8\mf b' e gis b4 | r8 b, dis[ gis] b[ dis] | r4 \>  b,4 e | fis b cis \p | r2. | r2. }
harpLHMusic = \relative c { \clef bass \key b \major | s2.*10 | r2.^"a2" |  e2. | gis2. | e2. | r2.| r2. | r2.  }


%%%%CHOIR%%%%%

sopranoIMusic = \relative c'' {  \key b \major  r2. | r2. | r2. | b2.~^\p | b2. | fis2.~ | fis2 b4~ | b2. | b4^\< (cis2~ | cis2.^\mf~| cis2) fis4~| fis2 b,4( | dis2.^\> | b2.) | r2.\!\mf r2. | r2. }
sopranoILyrics = \lyricmode { Ooh -- ooh -- ooh -- ooh -- ooh -- ooh }

sopranoIIMusic = \relative c'' { \key b \major r2. | r2. | r2. | fis,2.^\p | gis4( fis2) | dis2. | cis4(dis fis) | gis2.~ | gis2.^\< | ais2.^\mf~| ais2 b4( | gis2.) |b2.^ \>( | gis2.)|| r2.\!\mf r2. | r2. }
sopranoIILyrics = \lyricmode { Ooh -- ooh -- ooh -- ooh -- ooh -- ooh }

altoMusic = \relative c' { \key b \major r2. | r2. | r2. | dis2.^\p | e4( dis2) | b2. | ais4( b dis~ | dis2.) | e2.^\< |  fis2.~ | fis2 dis4( e2.) |  gis2.^\>( | e2.) | r2.\!\mf  r2. | r2. }

altoLyrics = \lyricmode { Ooh -- ooh -- ooh -- ooh -- ooh -- ooh}

%%%% END CHOIR %%%%%


violinSoloMusic = \relative c' 
{ 
% violin solo - info 
\key b \major \time 3/4
  \override Score.BarNumber.break-visibility = ##(#t #t #t)
% violin solo - music 
r2. | r2^"SOLO VIOLIN" b'8\mf ( cis)_\markup{ \italic "molto espress."} 
| e4 ( \grace {fis16 e} dis4.) fis8 | \grace {dis16( fis16} dis2.)\> |  cis4\!\<( \grace {dis16 cis16} b4.) dis8 | fis,2.\!\>|  \grace {fis8\!(} cis'4) \< dis fis \! (| \grace {gis16 ais16} b2.) |
b4 (\grace {cis16 b ais b} cis4. dis8)) | \grace {cis16^( dis} cis2.\>) | fis,4\!\<( gis) b\! | \grace {ais16(} gis8) fis4. dis4 | b4( \grace {cis16 b ais b} cis4. fis8) | dis8( cis8~ cis2~ | cis2.\>)|r2.\p | r2.
}


violinIMusic = \relative c' { \key b \major  s2.* 11 |  r2.^"ALTRI" |   r4^"Div." ^"con sord"  <b'' fis'>2~\pp \< | <b fis'>2.\p\<~ | <b fis'>2.~ | <b fis'>8\mf r8^"senza sord" r4 r4 | r2.}
violinIIAMusic = \relative c' { \key b \major  s2.* 15 | b2.\mf~| b2.}
violinIIBMusic = \relative c' { \key b \major  
\set Timing.beamExceptions = #'()
\set Timing.baseMoment = #(ly:make-moment 1/8)
\set Timing.beatStructure = 2,2,2
s2.* 15 | gis'8\mf( e) fis8( dis) fis8( dis) | fis8( dis) fis8( dis) fis8( dis) }
violaAMusic = \relative c { \clef alto \key b \major  s2.* 15 | gis'4--\mf fis2~ | fis2.  }
violaBMusic = \relative c { \clef alto \key b \major  
\set Timing.beamExceptions = #'()
\set Timing.baseMoment = #(ly:make-moment 1/8)
\set Timing.beatStructure = 2,2,2
s2.* 15 | e8\mf( b') fis8( b) fis8( b) | fis8( b) fis8( b) fis8( b)    }
celloAMusic = \relative c { \clef bass \key b \major  s2.* 14 |  r4 b'\mf _\markup{ \italic "con amore"} ( cis) |  e4 dis4.( \< fis8) | dis2.\!\> |  cis4\!\<  b4.( dis8) | fis,2.\!\> | cis'4\!  } 
celloBMusic = \relative c { \clef bass \key b \major  s2.* 15 | e4--\mf b2~ | b2. }
bassAMusic = \relative c { \clef "bass_8" \key b \major s2.* 15 | e,4\mf^"pizz" b b' b,4. b'8 fis8 b,8   }
bassBMusic = \relative c { \clef "bass_8" \key b \major s2.* 15 | e,,4\mf^"pizz" b' b' b,4. b'8 fis8 b,8   }


%***********************************
% END MUSIC VARIABLES SECTION
%***********************************

%***********************************
%              SCORE SECTION
%***********************************

\score {


  \layout {   

    %%%Definition of the measure number "dynamic" staff %%%
    
    \context {
      \Dynamics
      \consists #Measure_counter_engraver
      \override MeasureCounter.direction = #DOWN
      \override MeasureCounter.font-encoding = #'latin1
      \override MeasureCounter.font-shape = #'Bold
      % to control the distance of the Dynamics context from the staff:
      \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #2
      \override MeasureCounter.font-size = #+10
      \override MeasureCounter.measure-number-stencil = #(make-stencil-circler 0.1 0.3 ly:text-interface::print)
      % \override MeasureCounter.text = \markup {\circle }
      %\override MeasureCounter.text = \circle --> this is where I want to put circles around the numbers 
    }
    \context {
      \Score
      % \remove "Bar_number_engraver"
      	
    }
  }


  <<
  %%%%%% WW STAFF GROUP %%%%%%
    \new StaffGroup = "StaffGroup_woodwinds" <<

      \new Staff = "Staff_piccolo" \with 
        {
          instrumentName = "Piccolo"
          shortInstrumentName = "Picc." 
        }
        \piccoloMusic

      \new Staff = "Staff_flute" \with 
        { 
          instrumentName = "Flute 1,2" 
          shortInstrumentName = "Fl. 1,2" 
        }
        \fluteMusic

      

      \new Staff = "Staff_1clarinet" \with 
        { 
          instrumentName = "Clarinet 1"
          shortInstrumentName = "Cl. 1" 
        }
        \clarinetIMusic

      \new Staff = "Staff_23clarinet" \with 
        { 
          instrumentName = "Clarinet 2,3"
          shortInstrumentName = "Cl. 2,3" 
        }
        \clarinetII-IIIMusic

      \new Staff = "Staff_12bassoon" \with 
        {
          instrumentName = "Bassoon 1,2"
          shortInstrumentName = "Bsn. 1,2" 
        }
        \bassoonI-IIMusic
    
      \new Staff = "Staff_contrabassoon" \with 
        {
          instrumentName = "Contrabassoon"
          shortInstrumentName = "Cbsn." 
        }
        \contrabassoonMusic
    >>
  %%%%%% CLOSE WW STAFF GROUP %%%%%%
  
  %%%%%% BRASS SECTION  %%%%%%
    %%%%%% HORN STAFF GROUP  %%%%%%
    \new StaffGroup = "StaffGroup_horns" \with 
    {
      instrumentName = "Horn"
      shortInstrumentName = "Hn" 
    } 
    <<

      \new Staff = "Staff_hornI" \with 
      { 
        instrumentName = "1-6" 
        shortInstrumentName = "1-6" 
      }
       % \transposition f (JW: this score is all in c)
        % \transpose f c' \hornOneMusic
        \hornOneMusic
      \new Staff = "Staff_hornII" \with 
      { 
        instrumentName = "7-12" 
        shortInstrumentName = "7-12"
      }
        \hornOneMusic
    >>

    %%%%%% TRUMPET STAFF GROUP  %%%%%%
    \new StaffGroup = "StaffGroup_trumpets" \with 
    {
      instrumentName = "Trumpet"
      shortInstrumentName = "Tpt."
    }
    <<
      \new Staff = "Staff_trumpet_12" \with 
      { 
        instrumentName = "1.2" 
        shortInstrumentName = "1.2" 
      }
      \trumpetMusic
      \new Staff = "Staff_trumpet_34" \with 
      { 
        instrumentName = "3.4" 
        shortInstrumentName = "3.4" 
      }
      \trumpetMusic
    >> 
    
    %%%%%% TROMBONE STAFF GROUP  %%%%%%

    \new StaffGroup = "StaffGroup_lowbrass" \with 
    {
      instrumentName = "Trombone"
      shortInstrumentName = "Tbn."
    }
    <<
      \new Staff = "Staff_trombone_1234" \with 
      {
        instrumentName = "1.2.3.4"
        shortInstrumentName = "1.2.3.4"
      }
        \tromboneOneMusic
      \new Staff = "Staff_trombone_56" \with 
      {
        instrumentName = "5.6"
        shortInstrumentName = "5.6"
      }
        \tromboneOneMusic
    >>
    \new Staff = "Staff_tuba" \with 
    {
      instrumentName = "Tuba"
      shortInstrumentName = "Tba."
    }
        \tromboneOneMusic

  %%%%%% CLOSE BRASS SECTION %%%%%%

  %%%%%% PERCUSSION SECTION %%%%%%

    \new Staff = "Staff_timpani" \with 
    {
      instrumentName = "Timpani"
      shortInstrumentName = "Timp."
    }
      \timpaniMusic

    \new StaffGroup = "StaffGroup_percussion" 
    <<
    \new Staff = "Staff_glock" \with 
    {
      instrumentName = "Glockenspiel"
      shortInstrumentName = "Glock."
    }
      \glockMusic
    \new Staff = "Staff_suscym" \with 
    {
      instrumentName = "Suspended Cymbal"
      shortInstrumentName = "Sys Cym"
    }
      \susCymMusic
    \new Staff = "Staff_cyms" \with 
    {
      instrumentName = "Cymbals"
      shortInstrumentName = "Cyms."
    }
      \glockMusic
    \new Staff = "Staff_mktree" \with 
    {
      instrumentName = "Mark Tree"
      shortInstrumentName = "Mk. Tr."
    }
      \glockMusic
    \new Staff = "Staff_bassdrum" \with 
    {
      instrumentName = "Bass Drum"
      shortInstrumentName = "BD"
    }
      \glockMusic
    >>


    \new PianoStaff \with 
    {
      instrumentName = "Celesta" 
      shortInstrumentName = "Cel."
    }
    <<
      \new Staff { \celestaRHMusic }
      \new Staff { \celestaLHMusic }
    >>

    \new PianoStaff \with 
    { 
      instrumentName = "Harp 1.2" 
      shortInstrumentName = "Hp. 1.2"
    }
    <<
      \new Staff { \harpRHMusic }
      \new Staff { \harpLHMusic }
    >>


    \new ChoirStaff = "ChoirStaff_choir" <<
      
      \new StaffGroup = "section_sopranos"
      \with { \accepts Lyrics } <<

      \set StaffGroup.systemStartDelimiter = #'SystemStartSquare % sets square bracket

      \new Staff = "Staff_sopranoI" \with 
      { 
        instrumentName = "Soprano I" 
        shortInstrumentName = "S. I"
      }
      \new Voice = "sopranoI"
      \sopranoIMusic
      
      \new Lyrics \lyricsto "sopranoI" { \sopranoILyrics }
      
      \new Staff = "Staff_sopranoII"  \with 
      { 
        instrumentName = "Soprano II" 
        shortInstrumentName = "S. II"
      }
      \new Voice = "sopranoII"
      \sopranoIIMusic

      \new Lyrics \lyricsto "sopranoII" { \sopranoIILyrics }
      >>

        \new Staff = "Staff_alto" \with 
        {
          instrumentName = "Alto" 
          shortInstrumentName = "A."
        }
        \new Voice = "alto"
        \altoMusic

        \new Lyrics \lyricsto "alto" { \altoLyrics }
          >>
          
  \new Dynamics { \startMeasureCount s2.*32   \stopMeasureCount} %not really dynamics obviously 




    \new StaffGroup = "StaffGroup_violins" 
    <<

      
      \new StaffGroup = "StaffGroup_violin_one" \with 
      {
        instrumentName = "Violin I"
        shortInstrumentName = "Vln. I"
      }
      
      <<
        \set StaffGroup.systemStartDelimiter = #'SystemStartSquare % sets square bracket
        
        \new Staff = "Staff_violinsolo" 
        \violinSoloMusic
        
        \new Staff = "Staff_violinI" 
        \violinIMusic
      >>
      
      \new StaffGroup = "StaffGroup_violin_two" \with 
      {
        instrumentName = "Violin II"
        shortInstrumentName = "Vln. II"
      }
      
      <<
        \set StaffGroup.systemStartDelimiter = #'SystemStartSquare % sets square bracket
        \new Staff = "Staff_violin_two_one" 
        \violinIIAMusic
        
        \new Staff = "Staff_violin_two_two" 
        \violinIIBMusic
      >>
    
    >>
    
    \new StaffGroup = "StaffGroup_violas" \with 
    {
      instrumentName = "Viola" 
      shortInstrumentName = "Vla."
    } 
    <<
    
      \new Staff = "Staff_viola_one"
      \violaAMusic
    
      \new Staff = "Staff_viola_two"

      \violaBMusic
    >>

    \new StaffGroup = "StaffGroup_cello"  \with 
    { 
      instrumentName = "Violoncello" 
      shortInstrumentName = "Vcl."
    }
    <<
    \new Staff = "Staff_cello_one" 
    \celloAMusic
    \new Staff = "Staff_cello_two" 
    \celloBMusic
    >>
    
    \new StaffGroup = "StaffGroup_bass"  \with 
    { 
      instrumentName = "Contrabass" 
      shortInstrumentName = "Cb."
    }
    <<
    \new Staff = "Staff_bass_one" 
    \bassAMusic
    \new Staff = "Staff_bass_two" 
    \bassBMusic
    >>
    
    

  >>
  
  
  
}

%%%% /SCORE SECTION %%%%
