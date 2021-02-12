\version "2.20.0"  % necessary for upgrading to future LilyPond versions.
\pointAndClickOff


\header {
  title = "Chinese New Year"
  composer = "Arranged by Crystal Yuen"
  tagline = "Arranged in Feb 2021 for students"
}

upper = \relative c''{
  \repeat volta 2{
    ees4.-5 des8-4 bes4-3 aes-2 | ges1-1 | bes4.-5 aes8 ges4 ees| des1 \break
    des4.-1 ees8 des4 ees | ges4.-1 aes8-2 bes4-3 des-4 | ees4.-5 des8-4 bes4-3 aes-2 | 
    }
    \alternative{
      {ges1-1}
      {ges1}
    }
}



lower = \relative c'{
  \clef bass
  \repeat volta 2{
    \repeat unfold 7{<ges bes>2 des}
  }
    \alternative{
      {<ges bes>2 des}
      {<ges bes>1}
    }
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
    \key ges \major
    \upper
    \bar "|."
  }


  \new Staff = "left"
  {
    \set Staff.midiInstrument = #"acoustic grand"
          \set Staff.midiMinimumVolume = #0.9
    \set Staff.midiMaximumVolume = #1
    \time 4/4
    \key ges \major
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