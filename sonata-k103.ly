%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\include "globals.ily"

\header { 
  title = "Sonata in G major"
  opus = "K.103"
  source = "https://vmirror.imslp.org/files/imglnks/usimg/a/a0/IMSLP626885-PMLP335302-Sonata_K._103_(as_L._233).pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'((0 . 0) (0 . 0) (0 . 0) (-0.25 . 0.25)) \etc
slurShapeB = \shape #'((0 . -0.5) (0 . -0.5) (0 . 0) (0 . 0)) \etc
slurShapeC = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.25 . 0.25) (0.25 . 0.25) (0 . 0) (0 . 0))
                      ) \etc
slurShapeD = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.25 . 2.5) (0.25 . 2.5) (0 . 2.5) (0 . 2.5))
                      ) \etc
slurShapeE = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.25 . 0) (0.25 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeF = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.25 . 0) (0.25 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeG = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.25 . 0) (0.25 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeH = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.25 . 0) (0.25 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeI = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.25 . 0) (0.25 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeJ = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.25 . 0) (0.25 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeK = \shape #'((0 . 0) (0 . 0) (0 . 3.5) (2 . -5)) \etc
slurShapeL = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.25 . 0) (0.25 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeM = \shape #'(
                        ((0 . 1) (0 . 0) (0 . -1) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeN = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 1) (0 . 0))
                        ((0.25 . 0) (0.25 . 1) (0 . 0) (0 . -1))
                      ) \etc
slurShapeO = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 1) (0 . 0))
                        ((0.5 . 0) (0.5 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeP = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 1) (0 . 0))
                        ((0.25 . 0) (0.25 . -1) (0 . 0.5) (0 . 0))
                      ) \etc
slurShapeQ = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.5 . 2.5) (0.5 . 2.5) (0 . 2.5) (0 . 2.5))
                      ) \etc
slurShapeR = \shape #'((0 . 0) (0 . 0) (0 . 4.5) (2 . -5)) \etc

%
% Music
%

global = {
  \time 12/8
  \key g \major
}

rightHand = \relative {
  \global
  \repeat volta 2 {
    g''8-\slurShapeA ( fs e  d a' c, b4.~  b4) c8( |
    d8 c b  a e' g,  fs4.~ fs4) g8( |
    \stemUp a8 b c  b a g)  a4.-\slurShapeB (~\prall a8 d g,) |
    a4.-\slurShapeB (~\prall a8 d g,)  a4.-\slurShapeB (~\prall a8 d g,) |
    a4(\prall g8)  a4(\prall g8)  a4.\prall \tuplet 8/6 { d16( c b a g fs e d } |
    g4) r8  a( b c  b a g) \tupletOff \tuplet 8/6 { d'16( c b a g fs e d } |
    g4) r8  a( b c  b a g) \stemNeutral g'( e b) |
    cs8(\prall b cs)  g'( e b)  cs(\prall b cs)  b'( a cs,) |
    
    \barNumberCheck 9
    d8(\prall cs d)  b'( a cs,)  d4\prall d8(  e fs g |
    fs8 e d) \tuplet 8/6 { a'16( g fs e d cs b a } d4) r8  e-\slurShapeE ( fs g |
    fs8 e d) \tuplet 8/6 { a'16( g fs e d cs b a } d4) r8  e( fs g |
    fs8 e d)  fs-\slurShapeF ( g a  as b a  g fs e |
    es8 fs g  gs a g  fs e d  e d cs) |
    cs8-\slurShapeG ( d e  fs g a  as b a  g fs e |
    es8 fs g  gs a g  fs e d  e d cs
    d4.) \offsetPositions #'(0 . 1) a'8( e f~  f cs d~  d a bf |
    
    \barNumberCheck 17
    gs4 a8)  \offsetPositions #'(0 . 1) a'8( e f~  f cs d~  d a bf |
    gs4 a8)  a'-\slurShapeI ( g! fs  e b'! a  g fs e |
    d4.) a'32( g f e d4)  f32( e d c bf4)  d32( c bf a g4) |
    gs4( a8)  a'( g! fs  e b'! a  g fs e |
    fs8 a d  fs, e) cs'(  d a fs  d e) cs'( |
    d8 a fs  d e) cs'(  d a fs  d e) cs'-\slurShapeK ( |
    d8 a fs  d a fs  d a fs  r4 r8 |
    << 
      { \staffDown \hideNoteHead d,1*3/2) | } 
      \new Voice { R1. | } 
    >>
  }
  \repeat volta 2 {
    \barNumberCheck 25
    \staffUp a''''8( g fs  e d b  c!4.) r4 r8 |
    a'8( g fs)  \acciaccatura { d } c( b a  b4.) r4 r8 |
    r4 r8 \tuplet 8/6 { d16( c b a g fs e d }  a'4) a8(  b c d) |
    a4.\prall \tuplet 8/6 { d16( c b a g fs e d }  a'4) a8(  b c d) |
    a4.\prall a'8( fs a,)  bf4(\prall a8)  a'( cs, a) |
    bf4(\prall a8)  a'8( fs a,)  bf4(\prall a8)  a'( cs, a) |
    bf4(\prall a8)  a'8( fs d)  ef4(\prall ^\trillNatural d8)  bf'( g d) |
    ef4(\prall ^\trillNatural d8)  bf'( g d)  ef4(\prall ^\trillNatural d8)
      a'( fs! d) |
    
    \barNumberCheck 33
    ef4(\prall ^\trillNatural d8)  g( ef d)  c4(\prall b!8)  af'( f d) |
    c4(\prall b8)  g'( ef d)  c4(\prall b8)  af'( f d) |
    c4(\prall b8)  d( b f)  f4(\prall e!8)  e'!( c e,) |
    fs!8(\prall e fs)  e'( c e,)  fs(\prall e fs)  \stemUp e'(d fs,) |
    g8(\prall fs g)  e'( d fs,)  g4.\prall a8( b c |
    b8 a g) \tuplet 8/6 { d'16( c b a g fs e d }  g4) r8  a( b c |
    b8 a g) \tuplet 8/6 { d'16( c b a g fs e d }  g4) r8  a( b c |
    b8 a g) \stemNeutral b( c d  ds e d  c b a |
    
    \barNumberCheck 41
    as8 b c  cs d c  b a g  a g fs) |
    fs8-\slurShapeN ( g a  b c d  ds e d  c b a |
    as8 b c  cs d c  b a g  a g fs |
    g4.) d''8( a bf~  bf fs g~  g ef c |
    cs4 d8)  d'8-\slurShapeO ( a bf~  bf fs g~  g ef c! |
    cs4 d8)  d'8( c! b!  a c b  a g fs |
    g4.) d32( c bf a g4)  bf32( a g f ef4)  g32( f ef d c4) |
    cs4( d8)  d'8-\slurShapeP ( c! b!  a e' d  c b a |
    
    \barNumberCheck 49
    b8 d g  b, a) fs'(  g d b  g a) fs'( |
    g8 d b  g a) fs'-\slurShapeR (  g d b  a g' fs |
    g8 d b  g d' b  g d b  r4 r8 |
    << 
      { \staffDown \hideNoteHead g,1.) | } 
      \new Voice { \staffUp R1. | } 
    >>
  }
}

leftHand = \relative {
  \global
  \clef bass
  \repeat volta 2 {
    r2. g'8-\slurShapeC ( fs e  d g c, |
    b4. c  d8 c b  a d g, |
    fs8 e d  g fs e  d d' c  b a g |
    d8 d' c  b a g  d d' c  b a g |
    d8 d' c  b a g  d4.) r4 r8 |
    \offsetPositions #'(1 . 1) g4( g'8  fs e d  g,4.) r4 r8 |
    \offsetPositions #'(1 . 1) g4( g'8  fs e d  g,4.) <g g'>_( |
    <a g'>4.) <g g'>_( < a g'>) q |
    
    \barNumberCheck 9
    \clef treble <fs' a>4.( <g a>)  fs8( e d \clef bass cs b a |
    d,4.) r4 r8 \clef treble d'4-\slurShapeD ( d'8  cs b a |
    d,4.) r4 r8 d4( d'8  cs b a |
    d,4.) \clef bass d,( g cs |
    d4. fs, g a |
    d,4.) d'-\slurShapeH ( g, cs |
    d4. fs, g a |
    d,4.) r4 r8  d4.( d' |
    
    \barNumberCheck 17
    cs4.) d, d( d' |
    cs4.) <fs, d'>-\slurShapeJ ( <g d'> <a cs> |
    d,4.) r4 r8  d4.( d' |
    cs4.) <fs, d'>( <g d'> <a cs> |
    d,4) fs'8(  g4 a8  fs4) d8(  g4 a8 |
    fs4) d8(  g4 a8  fs4) d8(  g,4 a8 |
    d,4.) r4 r8  r4 r8 d a fs |
    d1. |
  }
  \repeat volta 2 {
    \barNumberCheck 25
    r2. a'''8( fs d  c! a fs |
    d4.) r4 r8  \offsetPositions #'(0 . 2.5) g'( d b  g d b |
    g4.) r4 r8  r4 fs''8-\slurShapeL (  g4 g,8 |
    d4.) r4 r8  r4 fs'8(  g4 g,8 |
    d4.) \clef treble d' <cs g'> q |
    <d g>4. q <cs g'> q |
    <d g>4. <d fs> <c! ef g> q |
    <bf d g>4. q <c ef g> q |
    
    \barNumberCheck 33
    <bf d g>4. q <af c g'> <af c f> |
    <g c ef g>4. <g d' g> <af c g'> <af c f> |
    <g c ef g>4. <g d'> \clef bass \offsetPositions #'(2.5 . 0) c,( c') |
    <d, c'>4.( <c c'> <d c'>) q |
    <b' d>4.( <c e>) 
    << 
      { \voiceTwo b8( a g } 
      \new Voice { \voiceThree d'4 s8 } 
    >>
    fs,8 e d |
    \oneVoice g,4.) r4 r8  \offsetPositions #'(1 . 1) g'4( g'8  fs e d |
    g,4.) r4 r8  g4-\slurShapeM ( g'8  fs e d |
    g,4.) \offsetPositions #'(0 . -1) g'( c, fs |
    
    \barNumberCheck 41
    g4. b, c d |
    g,4.) g( c, fs |
    g4. b, c d |
    g,4.) r4 r8  g'4.( g' |
    fs4.) g, g( g' |
    fs4.) <b,! g'>( <c! g'> <d fs> |
    g,4.) r4 r8  g,4.( g' |
    fs4.) <b,! g'>-\slurShapeQ ( <c! g'> <d a'> |
    
    \barNumberCheck 49
    g,4) b'8(  c4 d8  b4) g8(  c4 d8 |
    b4) g8(  c4 d8  b4) g8(  c,4 d8 |
    g,4.) r4 r8  r4 r8  g' d b |
    g1. |
  }
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s1.-\tweak extra-offset #'(0 . -1) \mf |
    s1. * 2 |
    s1.\cresc |
    s2. s-\tweak Y-offset -1 \f |
    s2. s4. s-\tweak Y-offset -2 \p |
    s2. s4. s\mf |
    s1.\cresc |
    
    \barNumberCheck 9
    s2. s\f |
    s1. |
    s4. s\p s2. |
    s1. |
    s4. s\f s2. |
    s4.\> s\p s2. |
    s1. |
    s4. s\mf s2. |
    
    \barNumberCheck 17
    s4.\> s\p s2. |
    s4.\> s\mf s2. |
    s1. |
    s4.\> s\p s2. |
    s1.\cresc |
    s1. |
    s1.\f |
    s1. |
  }
  \repeat volta 2 {
    \barNumberCheck 25
    s1.-\tweak extra-offset #'(0 . -0.5) \mf |
    s1. |
    s4. s-\tweak Y-offset -1 \f s2. |
    s4. s-\tweak extra-offset #'(0 . -1) \p s2. |
    s4. s-\tweak Y-offset -2 \mf s2. |
    s1. |
    s4. s\p s2. |
    s1. |
    
    \barNumberCheck 33
    s4. s\f s2. |
    s4. s\p s2. |
    s4. s\mf s2. |
    s4.\> s8 s4\! s2.\cresc |
    s2. s\f |
    s1. |
    s4. s\p s2. |
    s4. s\cresc s2. |
    
    \barNumberCheck 41
    s4. s\mf s2. |
    s4.-\tweak Y-offset -1 \> s-\tweak Y-offset -1.5 \p s2. |
    s1. |
    s4. s\mf s2. |
    s4. s\p s2. |
    s4. s-\tweak Y-offset 1.5 \f s2. |
    s4. s\f s2. |
    s4.\> s\p s2. |
    
    \barNumberCheck 49
    s1.\cresc
    s1. |
    s1.\f |
    s1. |
  }
}

tempi = {
  \repeat volta 2 {
    \tempo "Allegrissimo" 4. = 126
    s1. * 16 |
    
    \barNumberCheck 17
    s1. * 8 |
  }
  \repeat volta 2 {
    \barNumberCheck 25
    s1. * 24 |
    
    \barNumberCheck 49
    s1. * 2 |
    \tag layout { s1. * 2 | }
    \tag midi {
      \alternative {
        { s1. * 2 | }
        {
          s2. \tempo 4. = 112 s4. \tempo 4. = 96 s |
          s1. |
        }
      }
    }
  }
}

forceBreaks = {
  % page 1
  s1. * 2 \break
  s1. * 3 \break
  s1. * 3 \break
  s1. * 2 \break
  s1. * 2 \break
  s1. * 3 \pageBreak
  
  % page 2
  s1. * 3 \break
  s1. * 3 \break
  s1. * 3 \break
  s1. * 3 \break
  s1. * 3 \break
  s1. * 3 \pageBreak
  
  % page 3
  s1. * 3 \break
  s1. * 3 \break
  s1. * 3 \break
  s1. * 3 \break
  s1. * 3 \break
}

\score {
  \keepWithTag layout  
  \new PianoStaff \with {
    \override StaffGrouper.staff-staff-spacing = 
      #'((basic-distance . 9)
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
