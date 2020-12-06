\version "2.20.0"  % necessary for upgrading to future LilyPond versions.
\pointAndClickOff


\header {
  title = "Joy to the World"
  composer = "Arranged by Crystal Yuen"
  tagline = "Arranged in December 2020 for students"
}

upper = \relative c''{
  c2\f(-5 b4. a8 | g2.) f4( | e2 d2 | c2.)  g'4 | \break
  a2. a4 | b2. b4 | c2. c4(\mf \break
  c4 b a g | g4. f8 e4) c'( | c b a g | g4. f8 e4 e\p) | \break
  e4  e e e8( f | g2.) f8( e |   d4) d d d8( e | f2.) e8(\f d | \break
  c4 c'2 a4 | g4. f8 e4 f | e2 d | c1)
}



lower = \relative c{
  \clef bass
  c2( g'4. f8 | e2.) f4 | g2 g | c,2. e4 | f2. f4 | g2. g4 | c,2. c4 |
  c2( c | c1) | c2( c c1) | r2. c4-. | c-. c-. c-. c-. |
  g'2. g4-. | g-. g-. g-. g-. | c,2. f4 | e2. f4 | g2 g | c,1 |
}


\score {

<<
  
  \new PianoStaff
  <<
  \new Staff = "right"
  {
    \set Staff.midiInstrument = #"acoustic grand"
          \set Staff.midiMinimumVolume = #0.9
    \set Staff.midiMaximumVolume = #1
    \time 4/4
    \key c \major
    \tempo "Majestically"
    \upper
    \bar "|."
  }


  \new Staff = "left"
  {
    \set Staff.midiInstrument = #"acoustic grand"
          \set Staff.midiMinimumVolume = #0.9
    \set Staff.midiMaximumVolume = #1
    \time 4/4
    \key c \major
    \lower
    \bar "|."
  }

  >>
>>


\layout {
    #(layout-set-staff-size 26)

  }

%\midi{}
}