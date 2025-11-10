%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\include "globals.ily"
\include "initial-clef-engraver.ily"

\header { 
  title = "Sonata in F major"
  opus = "K.107"
  source = "https://vmirror.imslp.org/files/imglnks/usimg/a/a9/IMSLP626889-PMLP335351-Sonata_K._107_(as_L._474).pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'((0 . 0) (0 . 2) (0 . -3) (0 . -10)) \etc
slurShapeB = \shape #'((0 . 0) (0 . 0) (0 . 0) (-0.5 . -0.5)) \etc
slurShapeC = \shape #'((0.5 . 0) (0 . 0) (0 . 0) (-0.5 . 0)) \etc
slurShapeD = \shape #'(
                        ((0.5 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (-0.25 . 0) (-0.25 . 0) (-0.5 . 0))
                      ) \etc
slurShapeE = \shape #'((0.5 . 0) (0 . 0) (0 . 0) (-0.5 . -0.25)) \etc
slurShapeF = \shape #'((0.5 . 0) (0 . 0) (0 . 0) (0 . 0)) \etc
slurShapeG = \shape #'((0 . -3) (0 . 2) (0 . 0) (0 . -1)) \etc
slurShapeH = \shape #'(
                        ((0 . 2.5) (0 . 1) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (-0.25 . 0) (-0.25 . 0))
                      ) \etc
slurShapeI = \shape #'(
                        ((0 . -2) (0 . 0) (0 . 1) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeJ = \shape #'((0 . 0) (0 . 2) (0 . -4) (0 . -12)) \etc
slurShapeK = \shape #'((0 . 0) (0 . 2) (0 . 2) (0 . 0)) \etc
slurShapeL = \shape #'((0 . 0) (0 . 2) (0 . 5) (0 . 0)) \etc
slurShapeM = \shape #'((-0.5 . 1.25) (-0.5 . 0.75) (0 . 0.25) (0 . 0)) \etc

%
% Music
%

global = {
  \time 3/8
  \key f \major
}

rightHandUpper = \relative { 
  \repeat volta 2 {
    c'''16( a c, f e g) |
    f16(\prall e f g a f |
    bf16 g e c bf g |
    \tag layout { a4.)\prallprall } \tag midi { a)\prall } |
    c'16( a c, f e g) |
    f16(\prall e f g a f |
    bf16 g e c bf g) |
    \appoggiatura { g16 } a4. |
    
    \barNumberCheck 9
    r16 a'( f d c b) |
    % source, first beat has r16, and following
    r32 c( d e f g a b c8-.)\noBeam |
    r16 a( f d c b) |
    r32 c( d e f g a b c8-.)\noBeam |
    r16 bf!( g e d cs) |
    r32 d( e f g a b cs d8-.)\noBeam |
    r16 bf!( g e d cs) |
    r32 d( e f g a b cs d8-.)\noBeam |
    
    \barNumberCheck 17
    r16 d-. d( c!) c( bf!) |
    bf16( a) a( g) g( fs) |
    fs16( g) g( f) f( e) |
    e16( d) d( c) c( b) |
    b16( c) c( bf) bf( a) |
    a16( b) b( c) c( d) |
    d16( e) e(fs) fs( g) |
    g16( d c b) c32[( d c d]) |
    
    \barNumberCheck 25
    d16(\prall c32 \sdb2 d  e fs e fs)  fs16[(\prall e32 fs] |
    g16 d c b) c32[( d c d]) |
    d16(\prall c32 \sdb2 d  e fs e fs)  fs16[(\prall e32 fs] |
    g16 d c b) c32[( d c d]) |
    d16(\prall c32 \sdb2 d  e fs e fs)  fs16[-\slurShapeA (\prall e32 fs] |
    \stemDown g16 d b g d b |
    \staffDown \stemUp g d b g d b |
    g4.) |
    
    \barNumberCheck 33
    \staffUp \stemNeutral r16 g''''( d ef f g |
    \tag layout { af8.\prallprall } \tag midi { af\prall } g16 af8) |
    r32 g( f \sdb2 ef  d ef f \sdb2 g  f g af bf |
    \tag layout { af8.\prallprall } \tag midi { af\prall } g16 af8) |
    r32 g( f \sdb2 ef  d ef f \sdb2 g  f g af bf |
    \tag layout { af8.\prallprall } \tag midi { af\prall } g16 af8) |
    r16 b( c af g fs |
    g16 b c f,! ef d |
    
    \barNumberCheck 41
    f16 b c f, ef d |
    ef16 f g ef df c |
    df e! f g af c,) |
    % source has b4 (no dot)
    \appoggiatura { c16 } b4. |
    <b d>8-. q-. <c ef>-. |
    <b d>16( <c ef> <d f> <ef g> <d f> <c ef> |
    <b d>8-.) q-. <c ef>-. |
    <b d>16( <c ef> <d f> <ef g> <d f> <c ef> |
    
    \barNumberCheck 49
    <b d>8-.) q-. <c ef>-. |
    \voiceOne \offsetPositions #'(0 . -2.5) d16( ef f d \oneVoice <c ef>[
      <d f>] |
    <ef g>16 <f af> <ef g> <d f> <c ef> <b d> |
    c4.) |
    <b d>8-. q-. <c ef>-. |
    <b d>16( <c ef> <d f> <ef g> <d f> <c ef> |
    <b d>8-.) q-. <c ef>-. |
    <b d>16( <c ef> <d f> <ef g> <d f> <c ef> |
    
    \barNumberCheck 57
    <b d>8-.) q-. <c ef>-. |
    \voiceOne \offsetPositions #'(0 . -2) d16( ef f d \oneVoice <c ef>[
      <d f>] |
    <ef g>16 <f af> <ef g> <d f> <c ef> <b d>) |
    \voiceOne c'16( b a b a g |
    af16 f ef d c b) |
    \voiceOne g'4. |
    s4. |
    g,4. |
    
    \barNumberCheck 65
    s4. * 2 |
  }
  \repeat volta 2 {
    \oneVoice r16 g'( e! f g a! |
    g8-.) c-. f,-. |
    e16( f g e d c) |
    r32 bf( c d e f g a bf8-.) |
    r16 g( e d bf g) |
    r32 a( bf c d e f g a8-.) |
    
    \barNumberCheck 73
    r16 a-. a( gs) gs( a) |
    a16( b) b( c) c8-. |
    r16 d( c b a gs |
    a16 gs) gs( a) a8-. |
    r16 g!-. g( fs) fs( g) |
    g16( a) a( bf!) bf8-. |
    r16 c( bf a g fs |
    g16 fs) fs( g) g8-. |
    
    \barNumberCheck 81
    r16 \offsetPositions #'(-1 . -0.5) g( bf g f! e |
    f16 gs a f e d |
    ef16 fs g a bf d,) |
    \appoggiatura { d16 } cs4. |
    r16 a'( e f g a |
    \tag layout { bf8.\prallprall } \tag midi { bf\prall } a16 bf8) |
    r32 a( g \sdb2 f  e f g \sdb2 a  g a bf c! |
    \tag layout { bf8.\prallprall } \tag midi { bf\prall } a16 bf8) |
    
    \barNumberCheck 89
    r32 a-\slurShapeB ( g \sdb2 f  e f g \sdb2 a  g a bf c |
    \sdbII 1 2 \tag layout { bf8.\prallprall } \tag midi { bf\prall } \sdb1
      a16  bf c32 d |
    \sdbII 1 2 \tag layout { bf8.)-\slurShapeC (\prallprall }
      \tag midi { bf)(\prall } \sdb1 a16  bf c32 d |
    \sdbII 1 2 \tag layout { bf8.)-\slurShapeD (\prallprall }
      \tag midi { bf)(\prall } \sdb1 a16  bf c32 d |
    \sdbII 1 2 \tag layout { bf8.)-\slurShapeE (\prallprall }
      \tag midi { bf)(\prall } \sdb1 a16  bf c32 d |
    \tag layout { bf8.)-\slurShapeF (\prallprall } \tag midi { bf)(\prall }
      a16 g f |
    e16 f g a bf g |
    a16 g f e  f32)[ c-\slurShapeG ( d e] |
    
    \barNumberCheck 97
    f32[ g a b]  b8.-\insideSlur \trill a32 b |
    c32 b a \sdb2 g  f e d \sdb2 c  d e f g |
    a16[ b])  b8.(\trill a32 b |
    c32 b a \sdb2 g  f e d \sdb2 c  d e f g |
    a16[ b])  b8.(\trill a32 b |
    c32 b a \sdb2 g  f e d \sdb2 c  d e f g |
    a16[ b])  b8.-\slurShapeJ (\trill a32 b |
    c16 g e c g e |
    
    \barNumberCheck 105
    \staffDown c g e c g e |
    c4.) |
    \staffUp r16 c'''-\slurShapeK ( g af bf! c |
    \tag layout { df8.\prallprall -\noPriority ^\trillFlat }
      \tag midi { df\prall } c16 df8) |
    % source has r16 in the first beat
    r32 c-\slurShapeL ( bf \sdb2 af  g af bf \sdb2 c  bf c df ef |
    \tag layout { df8.\prallprall -\noPriority ^\trillFlat }
      \tag midi { df\prall } c16 df8) |
    r32 c( bf \sdb2 af  g af bf \sdb2 c  bf c df ef |
    df16 ef f df c b |
    
    \barNumberCheck 113
    c d! e! f g af |
    bf16 g c bf af g) |
    \appoggiatura { g16 } af8.(\prall g16 f8) |
    <e g>8-. q-. <f af>-. |
    <e g>16( <f af> <g bf> <af c> <g bf> <f af> |
    <e g>8-.) q-. <f af>-. |
    <e g>16( <f af> <g bf> <af c> <g bf> <f af> |
    <e g>8-.) q-. <f af>-. |
    
    \barNumberCheck 121
    \voiceOne \offsetPositions #'(0 . -2) g16( af bf g \oneVoice <f af>[
      <g bf>] |
    <af c>16 <bf df> <af c> <g bf> <f af> <e g> |
    f4.) |
    <e g>8-. q-. <f af>-. |
    <e g>16( <f af> <g bf> <af c> <g bf> <f af> |
    <e g>8-.) q-. <f af>-. |
    <e g>16( <f af> <g bf> <af c> <g bf> <f af> |
    <e g>8-.) q-. <f af>-. |
    
    \barNumberCheck 129
    \voiceOne \offsetPositions #'(0 . -2) g16( af bf g \oneVoice <f af>[
      <g bf>] |
    <af c>16 <bf df> <af c> <g bf> <f af> <e g>) |
    \voiceOne c'4. |
    s4. |
    c4. |
    s4. |
    c,4. |
    s4. |
    
    \barNumberCheck 137
    s4. |
  }
}

rightHandLower = \relative {
  \repeat volta 2 {
    s4. * 24 |
    
    \barNumberCheck 25
    s4. * 6 |
    R4. * 2 |
    
    \barNumberCheck 33
    s4. * 16 |
    
    \barNumberCheck 49
    s4. |
    \voiceFour b'4 s8 |
    s4. * 6 |
    
    \barNumberCheck 57
    s4. |
    b4 s8 |
    s4. |
    c4. |
    R4. |
    c16( b c b c g |
    \oneVoice af16 f ef d c b) |
    \voiceFour c16( b c b c g |
    
    \barNumberCheck 65
    \oneVoice af16\noBeam \clef bass  f ef d c b |
    c4.) |
  }
  \repeat volta 2 {
    \clef treble 
    s4. * 6 |
    
    \barNumberCheck 73
    s4. * 32 |
    
    \barNumberCheck 105
    R4. * 2 |
    s4. * 6 |
    
    \barNumberCheck 113
    s4. * 8 |
    
    \barNumberCheck 121
    \voiceFour e''4 s8 |
    s4. * 7 |
    
    \barNumberCheck 129
    e4 s8 |
    s4. |
    f16( e f e f af |
    g16 bf af g f e) |
    f16( e f e f c |
    \oneVoice df16 bf af g f e) |
    \voiceFour f16( e f e f c |
    \oneVoice df16 bf af g f e |
    
    \barNumberCheck 137
    f4.) |
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
    s4. * 24 |
    
    \barNumberCheck 25
    \clef treble \voiceThree g'4. |
    s4. |
    g4. |
    s4. |
    g4. |
    s4. * 3 |
    
    \barNumberCheck 33
    s4. * 32 |
    
    \barNumberCheck 65
    s4. * 2 |
  }
  \repeat volta 2 {
    s4. * 6 |
    
    \barNumberCheck 73
    s4. |
    <a c>8( <b d>) <c e>-. |
    s4. * 3 |
    <g bf!>8( <a c>) <bf d>-. |
    s4. * 2 |
    
    \barNumberCheck 81
    s4. * 16 |
    
    \barNumberCheck 97
    a4( <g b>8 |
    \hideNoteHead c4.) |
    a4-\slurShapeH ( <g b>8 |
    \hideNoteHead c4.) |
    a4( <g b>8 |
    \hideNoteHead c4.) |
    a4( <g b>8 |
    \hideNoteHead c8) s4 |
    
    \barNumberCheck 105
    s4. * 32 |
    
    \barNumberCheck 137
    s4. |
  }
}

leftHandLower = \relative {
  \clef treble % initial bass clef, see initial-clef-engraver.ily
  \repeat volta 2 {
    <f' a>4( <g bf>8) |
    <a c>4 q8-. |
    <g bf>8( c,) e-. |
    \clef bass f16( c a f) f,8-.\noBeam |
    \clef treble <f'' a>4( <g bf>8) |
    <a c>4 q8-. |
    <g bf>8( c,) e-. |
    f8-\slurShapeM ( \clef bass f,4) |
    
    \barNumberCheck 9
    \clef treble <f' a>8-. q-. f-. |
    <e g>8-. q-. q-. |
    <f a>8-. q-. f-. |
    <e g>8-. q-. q-. |
    <g bf!>8-. q-. q-. |
    <f a>8-. q-. q-. |
    <g bf!>8-. q-. q-. |
    <f a>8-. q-. q-. |
    
    \barNumberCheck 17
    <fs a c! d>8-. q-. q-. |
    \stemUp <g bf d>8-. q-. <a c>-. |
    <bf d>8-. b-. g-. |
    <c, g'>8-. q-. <d f>-. |
    <e g>8-. c-. q-. |
    f8-. d-. q-. |
    <b d g>8-. <c e g>-. <a c fs>-. |
    g8( g') e-. |
    
    \barNumberCheck 25
    \voiceTwo b8( c a |
    \oneVoice g g') e-. |
    \voiceTwo b8( c a |
    \oneVoice g g') e-. |
    \voiceTwo b8( c a |
    % source has bass clef on the next measure
    \clef bass \oneVoice \stemDown g g,) r |
    s4. * 2 |
    
    \barNumberCheck 33
    \clef treble \stemNeutral <g'' b>8-. q-. q-. |
    <f c'>8-. q-. q-. |
    <g b>8-. q-. q-. |
    <f c'>8-. q-. q-. |
    <g b>8-. q-. q-. |
    <f c'>8-. q-. q-. |
    <f af c>8-. q-. q-. |
    <ef g c>8-. q-. q-. |
    
    \barNumberCheck 41
    <d f g b>8-. q-. q-. |
    <c g'>8-. q-. q-. |
    \clef bass f8( f,) af |
    g8( g,4) |
    g''16( af g f ef d) |
    g,,,4. |
    g'''16( af g f ef d) |
    g,,,4. |
    
    \barNumberCheck 49
    g'''16( af g f ef d) |
    g,,,4( c8) |
    f'8( g) g,-. |
    c,4. |
    g'''16( af g f ef d) |
    g,,,4. |
    g'''16( af g f ef d) |
    g,,,4. |
    
    \barNumberCheck 57
    g'''16( af g f ef d) |
    g,,,4( c8) |
    f'8( g) g,-. |
    c8( d ef |
    \stemDown f8 g) g,-. |
    c8( d ef |
    f8 g) g,-. |
    \stemNeutral c,8( d ef |
    
    \barNumberCheck 65
    f8 g) g,-. |
    c4. |
  }
  \repeat volta 2 {
    c'4. |
    \clef treble r16 c''( a bf c d |
    c8-.) c,-. c-. |
    <d f>8-. q-. q-. |
    <e g>8-. q-. e( |
    f8-.) \clef bass f,4 |
    
    \barNumberCheck 73
    \clef treble <f' a c>8-. q-. <f b>-. |
    \voiceTwo e4. |
    \oneVoice <f a d>8-. q-. q-. |
    <e a c>8-. q-. q-. |
    <ef g c>8-. q-. <ef a c>-. |
    \voiceTwo d4. |
    \oneVoice <ef g c>8-. q-. q-. |
    <d g bf>8-. q-. q-. |
    
    \barNumberCheck 81
    <cs g' a>8-. q-. q-. |
    <d a'>8( <e g> <f a> |
    g8-.) \clef bass g,-. bf-. |
    \offsetPositions #'(0 . 2.5) a8( a,4) |
    \clef treble <a'' cs>8-. q-. q-. |
    <g bf d>8-. q-. q-. |
    <a cs>8-. q-. q-. |
    <g bf d>8-. q-. q-. |
    
    \barNumberCheck 89
    <a cs>8-. q-. q-. |
    <g bf d>8-. q-. q-. |
    <f bf d>8-. q-. q-. |
    <e bf' c>8-. q-. q-. |
    <d f bf>8-. q-. q-. |
    <c f g bf>8-. q-. q-. |
    <c g' bf>8-. q-. q-. |
    <f a>4. |
    
    \barNumberCheck 97
    \voiceTwo f8( d4 |
    \oneVoice <c e g c>4.) |
    \voiceTwo f8-\slurShapeI ( d4 |
    \oneVoice <c e g c>4.) |
    \voiceTwo f8( d4 |
    \oneVoice <c e g c>4.) |
    \voiceTwo f8( d4 |
    \oneVoice <c e g c>8-.) r r \clef bass  |
    
    \barNumberCheck 105
    s4. * 2 |
    <c e>8-. q-. q-. |
    <bf f'>8-. q-. q-. |
    <c e>8-. q-. q-. |
    <bf f'>8-. q-. q-. |
    <c e>8-. q-. q-. |
    <bf df f>8-. q-. <df f>-. |
    
    \barNumberCheck 113
    <c f>8( <c e!>) q-. |
    <g e'>8( c) e-. |
    f8( f,4) |
    \clef treble c''16( df c bf af g) |
    \clef bass c,,,4. |
    \clef treble c'''16( df c bf af g) |
    \clef bass c,,,4. |
    \clef treble c'''16( df c bf af g) |
    
    \barNumberCheck 121
    \clef bass c,,,8( c') f-.\noBeam | 
    bf8( c) c,-. |
    f,4. |
    \clef treble c'''16( df c bf af g) |
    \clef bass c,,,4. |
    \clef treble c'''16( df c bf af g) |
    \clef bass c,,,4. |
    \clef treble c'''16( df c bf af g) |
    
    \barNumberCheck 129
    \clef bass c,,,4( f8) | 
    bf'8( c) c,-. |
    f8( g af |
    bf8 c) c,-. |
    f8( g af |
    bf8 c) c,-. |
    f,8( g af |
    bf8 c) c,-. |
    
    \barNumberCheck 137
    f4. |
  }
}

leftHand = {
  \global
  \clef bass
  <<
    \new Voice \leftHandUpper
    \new Voice \leftHandLower
  >>
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s4.\mf |
    s4. * 3 |
    s4.\p |
    s4. * 3 |
    
    \barNumberCheck 9
    s4.\mf |
    s32 s8..\< \tag layout { s8\sf } \tag midi { s\ff } |
    s4.\p |
    s4. |
    s4.\mf |
    s32 s8..\< \tag layout { s8\sf } \tag midi { s\ff } |
    s4.\p |
    s4. |
    
    \barNumberCheck 17
    s4.-\tweak Y-offset 1 \cresc |
    s4. |
    s8-\tweak Y-offset 0.5 \f s4-\tweak Y-offset 0.5 \p |
    s4. |
    s4.\cresc |
    s4. * 2 |
    s4.\mf |
    
    \barNumberCheck 25
    s4 s16.\< s32\! |
    s4. |
    s4 s16.\< s32\! |
    s4. |
    s4 s16.\< s32\! |
    s4.-\tweak Y-offset -1 \f |
    s4. * 2 |
    
    \barNumberCheck 33
    s4.\p |
    s4\mf\> s16 s\! |
    s4.\p |
    s4\mf\> s16 s\! |
    s4.\p |
    s4\f\> s16 s\! |
    s4.\p |
    s4.-\tweak Y-offset -1 \cresc |
    
    \barNumberCheck 41
    s4. * 2 |
    s4.\f |
    \grace { s16\> } s4.\! |
    s4.\p |
    s4. |
    s4.\cresc |
    s4. |
    
    \barNumberCheck 49
    s4.\cresc |
    s4.\f |
    s4. * 2 |
    s4.\p |
    s4. |
    s4.\cresc |
    s4. |
    
    \barNumberCheck 57
    s4. |
    s4.-\tweak Y-offset -2 \f |
    s4. * 6 |
    
    \barNumberCheck 65
    s4. * 2 |
  }
  \repeat volta 2 {
    s4.\p |
    s4. * 2 |
    s4\< \tag layout { s8\sf } \tag midi { s\ff } |
    s4.\p |
    s4\< \tag layout { s8\sf } \tag midi { s\ff } |
    
    \barNumberCheck 73
    s4\p\< s16 s\! |
    s4.\f |
    s4.\p |
    s4. |
    s4\p\< s16 s\! |
    s4.\f |
    s4.\p |
    s4. |
    
    \barNumberCheck 81
    s4.\cresc |
    s4. * 2 |
    s4.\f |
    s4.\p |
    s4\mf\> s8\! |
    s4.\p |
    s4\mf\> s8\! |
    
    \barNumberCheck 89
    s4.\p |
    s4.\mf |
    s4.-\tweak Y-offset 1 \cresc |
    s4. * 2 |
    s4.\f |
    s4. * 2 |
    
    \barNumberCheck 97
    s4. |
    s4 s8-\tweak Y-offset -0.5 \> |
    s8 s4\p |
    s4 s16.\< s32\! |
    s4.\f |
    s4. |
    s4.\f |
    s4. |
    
    \barNumberCheck 105
    s4. * 2 |
    s4.\p |
    s4\mf\> s8\! |
    s4.\p |
    s4\mf\> s8\! |
    s4.\p |
    s4.\cresc |
    
    \barNumberCheck 113
    s4. * 2 |
    s4.-\tweak Y-offset 1 \f |
    s4.\p |
    s4. |
    s4.\cresc |
    s4. * 2 |
    
    \barNumberCheck 121
    s4.\f |
    s4. * 2 |
    s4.\p |
    s4. |
    s4.\cresc |
    s4. * 2 |
    
    \barNumberCheck 129
    s4.\f |
    s4. * 7 |
    
    \barNumberCheck 137
    s4. |
  }
}

tempi = {
  \repeat volta 2 {
    \tempo " Allegro" 4. = 56
    s4. * 64 |
    
    \barNumberCheck 65
    \set Score.tempoHideNote = ##t
    s8 \tempo 4. = 52 s \tempo 4. = 48 s |
    s4. |
  }
  \repeat volta 2 {
    \tempo 4. = 56
    s4. * 6 |
    
    \barNumberCheck 73
    s4. * 56
    
    \barNumberCheck 129
    s4. * 7 |
    \tag layout { s4. * 2 | }
    \tag midi {
      \alternative {
        {
          s8 \tempo 4. = 52 s \tempo 4. = 48 s |
          
          \barNumberCheck 137
          s4. |
        }
        {
          \tempo 4. = 50 s8 \tempo 4. = 44 s \tempo 4. = 38 s |
          
          \barNumberCheck 137
          \tempo 4. = 32 s4. |
        }
      }
    }
  }
}

forceBreaks = {
  % page 1
  s4. * 6 \break
  s4. * 7 \break
  s4. * 6 \break
  s4. * 6 \break
  s4. * 7 \pageBreak
  
  % page 2
  s4. * 7 \break
  s4. * 7 \break
  s4. * 7 \break
  s4. * 6 \break
  s4. * 7 \pageBreak
  
  % page 3
  s4. * 6 \break
  s4. * 7 \break
  s4. * 7 \break
  s4. * 6 \break
  s4. * 7 \break
  s4. * 7 \pageBreak
  
  % page 4
  s4. * 6 \break
  s4. * 6 \break
  s4. * 6 \break
  s4. * 6 \break
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
    \new Staff = "lower" \with { \clef bass } \leftHand
    \new Dynamics \tempi
    \new Devnull \forceBreaks
  >>
  \layout {
    \context {
      \Staff
      \consists #initial-clef-change-engraver
    }
  }
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
