%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\include "globals.ily"

\header { 
  title = "Sonata in G minor"
  opus = "K.102"
  source = "https://ks15.imslp.org/files/imglnks/usimg/0/00/IMSLP626884-PMLP335284-Sonata_K._102_(as_L._89).pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.25 . 0.25) (0.25 . 0.25) (0 . 0) (0 . 0))
                      ) \etc
slurShapeB = \shape #'((0 . 0.2) (0 . 0.2) (0 . 0) (0 . 0)) \etc
slurShapeC = \shape #'((0 . 0.2) (0 . 0.2) (0 . 0) (0 . 0)) \etc
slurShapeD = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 1) (0 . 0) (0 . -1) (0 . 0))
                      ) \etc
slurShapeE = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.25 . 1.5) (0.25 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeF = \shape #'((0 . -0.75) (0 . 0) (0 . 0) (0 . 0)) \etc
slurShapeG = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.25 . 0) (0 . 0.25) (0 . 0) (0 . 0))
                      ) \etc
slurShapeH = \shape #'((0 . 0.2) (0 . 0.2) (0 . 0) (0 . 0)) \etc
slurShapeI = \shape #'((0 . -2) (0 . 2) (0 . 0) (0 . 0)) \etc
slurShapeJ = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.25 . 0.25) (0.25 . 1) (0 . 1) (0 . -1))
                      ) \etc
slurShapeK = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . -2) (0 . -2) (0 . -2) (0 . -2))
                      ) \etc
slurShapeL = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 2) (0 . 2.5))
                      ) \etc

%
% Music
%

global = {
  \time 3/8
  \key g \minor
}

rightHandUpper = \relative { 
  \repeat volta 2 {
    g''8( d a |
    bf4 c8 |
    d8 ef g,) |
    \tag layout { fs4(\prallprall } \tag midi { fs4(\prall } g8) |
    r8 \voiceOne a8.( bf32 c |
    bf8 a g) |
    \oneVoice r8 \voiceOne a8.( bf32 c |
    bf8 a g) |
    
    \barNumberCheck 9
    \oneVoice r8 \voiceOne a8.( bf32 c |
    bf8 c d~ |
    \oneVoice d8 c16 bf a g) |
    \appoggiatura { g16 } a4 d8-\slurShapeA (~ |
    d8 c16 bf a g) |
    \appoggiatura { g16 } a4 d8-\slurShapeB (~ |
    d8 c16 bf a g) |
    \tag layout { d4.\prallprall } \tag midi { d4.\prall } |
    
    \barNumberCheck 17
    d16-\slurShapeK _(^\aTempo g fs bf a c |
    bf8-.) c-. \tag layout { d-\slurShapeC (~^\sf }
      \tag midi { \after 16 \p d(~\ff } |
    d16 ef d c bf a) |
    bf8(\prall a16 bf g8-.) |
    d16_( g fs bf a c |
    bf8-.) c-. \tag layout { d-\slurShapeD (~^\sf } 
      \tag midi { \after 16 \p d(~\ff } |
    d16 ef' d c bf a) |
    bf8(\prall a16 bf g8-.) |
    
    \barNumberCheck 25
    bf16( g e cs e bf' |
    a16 g f e d c'! |
    bf16 g e cs e bf' |
    a16 g f e d c'! |
    bf16 g e cs e bf' |
    a16 e f cs d a |
    bf16 f g e f d) |
    \tag layout { \appoggiatura { d16 } cs4.\prallprall }
      \tag midi { \appoggiatura { d16 } cs4.\prall } |
    
    \barNumberCheck 33
    bf'16-\slurShapeE ( g e cs e bf' |
    a16 g f e d c'! |
    bf16 g e cs e bf' |
    a16 g f e d d' |
    cs16 bf g e g cs |
    d16 f, g e' a, f' |
    bf,16 g' f e d cs) |
    \appoggiatura { cs16 } d4. |
    
    \barNumberCheck 41
    bf16( g e cs e bf' |
    a16 g f e d c'! |
    bf16 g e cs e bf' |
    a16 g f e d d' |
    cs16 bf g e g cs |
    d16 f, g e' a, f' |
    bf,16 g' f e d cs) |
    d,16( f a d a f' |
    
    \barNumberCheck 49
    e16 g f e d cs) |
    d,16( f a d a f' |
    e16 g f e d cs) |
    d,16( f a d a f' |
    e16 g f e d cs) |
    \tag layout { d4.\prallprall ^\trillNatural } \tag midi { d4.\prall } |
  }
  \repeat volta 2 {
    a'8( fs d |
    c4) c8( |
    
    \barNumberCheck 57
    a'8 fs c |
    cs8-.) d4( |
    g8 d bf |
    b8-.) c4-\slurShapeL ( |
    a'8 fs c |
    a8-.) bf4(~ |
    bf8 d g) |
    \appoggiatura { f!32 } \voiceFour ef4^( s8 |
    
    \barNumberCheck 65
    \hideNoteHead g8) s4 |
    \oneVoice \appoggiatura { g,32 } a4 d8->-\slurShapeG (~ |
    d8 c16 bf a g) |
    \appoggiatura { g32 } a4 d8-\slurShapeH (~ |
    d8 c16 bf a g) |
    \tag layout { d4.\prallprall } \tag midi { d\prall } |
    f16(^\aTempo af g c b d |
    \tag layout { c8\prallprall } \tag midi { c\prall } b-.) c-. |
    
    \barNumberCheck 73
    f,16( af g c b d |
    \tag layout { c8\prallprall } \tag midi { c\prall } b-.) c-. |
    f,16( af g ef' d f |
    \tag layout { ef8\prallprall } \tag midi { ef\prall } d-.) ef-. |
    f,16( af g ef' d f) |
    \tag layout { ef8(\prallprall } \tag midi { ef(\prall } d16 ef c8) |
    ef16( c a! fs a ef' |
    d16 c bf a g f'! |
    
    \barNumberCheck 81
    ef16 c a fs a ef' |
    d16 c bf a g g' |
    fs16 ef c a c fs |
    g16 bf, c a' d, bf' |
    ef,16 c' bf a g fs) |
    \appoggiatura { fs32 } g4. |
    ef16-\slurShapeJ ( c a fs a ef' |
    d16 c bf a g f'! |
    
    \barNumberCheck 89
    ef16 c a fs a ef' |
    d16 c bf a g g' |
    fs16 ef c a c fs |
    g16 bf, c a' d, bf' |
    ef,16 c' bf a g fs) |
    g,16( bf d g d bf' |
    a16 c bf a g fs) |
    g,16-\slurShapeI ( bf d g d bf' |
    
    \barNumberCheck 97
    a16 c bf a g fs |
    g16 ef d c d c |
    bf16 a bf a g fs) |
    \tag layout { g4.\prallprall } \tag midi { g\prall } |
  }
}

rightHandLower = \relative {
  \repeat volta 2 {
    s4. * 5 |
    \voiceFour d'4. |
    s4. |
    d4. |
    
    \barNumberCheck 9
    s4. |
    d4. |
    s4. * 6 |
    
    \barNumberCheck 17
    s4. * 32 |
    
    \barNumberCheck 49
    s4. * 6 |
  }
  \repeat volta 2 {
    s4. * 2 |
    
    \barNumberCheck 57
    s4. * 7 |
    \voiceFour \hideNoteHead ef'4-\slurShapeF ( <d fs>8~ |
    
    \barNumberCheck 65
    <d g>8 c16 bf a g) |
    s4. * 7 |
    
    \barNumberCheck 73
    s4. * 24 |
    
    \barNumberCheck 97
    s4. * 4 |
  }
}

rightHand = {
  \global
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHandUpper = \relative {
  \repeat volta 2 {
    s4. * 4 |
    \voiceThree d'4. |
    s4. |
    d4. |
    s4. |
    
    \barNumberCheck 9
    d4. |
    s4. * 7 |
    
    \barNumberCheck 17
    s4. * 32 |
    
    \barNumberCheck 49
    s4. * 6 |
  }
  \repeat volta 2 {
    s4. * 2 |
    
    \barNumberCheck 57
    s4. * 7 |
    \voiceThree c4.~ |
    
    \barNumberCheck 65
    c4. |
    s4. * 7 |
    
    \barNumberCheck 73
    s4. * 24 |
    
    \barNumberCheck 97
    s4. * 4 |
  }
}

leftHandLower = \relative {
  \repeat volta 2 {
    R4. |
    g'8( d a |
    bf8-.) c4( |
    d8 ef g,) |
    \voiceTwo fs8( e d |
    g8 a bf) |
    fs8( e d |
    g8 a bf) |
    
    \barNumberCheck 9
    fs8( e d |
    g8 a bf) |
    \oneVoice <c, c'>8-. <d d'>-. <ef! ef'!>-.
    <d d'>8-. <c c'>-. <bf bf'>-. |
    <c c'>8-. <d d'>-. <ef ef'>-.
    <d d'>8-. <c c'>-. <bf bf'>-. |
    <ef, ef'>4.->( |
    <d d'>4.) |
    
    \barNumberCheck 17
    R4. |
    g'16( c bf ef d g |
    fs8-.) e-. d-. |
    g,,4. |
    R4. |
    g'16( c bf ef d g |
    fs8-.) e-. d-. |
    g,,4. |
    
    \barNumberCheck 25
    e''8-. g-. e-. |
    f8-. a-. f-. |
    e8-. g-. e-. |
    f8-. a-. f-. |
    e8-. g-. e-. |
    f4 d8-. |
    g,4 bf8-. |
    a,4. |
    
    \barNumberCheck 33
    e'8-. g-. e-. |
    f8-. a-. f-. |
    e8-. g-. e-. |
    f8-. a-. f-. |
    e8-. g-. e-. |
    f8-. e-. d-. |
    g8( a-.) a,-. |
    d4.-> |
    
    \barNumberCheck 41
    e8-. g-. e-. |
    f8-. a-. f-. |
    e8-. g-. e-. |
    f8-. a-. f-. |
    e8-. g-. e-. |
    f8-. e-. d-. |
    g8( a-.) a,-. |
    d8-. e-. f-. |
    
    \barNumberCheck 49
    g8( a-.) a,-. |
    d8-. e-. f-. |
    g8( a-.) a,-. |
    d8-. e-. f-. |
    g8( a-.) a,-. |
    d,4.-> |
  }
  \repeat volta 2 {
    R4. |
    a'''8( fs ef! |
    
    \barNumberCheck 57
    c4.) |
    a'8( g d |
    bf4.) |
    g'8( fs c |
    a4.) |
    fs'8( g d |
    bf8 g bf |
    \voiceTwo c8)( c, d |
    
    \barNumberCheck 65
    ef4.) |
    \oneVoice <d d'>8-. <c c'>-. <bf bf'>-. |
    <c c'>8-. <d d'>-. <ef ef'>-. |
    <d d'>8-. <c c'>-. <bf bf'>-. |
    <ef, ef'>4.->( |
    <d d'>4.) |
    \clef treble d''8-. d-. <d f>-. |
    <ef g>8-. q-. q-. |
    
    \barNumberCheck 73
    d8-. d-. <d f>-. |
    <ef g>8-. q-. q-. |
    <b d>8-. q-. <b g'>-. |
    <c ef g>8-. q-. q-. |
    <b d>8-. q-. <b g'>-. |
    <c ef g>4. |
    \clef bass a8-. c-. a-. |
    bf8-. d-. bf-. |
    
    \barNumberCheck 81
    a8-. c-. a-. |
    bf8-. d-. bf-. |
    a8-. c-. a-. |
    bf8-. a-. g-. |
    c8( d-.) d,-. |
    g,4.-> |
    a'8-. c-. a-. |
    bf8-. d-. bf-. |
    
    \barNumberCheck 89
    a8-. c-. a-. |
    bf8-. d-. bf-. |
    a8-. c-. a-. |
    bf8-. a-. g-. |
    c8( d-.) d,-. |
    g8-. a-. bf-. |
    c8( d-.) d,-. |
    g8-. a-. bf-. |
    
    \barNumberCheck 97
    c8( d-.) d,-. |
    g8-. a-. bf-. |
    c8( d-.) d,-. |
    g,4.-> |
  }
}

leftHand = {
  \global
  \clef bass
  \mergeDifferentlyDottedOn
  <<
    \new Voice \leftHandUpper
    \new Voice \leftHandLower
  >>
}

dynamics = {
  \override TextScript.Y-offset = -0.5
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s8\f s4\p |
    s4. * 3 |
    s8 s4\mf |
    s4. |
    s8 s4\p |
    s4. |
    
    \barNumberCheck 9
    s8 s4\f |
    s4. * 2 |
    s4 s8\p |
    s4. |
    s4 s8\f |
    s8 s4-\tweak Y-offset -1.5 ^\pocoRit |
    s4. |
    
    \barNumberCheck 17
    s4.\p |
    s4. * 2 |
    \tag layout { s4.\sf } \tag midi { s8\f s4\p } |
    s4. * 3 |
    \tag layout { s4.-\tweak Y-offset -1.5 \sf } \tag midi { s8\f s4\p } |
    
    \barNumberCheck 25
    s4.\p |
    s4.\cresc |
    s4. * 3 |
    s4.\f |
    s4. * 2 |
    
    \barNumberCheck 33
    s4.\p |
    s4.\cresc |
    s4. * 3 |
    s4.-\tweak Y-offset -2 \f |
    s4. * 2 |
    
    \barNumberCheck 41
    s4.\p |
    s4.\cresc |
    s4. * 3 |
    s4.\f |
    s4. * 2 |
    
    \barNumberCheck 49
    s4. |
    s4.\p |
    s4. |
    s4.\f |
    s4. * 2 |
  }
  \repeat volta 2 {
    s4.-\tweak Y-offset -2.5 \p |
    s4 s8\mf |
    
    \barNumberCheck 57
    s4. |
    s8 s4\p |
    s4. * 3 |
    s8 s4\cresc |
    s4. |
    s4.-\tweak X-offset -2 \mf |
    
    \barNumberCheck 65
    s4. |
    s8 s4\p |
    s4.-\tweak Y-offset 0.5 \cresc |
    s4. |
    s8\f s4^\pocoRit |
    s4. |
    s4.-\tweak Y-offset 0 \p |
    s8\> s4\! |
    
    \barNumberCheck 73
    \tag layout { s4. } \tag midi { s\p } |
    s8\> s4\! |
    \tag layout { s4. } \tag midi { s\p } |
    s8\> s4\! |
    \tag layout { s4. } \tag midi { s\p } |
    \tag layout { s4.\sf } \tag midi { s8\mf s4\p } |
    s4.\p |
    s4.\cresc |
    
    \barNumberCheck 81
    s4. * 3 |
    s4.\f |
    s4. * 2 |
    s4.\p |
    s4.\cresc |
    
    \barNumberCheck 89
    s4. * 3 |
    s4.\f |
    s4. |
    s4.\p |
    s4. |
    s4.\f |
    
    \barNumberCheck 97
    s4. * 4 |
  }
}

tempi = {
  \repeat volta 2 {
    \tempo "Allegro" 4. = 88
    s4. * 8 |
    
    \barNumberCheck 9
    s4. * 6 |
    \set Score.tempoHideNote = ##t
    s8 \tempo 4. = 80 s \tempo 4. = 72 s |
    s4. |
    
    \barNumberCheck 17
    \tempo 4. = 88
    s4. * 32 |
    
    \barNumberCheck 49
    s4. * 4 |
    s8 \tempo 4. = 80 s \tempo 4. = 72 s |
    s4. |
  }
  \repeat volta 2 {
    \tempo 4. = 88
    s4. * 2 |
    
    \barNumberCheck 57
    s4. * 8 |
    
    \barNumberCheck 65
    s4. * 4 |
    s8 \tempo 4. = 80 s \tempo 4. = 72 s |
    s4. |
    \tempo 4. = 88
    s4. * 2 |
    
    \barNumberCheck 73
    s4. * 24 |
    
    \barNumberCheck 97
    s4. * 2 |
    \tag layout { s4. * 2 | }
    \tag midi {
      \alternative {
        {
          s8 \tempo 4. = 80 s \tempo 4. = 72 s |
          s4. |
        }
        {
          \tempo 4. = 76 s8 \tempo 4. = 66 s \tempo 4. = 58 s |
          \tempo 4. = 50 s4. |
        }
      }
    }
  }
}

forceBreaks = {
  % page 1
  s4. * 6 \break
  s4. * 6 \break
  s4. * 5 \break
  s4. * 5 \break
  s4. * 5 \break
  s4. * 5 \pageBreak
  
  % page 2
  s4. * 6 \break
  s4. * 6 \break
  s4. * 5 \break
  s4. * 5 \break
  s4. * 6 \break
  s4. * 6 \pageBreak
  
  % page 3
  s4. * 6 \break
  s4. * 6 \break
  s4. * 5 \break
  s4. * 6 \break
  s4. * 5 \break
}

\score {
  \keepWithTag layout  
  \new PianoStaff \with {
    \override StaffGrouper.staff-staff-spacing = 
      #'((basic-distance . 10)
         (padding . 1))
  } <<
    \new Staff = "upper" \rightHand
    \new Dynamics \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics \tempi
    \new Devnull \forceBreaks
  >>
  \layout {}
}

\include "articulate.ly"

\score {
  \keepWithTag midi
  \articulate <<
    \new Staff = "upper" << \rightHand \dynamics \tempi >>
    \new Staff = "lower" << \leftHand \dynamics \tempi >>
  >>
  \midi {}
}
