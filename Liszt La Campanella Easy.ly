\version "2.18.2"  % necessary for upgrading to future LilyPond versions.
\pointAndClickOff

\header
{
	title = "Liszt - La Campanella (Easy)"
	subtitle = "Play the notes like skipping beans unless specified"
	composer = "Arranged by Crystal Yuen"
	tagline = "Arranged Mar, 2021"
}


%Right hand

rh = \relative c'''{
	r8 r8 r8 r8 e e | e r r r e e | e r e e r e | \fermata e8 r e, e' e d | \break
	c c b a gis-2 a-3 | b-4 e,-1 e-3 f-4 e d | c c-3 b a gis-2 a | b(-4 e,)-1 e'-1 e'-5 e d |\break
	c c b a gis a | b e, e f e d | e(-1 a16) c e8 e,-1( gis16) b e8 | a,8-1 r r \ottava #1 a'8 \ottava #0 r r|

}



%Below are left hands
lh= \relative c'{
	r8 e e e r r | r e e e r r | r e r r e r | R2.
	a,8 r r c r r | e r r gis-2 r r | a r r f r r | e r r r4. |
	a,8 r r c r r | e r r d-4 e-3 f-2 | e---1 r r e---2 r r | a-1 e c a r r|
	}



% Putting the stuff together
upper = \relative c'{
	\clef treble
	\key c\major
	\time 6/8
	\rh
	\bar "|."

}

lower = \relative c{
	\clef treble
	\key c\major
	\time 6/8
	\lh	
	\bar "|."

}




\score {
<<
	
	\new PianoStaff
	<<
	\new Staff = "right"
	{
	\tempo "Giocoso"
		\set Staff.midiInstrument = #"acoustic grand"
        	\set Staff.midiMinimumVolume = #0.9
		\set Staff.midiMaximumVolume = #1
		\upper
	}

	%\new Dynamics{	}

	\new Staff = "left"
	{
		\set Staff.midiInstrument = #"acoustic grand"
        	\set Staff.midiMinimumVolume = #0.9
		\set Staff.midiMaximumVolume = #1
		\lower
	}

	>>
>>

\layout {
    #(layout-set-staff-size 26)

  }
%\midi{}
}
