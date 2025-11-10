%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\include "globals.ily"

\header { 
  title = "Sonata in G major"
  opus = "K.105"
  source = ""
}

%
% Positions and shapes
%

slurShapeA = \shape #'((0 . -1) (0 . 1) (0 . 0) (0 . 0)) \etc
slurShapeB = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.25 . 0) (0.25 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeC = \shape #'((0 . -2) (0 . 0) (0 . 0) (0 . 0)) \etc
slurShapeD = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . -5.5) (0 . -5.5) (0 . -5.5) (0 . -5.5))
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
                        ((0 . 2) (0 . -1) (0 . -2) (0 . 0))
                        ((0.25 . 0) (0.25 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeH = \shape #'(
                        ((0 . 0) (4 . 1.25) (0 . 0) (0 . 0))
                        ((0.25 . 0.25) (0.25 . 0.25) (0 . 0) (0 . 0))
                      ) \etc
slurShapeI = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.25 . 0) (0.25 . 0) (0 . 0) (0 . 0))
                      ) \etc

forceHShiftA = \once \override NoteColumn.force-hshift = -1.4

%
% Music
%

global = {
  \time 3/8
  \key g \major
}

rightHand = \relative {
  \global
  \repeat volta 2 {
    g'8( c e) |
    d4\prall d8-. |
    c16( b a g fs a) |
    g4\prall g8-. |
    e'32[( fs g16])  fs( e d c) |
    d4\prall d8-. |
    e32[( fs g16])  fs( e d c) |
    d4\prall d8-. |
    
    \barNumberCheck 9
    e32[( fs g16])  fs( e d c) |
    b8(\prall a16 b g8-.) |
    r16 d( g b d g) |
    \appoggiatura { g16 } fs4(\prall e8) |
    r16 g,( b d g b) |
    \appoggiatura { b16 } a4.\prall |
    r16 d,,( g b d g) |
    \appoggiatura { g16 } fs4(\prall e8) |
    
    \barNumberCheck 17
    r16 g,( b d g b) |
    \appoggiatura { b16 } a4.\prall |
    r16 a( g fs e ds |
    e16 fs g a as b) |
    r16 g( fs e d cs |
    d16 e fs g gs a) |
    r16 a-\slurShapeB ( g! fs e ds |
    e16 fs g a as b) |
    
    \barNumberCheck 25
    r16 g( fs e d cs |
    d16 e fs g gs a) |
    r16 d( a g! fs e |
    d16 d' b a g fs |
    e d' fs, e d cs |
    d16 cs d cs d cs) |
    r16 d'( a g fs e |
    d16 d' b a g fs |
    
    \barNumberCheck 33
    e d' fs, e d cs |
    d16 cs d cs d cs) |
    r16 cs'( d b cs as |
    b16 gs a! fs g e |
    fs16 d e cs d b) |
    cs8(\prall b16 cs a) a-. |
    a16-\slurShapeC ( cs e a a,) a-. |
    a16-\slurShapeC ( cs e a a,) a-. |
    
    \barNumberCheck 41
    a16-\slurShapeC ( cs e a a,) a-. |
    \tag layout { a4.\prallprall } \tag midi { a\prall } |
    r16 a( cs a g' e |
    <bf bf'>4.) |
    r16 a( cs a g' e |
    <cs cs'>4.) |
    r16 a( cs a g' e |
    <bf bf'>4.) |
    
    \barNumberCheck 49
    r16 a( cs a g' e |
    <cs cs'>4.) |
    r16 bf'( g e a g |
    f16 e f g a d, |
    e16 g f e d cs) |
    \appoggiatura { cs16 } d4.\prall |
    r16 a( cs a g' e |
    <bf bf'>4.) |
    
    \barNumberCheck 57
    r16 a( cs a g' e |
    <cs cs'>4.) |
    r16 a( cs a g' e |
    <bf bf'>4.) |
    f'16( e f g a d, |
    e16 g f e d cs) |
    f16( e f g a d, |
    e16 g f e d cs) |
    
    \barNumberCheck 65
    f16( e f g a d, |
    e16 g f e d cs) |
    \tag layout { d4.\prallprall } \tag midi { d\prall } |
    r16 d'( fs, g a b!) |
    \offsetPositions #'(-0.5 . 0) a16(\prall g a b a8-.) |
    r16 d( fs, g a b) |
    \offsetPositions #'(-0.5 . 0) a16(\prall g a b a8-.) |
    r16 d( fs, g a b |
    
    \barNumberCheck 73
    a16 g fs e d fs |
    e16 g fs e d cs |
    d16) d'( fs, g a b) |
    \offsetPositions #'(-0.5 . 0) a16(\prall g a b a8-.) |
    r16 d( fs, g a b) |
    \offsetPositions #'(-0.5 . 0) a16(\prall g a b a8-.) |
    r16 d( fs, g a b |
    a16 g fs e d fs |
    
    \barNumberCheck 81
    e g fs e d cs |
    d16) a'( fs d a cs |
    b16 d cs e d cs |
    d16 a fs a d, fs |
    e16 g fs e d cs |
    d16)\noBeam a''( fs d a cs |
    b16 d cs e d cs |
    d16 a fs a d, fs |
    
    \barNumberCheck 89
    e16 g fs e d cs |
    d4.) |
  }
  \repeat volta 2 {
    d8( a' d) |
    c!4\prall \offsetPositions #'(-1 . 0) c8(~ |
    c16 a fs' g a c,) |
    b8.(\prall c16 d b) |
    \stemDown a8.(\prall b16 c a) |
    b8.(\prall c16 d b) |
    
    \barNumberCheck 97
    a8.-\slurShapeE (\prall b16 c a |
    b16 c d e fs g |
    e16 d c b a g |
    \stemNeutral fs16 e d c b a |
    b16 d c b a g) |
    \clef bass \tag layout { d4.\prallprall } \tag midi { d\prall } |
    \clef treble r16 a'( d fs a d) |
    d8-. c16(\prall b) c8-. |
    
    \barNumberCheck 105
    r16 fs,( a c fs a) |
    <c, a'>8-. <b g'>16(\prall <a fs'>) <b g'>8-. |
    r16 a,( d fs a d) |
    d8-. c16( b) c8-. |
    r16 fs,( a c fs a) |
    <c, a'>8-. <b g'>16( <a fs'>) <b g'>8-. |
    r16 b'( as b) \acciaccatura { a8 } g16( fs |
    e16 b' as b) \acciaccatura { a8 } g16-\slurShapeF ( fs |
    
    \barNumberCheck 113
    e16 ds e fs g fs |
    e16) b'( as b as b |
    cs16 g fs e d cs) |
    cs8( d) r8 |
    r16 a'( gs a) \acciaccatura { g8 } f16( e |
    d16 a' gs a) \acciaccatura { g8 } f16( e |
    d16) a'( gs a gs a |
    b16 f e d c b) |
    
    \barNumberCheck 121
    b8( c4) |
    r16 c( c' b a g |
    fs e ds e ds e) |
    r16 c( c' b a g |
    fs e ds e ds e) |
    r16 c-\slurShapeG ( c' b a g |
    fs e d c b a) |
    \stemDown b32[( a b16])  c32[( b c16])  d32[( c d16]) |
    
    \barNumberCheck 129
    e32[( d e16])  fs32[( e fs16])  g32[( fs g16]) |
    a32[( g a16])  b32[( a b16])  cs32[( b cs16]) |
    d16( a fs d a fs |
    \clef bass d a fs d a fs) |
    R4. |
    \stemNeutral \clef treble r16 a''( bf g a fs) |
    <ef ef'>4. |
    r16 a( bf g a fs) |
    
    \barNumberCheck 137
    <fs fs'>4. |
    r16 a( bf g a fs) |
    <a a'>4. |
    r16 a( bf g a fs) |
    <c' c'>4.(~ |
    c'16 a fs ef c a |
    bf16 g' c, fs g d |
    ef16 c' bf a g fs) |
    
    \barNumberCheck 145
    \appoggiatura { fs16 } g4.\prall |
    r16 a,( bf g a fs) |
    <ef ef'>4. |
    r16 a( bf g a fs) |
    <fs fs'>4. |
    r16 a( bf g a fs) |
    <a a'>4. |
    r16 a( bf g a fs) |
    
    \barNumberCheck 153
    <c' c'>4.-\slurShapeH (~ |
    c'16 a fs ef c a |
    bf16 g' c, fs g d |
    ef16 c' bf a g fs) |
    fs16( g b,! c d e) |
    d(\prall c d e d8-.) |
    r16 g( b, c d e) |
    d(\prall c d e d8-.) |
    
    \barNumberCheck 161
    r16 g-\slurShapeI ( b, c d e |
    d16 c b a g b |
    a16 c b a g fs) |
    r16 d''( g, a b c) |
    a16(\prall g a b a8-.) |
    r16 d( g, a b c) |
    a16(\prall g a b a8-.) |
    r16 d( g, a b c) |
    
    \barNumberCheck 169
    a16(\prall g a fs g c |
    b16 a d c b a |
    g16 fs e d c b) |
    \stemUp a32[( b c16]) b( a g fs |
    g16 fs e d c b) |
    a32[( b c16]) b( a g fs |
    g4.) |
  }
}

leftHand = \relative {
  \global
  \clef bass
  \repeat volta 2 {
    R4. |
    d8( g b) |
    a4(\prall c8) |
    b16-\slurShapeA ( d g, b e, g |
    c,8-.) d-. c'-. |
    b16-\slurShapeA ( d g, b e, g |
    c,8-.) d-. c'-. |
    b16( d g, b e, g |
    
    \barNumberCheck 9
    c,8-.) d-. d,-. |
    g,4.-> |
    g''8( b-.) g-. |
    d8( d' c |
    b8-.) d-. g,-. |
    d8( d' c |
    b8-.) d-. g,-. |
    d8( d' c |
    
    \barNumberCheck 17
    b8-.) d-. g,-. |
    \offsetPositions #'(0 . 2.5) d4( d,8-.) |
    \clef treble <d'' fs>8-. <e g>-. <fs a>-. |
    <g b>4. |
    <e g>8-. <fs a>-. <g \parenthesize b>-. |
    <fs a>4. |
    <d fs>8-. <e g>-. <fs a>-. |
    <g b>4. |
    
    \barNumberCheck 25
    <e g>8-. <fs a>-. <g \parenthesize b>-. |
    <fs a>4. |
    \clef bass <fs, d'>8-. q-. q-. |
    <g d' e>8-. q-. q-. |
    <a d e>8-. q-. q( |
    <b d>8-.) <a cs>-. <g b>-. |
    <fs d'>8-. q-. q-. |
    <g d' e>8-. q-. q-. |
    
    \barNumberCheck 33
    <a d e>8-. q-. q( |
    <b d>8-.) <a cs>-. <g b>-. |
    <fs a d>8-. q-. q-. |
    <g d'>8-. q-. q-. |
    <gs d' e>8-. q-. q-. |
    <a, a'>4. |
    <a e' a>8\arpeggio r r |
    <a e' a>8\arpeggio r r |
    
    \barNumberCheck 41
    <a e' a>8\arpeggio r r |
    <a, a'>4. |
    <a'' d e>8-. q-. q-. |
    <g d' e>8-. q-. q-. |
    <a d e>8-. q-. q-. |
    <bf d e g>8-. q-. q-. |
    <a d e>8-. q-. q-. |
    <g d' e>8-. q-. q-. |
    
    \barNumberCheck 49
    <a d e>8-. q-. q-. |
    <bf d e g>8-. q-. q-. |
    <a e' g>8-. q-. <cs e a>-. |
    <d f a>4 <bf d>8( |
    <g d' e>8-.) <a d f>-. <a e'>-. |
    d,4. |
    <a' d e>8-. q-. q-. |
    <g d' e>8-. q-. q-. |
    
    \barNumberCheck 57
    <a d e>8-. q-. q-. |
    <bf d e g>8-. q-. q-. |
    <a d e>8-. q-. q-. |
    <g d' e>8-. q-. q-. |
    <d' f a>4 <bf d>8( |
    <g d' e>8-.) <a d f>-. <a e'>-. |
    <d f>8-. <e g>-. <f a>-. |
    <g bf>8( a-.) a,-. |
    
    \barNumberCheck 65
    <d f>8-. <e g>-. <f a>-. |
    <g bf>8( a-.) a,-. |
    \offsetPositions #'(0 . 2.5) d16( a fs! d a fs |
    <d d'>8-.) <fs fs'>-. <d d'>-. |
    <a' a'>8-. <cs cs'>-. <a a'>-. |
    <d d'>8-. <fs fs'>-. <d d'>-. |
    \clef treble <a' a'>8-. <cs cs'>-. <a a'>-. |
    \clef bass <d,, d'>8-. <fs fs'>-. <d d'>-. |
    
    \barNumberCheck 73
    <a' a'>4( <b b'>8) |
    <g g'>8-. a'-. a,-. |
    <d, d'>8-. <fs fs'>-. <d d'>-. |
    <a' a'>8-. <cs cs'>-. <a a'>-. |
    <d d'>8-. <fs fs'>-. <d d'>-. |
    \clef treble <a' a'>8-. <cs cs'>-. <a a'>-. |
    \clef bass <d,, d'>8-. <fs fs'>-. <d d'>-. |
    a'4( b8) |
    
    \barNumberCheck 81
    g8-. a-. a,-. |
    d4 
    << 
      { 
        <fs' d'>8-\slurShapeD _( | 
        \voiceTwo g8 a4 | 
        \oneVoice d8-.) 
      }
      \new Voice { 
        \voiceThree \hideNoteHead d8(~ | 
        d4 e8 | 
        \hideNoteHead d) 
      } 
    >>
    d,8-. fs-. |
    g8( a-.) a,-. |
    d4
    << 
      { 
        \offsetPositions #'(0 . -3.5) <fs d'>8_( | 
        \voiceTwo g8 a4 |
        \oneVoice d8-.) 
      }
      \new Voice { 
        \voiceThree \hideNoteHead \offsetPositions #'(-2 . -1.5) d8(~ | 
        d4 e8 | 
        \hideNoteHead d) 
      } 
    >>
    d,8-. fs-. |
    
    \barNumberCheck 89
    g8( a-.) a,-. |
    d,4.-> |
  }
  \repeat volta 2 {
    R4. |
    a''8( e' g |
    fs8 e d) |
    \clef treble r16 d( g a b g) |
    r16 d( fs g a fs) |
    r16 d( g a b g) |
    
    \barNumberCheck 97
    r16 d( fs g a fs |
    g8-.) a-. b-. |
    c16( b a g fs e |
    \clef bass d16 c b a g fs |
    g8-.) e-. c-. |
    d,4. |
    d'8-. d-. d( |
    e8-.) <e c'>-. q-. |
    
    \barNumberCheck 105
    <fs c'>8-. q-. <fs d'>_( |
    <g d'>8-.) q-. q-. |
    d8-. d-. d( |
    e8-.) <e c'>-. q-. |
    <fs c'>8-. q-. <fs d'>_( |
    <g d'>8-.) q-. q-. |
    \clef treble <g' b>8-. q-. q-. |
    q8-. q-. q-. |
    
    \barNumberCheck 113
    q8-. q-. <g b cs>-. |
    <fs b cs>8-. q-. q-. |
    << { b8( \forceHShiftA as4) } \\ { <fs cs'>8-. q-. fs-. } >> |
    b8-. b-. b-. |
    <d, a' b>8-. q-. q-. |
    <e a b>8-. q-. q-. |
    <f a b>8-. q-. q-. |
    << { a4( gs8-.) } \\ { <e b'>8-. q-. e-. } >> |
    
    \barNumberCheck 121
    a8-. a-. a-. |
    <c, e a>8-. q-. q-. |
    <c e fs a>8-. q-. q-. |
    q8-. q-. q-. |
    q8-. q-. q-. |
    q8-. q-. q-. |
    <d! fs a>8-. q-. <d fs>-. |
    g8-. <e g>-. <b g'>-. |
    
    \barNumberCheck 129
    <c g'>8-. <a fs'>-. <b d>-. |
    \clef bass <fs d'>8-. <g d'>-. <e g>-. |
    \override Parentheses.font-size = -3
    <d \parenthesize fs>4. |
    R4. |
    \tag layout { d,4.->\prallprall } \tag midi { d->\prall } |
    <d' a' d>8-. q-. q-. |
    <d a' c>8-. q-. q-. |
    <d a' d>8-. q-. q-. |
    
    \barNumberCheck 137
    <ef a c d>8-. q-. q-. |
    <d g a c d>8-. q-. q-. |
    <ef g c d>8-. q-. q-. |
    <d g a c d>8-. q-. q-. |
    <ef g c d>8-. q-. q-. |
    <d g a c d>8-. q-. q-. |
    <g bf g'>8( <a c>-.) <bf d>-. |
    c8-. d-. d,-. |
    
    \barNumberCheck 145
    g,4.-> |
    <d' a' d>8-. q-. q-. |
    <d a' c>8-. q-. q-. |
    <d a' d>8-. q-. q-. |
    <ef a c d>8-. q-. q-. |
    <d g a c d>8-. q-. q-. |
    <ef g c d>8-. q-. q-. |
    <d g a c d>8-. q-. q-. |
    
    \barNumberCheck 153
    <ef g c d>8-. q-. q-. |
    <d g a c d>8-. q-. q-. |
    <g bf g'>8( <a c>-.) <bf d>-. |
    c8-. d-. d,-. |
    <g, g'>8-. <b! b'!>-. <g g'>-. |
    <d d'>8-. <fs fs'>-. <d d'>-. |
    <g g'>8-. <b b'>-. <g g'>-. |
    <d' d'>8-. <fs fs'>-. <d d'>-. |
    
    \barNumberCheck 161
    <g, g'>8-. <b b'>-. <g g'>-. |
    <d d'>4( <e e'>8) |
    c'8-. d-. d,-. |
    <g g'>8-. <b b'>-. <g g'>-. |
    <d d'>8-. <fs fs'>-. <d d'>-. |
    <g g'>8-. <b b'>-. <g g'>-. |
    <d' d'>8-. <fs fs'>-. <d d'>-. |
    <g, g'>8-. <b b'>-. <g g'>-. |
    
    \barNumberCheck 169
    <d d'>4( <e e'>8) |
    c'8-. d-. d,-. |
    g8-. a-. b-. |
    c8( d-.) d,-. |
    g8-. a-. b-. |
    c8( d-.) d,-. |
    g4.-> |
  }
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s4.\p |
    s4. * 3 |
    s8\f s4\p |
    s4. |
    s8\f s4\p |
    s4. |
    
    \barNumberCheck 9
    s8-\tweak Y-offset 1 \f s4-\tweak Y-offset 1 \p |
    s4\mf\> s8\! |
    s4\p\< s16 s\! |
    s4-\tweak Y-offset 1 \> s8\! |
    s16 s4-\tweak Y-offset 1 \< s16\! |
    s4-\tweak Y-offset 1 \> s8\! |
    s16 s4\< s16\! |
    s4-\tweak Y-offset 1 \> s8\! |
    
    \barNumberCheck 17
    s16 s4\< s16\! |
    s4\> s8\! |
    s4.\p |
    s4. * 5 |
    
    \barNumberCheck 25
    s4. * 2 |
    s4.\mf |
    s4. * 2 |
    s4\> s16 s\! |
    s4.\p |
    s4. |
    
    \barNumberCheck 33
    s4. * 2 |
    s4.\f |
    s4. * 2 |
    s4-\tweak Y-offset -1 \> s16 s\! |
    s4.-\tweak Y-offset -1 \p-\tweak Y-offset -1 \cresc |
    s4. |
    
    \barNumberCheck 41
    s4. |
    s4.-\tweak Y-offset -1 \f |
    s4\p\< s16 s\! |
    s4\f\> s8\! |
    s4\p\< s16 s\! |
    s4\f\> s8\! |
    s4\p\< s16 s\! |
    s4\f\> s8\! |
    
    \barNumberCheck 49
    s4\p\< s16 s\! |
    s4.\f |
    s4. * 3 |
    s4\> s8\! |
    s4.\p |
    s4. |
    
    \barNumberCheck 57
    s4.\cresc |
    s4. * 2 |
    s4.\f |
    s4. * 2 |
    s4.\p |
    s4. |
    
    \barNumberCheck 65
    s4.\cresc |
    s4. |
    s4.\f |
    s4.\f |
    s4. * 4 |
    
    \barNumberCheck 73
    s4. * 2 |
    s16 s-\tweak Y-offset 0.5 \p s4 |
    s4. * 5 |
    
    \barNumberCheck 81
    s4-\tweak Y-offset -1 \< s16 s\! |
    s4.-\tweak extra-offset #'(0 . -1) \f |
    s4. * 3 |
    s16 s\p s4 |
    s4. |
    s4.-\tweak Y-offset 3 \cresc |
    
    \barNumberCheck 89
    s4. |
    s4.\f |
  }
  \repeat volta 2 {
    s4.\p |
    s4. * 2 |
    \tag layout { s4.\sf } \tag midi { s16\f s\p s4 } |
    \tag layout { s4.\sf } \tag midi { s16\f s\p s4 } |
    s4.\p |
    
    \barNumberCheck 97
    s4. |
    s4\< s16 s\! |
    s4\> s16 s\! |
    s4.\cresc |
    s4. |
    s4.\f |
    s4\p\< s16 s\! |
    s4.\mf |
    
    \barNumberCheck 105
    s4.\cresc |
    s4.\f |
    s4.\p |
    s4. * 3 |
    s4.\p |
    s4.\cresc |
    
    \barNumberCheck 113
    s4. * 2 |
    s4.\f |
    s4\> s8\! |
    s4.\p |
    s4.\cresc |
    s4. |
    s4.\f |
    
    \barNumberCheck 121
    s4\> s8\! |
    s4.\p |
    s4. * 5 |
    s4.\cresc |
    
    \barNumberCheck 129
    s4. * 2 |
    s4.\f |
    s4. * 2 |
    s4\p\< s16 s\! |
    s4\f\> s8\! |
    s4\p\< s16 s\! |
    
    \barNumberCheck 137
    s4\f\> s8\! |
    s4\p\< s16 s\! |
    s4\f\> s8\! |
    s4\p\< s16 s\! |
    s4.\f |
    s4. * 3 |
    
    \barNumberCheck 145
    s4. |
    s4.\p |
    s4. |
    s4.\cresc |
    s4. * 4 |
    
    \barNumberCheck 153
    s4.\f |
    s4. * 7 |
    
    \barNumberCheck 161
    s4. * 3 |
    s4.-\tweak Y-offset 0 \p |
    s4.-\tweak Y-offset 0.5 \cresc |
    s4. * 2 |
    s4.\f |
    
    \barNumberCheck 169
    s4. * 7 |
  }
}

tempi = {
  \repeat volta 2 {
    \tempo "Allegro" 4. = 72
    s4. * 88 |
    
    \barNumberCheck 89
    \set Score.tempoHideNote = ##t
    s8 \tempo 4. = 66 s \tempo 4. = 60 s |
    s4. |
  }
  \repeat volta 2 {
    \tempo 4. = 72
    s4. * 6 |
    
    \barNumberCheck 97
    s4. * 72 |
    
    \barNumberCheck 169
    s4. * 5 |
    \tag layout { s4. * 2 | }
    \tag midi {
      \alternative {
        {
          s8 \tempo 4. = 66 s \tempo 4. = 60 s |
          s4. |
        }
        {
          \tempo 4. = 63 s8 \tempo 4. = 56 s \tempo 4. = 52 s |
          \tempo 4. = 40 s4. |
        }
      }
    }
  }
}

forceBreaks = {
  % page 1
  s4. * 7 \break
  s4. * 8 \break
  \grace { s16 } s4. * 8 \break
  s4. * 8 \break
  s4. * 7 \break
  s4. * 8 \pageBreak
  
  % page 2
  s4. * 8 \break
  s4. * 8 \break
  s4. * 7 \break
  s4. * 7 \break
  s4. * 7 \break
  s4. * 7 \pageBreak
  
  % page 3
  s4. * 8 \break
  s4. * 8 \break
  s4. * 7 \break
  s4. * 6 \break
  s4. * 7 \break
  s4. * 7 \pageBreak
  
  % page 4
  s4. * 7 \break
  s4. * 7 \break
  s4. * 7 \break
  s4. * 7 \break
  s4. * 7 \break
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
