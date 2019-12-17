% Between Twighlight And Dawn
\version "2.18.2"
\include "definitions_No-Tab.ly"
\include "IntroGuitar.ly"
\include "IntroChordNames.ly"
\include "ARhythmGuitar.ly"

\book {
 \header {
  title = "Between Twighlight And Dawn"
  subtitle = "DRAFT"
  subsubtitle = "v0.1"
  composer = "John Jorgenson"
  copyright = \markup { \char ##x00A9 Copyright Jorgensongs 2014 }
 }

\score {
%\unfoldRepeats
\new StaffGroup <<
   \new ChordNames {
   \override ChordName #'font-size = #-1
%  \IntroChordNames
   }
  \new Staff \with {
   instrumentName = \markup {\line {"Guitar"}}
   \clef "treble_8"
  }{
  \key f \major
  \tempo 4. = 148
  \time 12/8   
   \IntroGuitar
  }
  \new TabStaff {
    \IntroGuitar
  }
  \new Staff \with {
       instrumentName = \markup {\line {"Rhythm guitar"}}
       \clef "treble_8"
  }{
    \key f \major
    \ARhythmGuitar
  }
  \new TabStaff {
    \ARhythmGuitar
  }
 >> % StaffGroup
 \layout {
  \context {
   \Score {
    \override StaffGrouper.staff-staff-spacing.padding = #5
    \override StaffGrouper.staff-staff-spacing.basic-distance = #5
   }
  }
  \context { \TabStaff \remove Clef_engraver }
 }
\midi {\tempo 4 = 120}
} % score
} % book
