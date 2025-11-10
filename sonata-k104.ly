%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\include "globals.ily"

\header { 
  title = "Sonata in G major"
  opus = "K.104"
  source = "https://vmirror.imslp.org/files/imglnks/usimg/2/25/IMSLP626886-PMLP335314-Sonata_K._104_(as_L._442).pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'((0 . 6) (0 . 0) (0 . 0) (0 . 0)) \etc
slurShapeB = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 2) (0 . 4.75))
                      ) \etc
slurShapeC = \shape #'((0 . 0) (0 . 1) (0 . 5) (0 . 4.75)) \etc
slurShapeD = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (1 . -4) (0 . 4))
                        ) \etc
slurShapeE = \shape #'(
                        ((0 . 0) (0 . 0) (3 . 0) (3 . 0))
                        ((0.25 . 0) (0.25 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeF = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . -3) (0 . -3) (0 . -3) (0 . -3))
                      ) \etc
slurShapeG = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0.25))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeH = \shape #'((0 . 0.25) (0 . 0.25) (0 . 0) (0 . 0)) \etc
slurShapeI = \shape #'((0 . 0) (0 . 0.25) (0 . 2) (0 . 0)) \etc
slurShapeJ = \shape #'(
                        ((0 . 0) (0 . 0) (2.5 . 0) (2.5 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0.25))
                      ) \etc
slurShapeK = \shape #'((0 . 0) (0 . 0) (0 . 1) (0 . -3)) \etc
slurShapeL = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.5 . 2.5) (0.5 . 2.5) (0 . 2.5) (0 . 2.5))
                      ) \etc
slurShapeM = \shape #'((0.5 . 0) (0.5 . 0) (0 . 0) (0 . 0)) \etc

%
% Music
%

global = {
  \time 3/8
  \key g \major
}

rightHandUpper = \relative { 
  \repeat volta 2 {
    \voiceOne g''16 b g s8. |
    s16 g-. s fs-. s e-. |
    d16( g d) s8. |
    s16 c-. s b-. s a-. |
    g16( g' g,) s8. |
    s16 a-. s g-. s fs-. |
    g16( d b' g d' b |
    \oneVoice g'16[ d]) fs8.(\trill e32 d |
    
    \barNumberCheck 9
    b'16[ g]) a8.(\trill g32 fs |
    g16[ d]) fs8.(\trill e32 d |
    b'16[ g]) a8.-\slurShapeB (\trill g32 fs |
    \stemDown g16 d b g d b |
    R4. |
    << 
      { \staffDown \hideNoteHead g,,4*3/2) | } 
      \new Voice { \staffUp R4. | } 
    >>
    \staffUp \voiceOne s16 b'''-.^\p s d-. s g-. |
    s16 e-. s g-. s c-. |
    
    \barNumberCheck 17
    s16 d,-. s g-. s b-. |
    s16 c,-. s fs-. s a-. |
    s16 b,-.^\p s d-. s g-. |
    s16 e-. s g-. s c-. |
    s16 d,-. s g-. s b-. |
    s16 c,-. s fs-. s a-. |
    \oneVoice \stemDown g16-\slurShapeC ( d b g d b |
    R4. |
    
    \barNumberCheck 25
    << 
      { \staffDown \hideNoteHead g,,4*3/2) | } 
      \new Voice { \staffUp R4. | } 
    >>
    \staffUp \oneVoice r8 \grace { bf''''32( } bf8.)(\trill a32 g |
    d8-.) d'4-> |
    r8 \grace { bf32( } bf8.)(\trill a32 g |
    d8-.) d'4-> |
    r8 \grace { af32( } af8.)(\trillBelow \trill ^\trillFlat g32 f |
    c8-.) c'4-> |
    r8 \grace { af32( } af8.)(\trillBelow \trill ^\trillFlat g32 f |
    
    \barNumberCheck 33
    c8-.) c'4-> |
    r16 c-. c( bf) bf( a!) |
    a16( g) g( fs) fs( g) |
    g16( f) f( ef) ef( d) |
    d16( cs) cs( d) d( c) |
    c16( bf) bf( a) a( bf) |
    a16( g) g( fs) fs( g) |
    g16( a) a( bf) bf( c |
    
    \barNumberCheck 41
    d16 a fs d) d-. d-. |
    R4. |
    \voiceOne s16 fs-. s a-. s c-. |
    s16 b-. s d-. s g-. |
    s16 c,-. s fs-. s a-. |
    s16 d,-. s g-. s b-. |
    s16 fs,-. s a-. s c-. |
    s16 b-. s d-. s g-. |
    
    \barNumberCheck 49
    s16 c,-. s fs-. s a-. |
    s16 d,-. s g-. s b-. |
    \oneVoice \grace { d,32( } d4)\trill \grace { d,32( } \voiceFour
      d8)~^\trill _\ms |
    d8 s4 |
    \oneVoice R4. |
    c''16( a fs ef c a) |
    a8-. bf4-> |
    c'16( a fs ef c a) |
    
    \barNumberCheck 57
    a8-. bf4-> |
    bf'16( g e! cs bf g') |
    \voiceOne g16[( e]) e8( f) |
    \oneVoice bf16( g e! cs bf g') |
    \voiceOne g16[( e]) e8( f) |
    f8( e f |
    e8) s4 |
    \offsetPositions #'(0 . -1.5) e8( f g |
    
    \barNumberCheck 65
    \hideNoteHead f8) s4 |
    f8-\slurShapeE ( e f |
    e8) s4 |
    \offsetPositions #'(0 . -1.5) e8( f g |
    \hideNoteHead f8) s4 |
    s8 a^\ms s |
    s8 b s |
    s8 cs s |
    
    \barNumberCheck 73
    s4. |
    s8 a s |
    s8 b s |
    s8 cs s |
    \oneVoice fs,16( g a g fs e |
    d16 cs b a g fs |
    b16 a g fs e d |
    \voiceOne cs16 \voiceDown b a g fs e |
    
    \barNumberCheck 81
    fs d fs a) \oneVoiceUp a''8-\slurShapeG (~\noBeam |
    a8 \tag layout { g4)\prallprall } \tag midi { g)\prall } |
    \voiceDown fs,,16( d fs a) \oneVoiceUp d''8(~\noBeam |
    d8 \tag layout { cs4)\prallprall } \tag midi { cs)\prall } |
    \voiceDown fs,,,16( d fs a) \oneVoiceUp a''8-\slurShapeH (~\noBeam |
    a8 \tag layout { g4)\prallprall } \tag midi { g)\prall } |
    \voiceDown fs,,16( d fs a) \oneVoiceUp d''8(~\noBeam |
    d8 \tag layout { cs4)\prallprall } \tag midi { cs)\prall } |
    
    \barNumberCheck 89
    d16( cs b a g fs |
    e[ fs32 g]  fs16 e d cs |
    \hideNoteHead d16 \hideNoteHead a) \voiceOne e'8[-\slurShapeJ ( fs] |
    g8 fs e |
    fs8 e fs |
    g8 fs e |
    fs8 e fs |
    g8 fs e |
    
    \barNumberCheck 97
    \oneVoice d16)( cs b a g fs |
    e16[ fs32 g]  fs16 e d cs |
    d4.) |
  }
  \repeat volta 2 {
    \voiceOne d16-. s fs-. s a-. s |
    c!16-. s a'-. s fs-. s |
    c,16-. s fs-. s a-. s |
    c16-. s a'-. s fs-. s |
    b,,16-. s g'-. s b-. s |
    
    \barNumberCheck 105
    d16-. s b'-. s g-. s |
    a,,16-. s fs'-. s a-. s |
    fs'16-. s a-. s c,-. s |
    \oneVoice \tag layout { b8.(\prallprall } \tag midi { b(\prall } a16 g8) |
    s4 \voiceOne d'8 |
    d8 d d |
    d8 d d |
    d8 d d |
    
    \barNumberCheck 113
    d8 d d |
    d8 d d |
    s8 gs(^\ms a) |
    s8 gs( a) |
    s8 gs( a) |
    \oneVoice \tag layout { c,8.(\prallprall } \tag midi { c(\prall } b16 a8) |
    r16 e'-. e( d) d( c) |
    \stemDown c16( b) b( a) a( g) |
    
    \barNumberCheck 121
    g16( g') g( f) f( e) |
    e16( d) d( c) c( b) |
    b16( b') b( a) a( g) |
    g16( fs!) fs( e) e( ds) |
    ds16( c!) c( b) b( a) |
    \stemNeutral a16( g) g( fs) fs( g) |
    \voiceOne g16-. s b-. s e-. s |
    fs,16-. s a-. s ds-. s |
    
    \barNumberCheck 129
    g,16-. s b-. s e-. s |
    fs,16-. s a-. s <ds fs>-. s |
    <e g>16-. s g,-. s b-. s |
    g16-. s cs-. s e-. s |
    f,16-. s a-. s d-. s |
    g,16-. s cs-. s <cs e>-. s |
    <d f>16-. s f,-. s a-. s |
    f16-. s b-. s d-. s |
    
    \barNumberCheck 137
    e,16-. s g-. s c!-. s |
    f,16-. s b-. s <b d>-. s |
    \oneVoice \stemDown e,16( e') e( d) d( c) |
    c16( b) b( a) a( b) |
    b16( d) d( c) c( b) |
    \stemNeutral b16( a) a( g) g( fs) |
    \tag layout { fs8.(\prallprall } \tag midi { fs(\prall } e16 d8) |
    r8 \grace { bf'32( } bf8.)-\slurShapeM (\trill a32 g |
    
    \barNumberCheck 145
    d8-.) d'4-> |
    r8 \grace { bf32( } bf8.)-\slurShapeM (\trill a32 g |
    d8-.) d'4-> |
    r8 f16( d) d( b |
    b8-.) c4-> |
    r8 f16( d) d( b |
    b8-.) c4-> |
    r8 bf'16( g e cs |
    
    \barNumberCheck 153
    cs8-.) d4-> |
    r8 bf'16( g e cs |
    cs8-.) d16( d') d( c!) |
    c16( bf) bf( a) a( g) |
    fs!16( ef) ef( d) d( c) |
    c16( bf) bf( a) a( bf) |
    bf16( d) d( c) c( bf) |
    bf16( a) a( g) g( fs) |
    
    \barNumberCheck 161
    \tag layout { fs8.(\prallprall } \tag midi { fs(\prall } e16 d8) |
    d16( a' fs d) c''8-.\noBeam |
    d,,16( b'! g d) d''8-.\noBeam |
    d,,16( a' fs d) c''8-.\noBeam |
    d,,16( b' g d) d''8-.\noBeam |
    d,,16( a' fs d) c''8-.\noBeam |
    b16( a g fs g d |
    e16 c b a g fs |
    
    \barNumberCheck 169
    g16) d'( b g d g |
    d16 a' fs d) c''8-.\noBeam |
    d,,16( b' g d) d''8-.\noBeam |
    d,,16( a' fs d) c''8-.\noBeam |
    d,,16( b' g d) d''8-.\noBeam |
    d,,16( a' fs d) c''8-.\noBeam |
    b16-\slurShapeK ( a g fs g d |
    e16 c b a g fs |
    
    \barNumberCheck 177
    \hideNoteHead g16 \hideNoteHead d) \voiceOne b''8-.[^\ms g-.] |
    s4. |
    s8 a-. fs-. |
    s4. |
    s8 b-. g-. |
    s4. |
    s8 a-. fs-. |
    s8 b-. g-. |
    
    \barNumberCheck 185
    s8 a-. fs-. |
    s8 b-. g-. |
    s8 a-. fs-. |
    \oneVoice b,16( a g fs g d |
    e16 c b a g fs) |
    r16 g''-. g( fs) fs( e) |
    e16( d) d( c) c( b) |
    b16( b') b( a) a( g) |
    
    \barNumberCheck 193
    g16( fs) fs( e) e( d) |
    d16( d') d( c) c( b) |
    b16( a) a( g) g( fs) |
    fs16( e) e( d) d( c) |
    c16( b) b( a) a( b) |
    b16( a b c d b |
    e16 c b a g fs |
    \hideNoteHead g16 \hideNoteHead d) \voiceOne a'8[( b]^\< |
    
    \barNumberCheck 201
    e8^\> d\! c |
    b8 a b^\< |
    e8^\> d\! c |
    b8 a b^\< |
    e8^\> d\! c |
    \oneVoice b16)( a b c d b |
    e16 c b a g fs |
    g16 fs e d c b |
    
    \barNumberCheck 209
    a16[ b32 c]  b16 a g fs |
    g4.) |
  }
}

rightHandLower = \relative {
  \repeat volta 2 {
    s4. * 56 |
    
    \barNumberCheck 57
    s4. * 2 |
    \voiceFour cs''4( d8) |
    s4. |
    cs4( d8) |
    d16 a cs a d a |
    cs16 a d a cs a |
    cs16 a d a e' a, |
    
    \barNumberCheck 65
    f'16 a, e' a, d a |
    d16 a cs a d a |
    cs16 a d a cs a |
    cs16 a d a e' a, |
    f'16-\slurShapeF ( a, e' a, d a |
    cs16 a d a cs a |
    b16 a e' a, d a |
    cs16 a d a e' a, |
    
    \barNumberCheck 73
    fs'16^\> a, e' a, d a\! |
    cs16 a d a cs a |
    b16 a e' a, d a |
    cs16 a d a e' a, |
    \hideNoteHead fs'16) s s4 |
    s4. * 3 |
    
    \barNumberCheck 81
    s4. * 8 |
    
    \barNumberCheck 89
    s4. * 2 |
    d16 a cs a d a |
    e'16 a, d a cs a |
    d16 a cs a d a |
    e'16 a, d a cs a |
    d16 a cs a d a |
    e'16 a, d a cs a |
    
    \barNumberCheck 97
    s4. * 3 |
  }
  \repeat volta 2 {
    s4. * 5 |
    
    \barNumberCheck 105
    s4. * 4 |
    d16( e, gs e a f |
    gs16 e a f gs e |
    a16 f gs e a f |
    gs16 e a f gs e |
    
    \barNumberCheck 113
    a16 f gs e a f |
    gs16 e a f gs e) |
    f'16( f, gs f f' gs, |
    e'16 e, a e e' e, |
    d'16 d, gs d d' d,) |
    s4. * 3 |
    
    \barNumberCheck 121
    s4. * 56 |
    
    \barNumberCheck 177
    g16 d d'-\slurShapeD ( d, b' d, |
    \oneVoice a' d, g d fs d |
    \voiceFour a'16 d, c' d, a' d, |
    \oneVoice b'16 d, a' d, g d |
    \voiceFour b' d, d' d, b' d, |
    \oneVoice a' d, g d fs d |
    \voiceFour a'16 d, c' d, a' d, |
    b' d, d' d, b' d, |
    
    \barNumberCheck 185
    a'16 d, c' d, a' d, |
    b' d, d' d, b' d, |
    a'16 d, c' d, a' d, |
    \hideNoteHead b'16) s s4 |
    s4. * 4 |
    
    \barNumberCheck 193
    s4. * 7 |
    g16 d fs d g d |
    
    \barNumberCheck 201
    c'16 d, b' d, a' d, |
    g16 d fs d g d |
    c'16 d, b' d, a' d, |
    g16 d fs d g d |
    c'16 d, b' d, a' d, |
    s4. * 3 |
    
    \barNumberCheck 209
    s4. * 2 |
  }
}

rightHand = {
  \global
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHand = \relative {
  \global
  \clef bass
  \repeat volta 2 {
    \voiceUp \hideNoteHead g16-\slurShapeA ( s8 d''16_\ms b g |
    e'16-.) s d-. s c-. s |
    b8. b16( g d |
    e16-.) s d-. s c-. s |
    b8.( d16 b g) |
    <c e>16-. s <b d>-. s <a c>-. s |
    \override Parentheses.font-size = -3
    <g \parenthesize b>8-> r r |
    \staffDown \oneVoice g8( d' d, |
    
    \barNumberCheck 9
    g8 d' d, |
    g8 d' d, |
    g8 d' d, |
    g8) r r |
    g16 d b g d b |
    g4. |
    \voiceUp g'''16-.\sf s b-. s d-. s |
    g,16-. s c-. s e-. s |
    
    \barNumberCheck 17
    g,16-. s b-. s d-. s |
    d,16-. s a'-. s c-. s |
    \staffDown g,16-.\sf s \voiceUp g'-. s b-. s |
    \staffDown g,16-.\sf s \voiceUp c'-. s e-. s |
    \staffDown g,,16-.\sf s \voiceUp b'-. s d-. s |
    \staffDown d,,16-.\sf s \voiceUp a''-. s c-. s |
    \staffDown \oneVoice \parenthesize g,4. |
    g16 d b g d b |
    
    \barNumberCheck 25
    g4. |
    \clef treble <g''' bf d>8 q q |
    <fs a c>8 q q |
    <g bf d>8 q q |
    <fs a c>8 q q |
    <f b! d>8 q q |
    <ef g c>8 q q |
    <f b! d>8 q q |
    
    \barNumberCheck 33
    <ef g c>8 q q |
    q8 q <d g bf> |
    <c g' a>8 q <bf d g> |
    \clef bass <a f'>8 q <g ef'> |
    <f d'>8 q <ef c'> |
    <d bf'>8 q <c a'> |
    <bf g'>8 q <a f'> |
    <g g'>8 <f f'> <ef ef'> |
    
    \barNumberCheck 41
    <d d'>4. |
    d4.-> |
    \voiceUp d''16-. s fs-. s a-. s |
    d,16-. s g-. s b-. s |
    d,16-. s a'-. s c-. s |
    d,16-. s b'-. s d-. s |
    \staffDown d,,16-. s \voiceUp fs'-. s a-. s |
    \staffDown d,,16-. s \voiceUp g'-. s b-. s |
    
    \barNumberCheck 49
    \staffDown d,,16-. s \voiceUp a''-. s c-. s |
    \staffDown d,,16-. s \voiceUp b''-. s d-. s |
    \staffDown s4. |
    s8 \voiceThree \grace { d,,32_( } d4)-\trillBelow \trill ^\md |
    \grace { d,32_( } d4.)-\trillBelow \trill ^\ms |
    \oneVoice r4 fs''8( |
    g8 d g,) |
    r4 fs'8( |
    
    \barNumberCheck 57
    g8 d g,) |
    r4 cs8( |
    d8 a d,) |
    r4 cs'8( |
    d8 a d,) |
    r8 \clef treble cs'''-. d-. |
    \clef bass a,,,4. |
    r8 \clef treble a'''-. cs-. |
    
    \barNumberCheck 65
    \clef bass d,,,,4. |
    r8 \clef treble cs''''-. d-. |
    \clef bass a,,,4. |
    r8 \clef treble a'''-. cs-. |
    \clef bass d,,,,4. |
    fs'!8 s fs |
    g8 s g |
    a8 s a |
    
    \barNumberCheck 73
    d,4.( |
    fs8) s fs |
    g8 s g |
    a8 s a |
    \offsetPositions #'(-2.5 . -2) d,4._( |
    fs4. |
    a4. |
    \voiceTwo a,4. |
    
    \barNumberCheck 81
    d,4.) |
    \oneVoice a'4.-\slurShapeI _( |
    \voiceTwo d,4. |
    \oneVoice a'4. |
    \voiceTwo d,4. |
    \oneVoice a'4. |
    \voiceTwo d,4. |
    \oneVoice a'4.) |
    
    \barNumberCheck 89
    d8( e fs |
    g8 a a, |
    d8)\noBeam \clef treble cs'''-. d-. |
    \clef bass g,,,,8( a4 |
    d,8-.)\noBeam \clef treble cs''''-. d-. |
    \clef bass g,,,,8( a4 |
    d,8-.)\noBeam \clef treble cs''''-. d-. |
    \clef bass g,,,,8( a4) |
    
    \barNumberCheck 97
    d8( e fs |
    g8 a) a, |
    d,4. |
  }
  \repeat volta 2 {
    \voiceUp s16 d''-. s fs-. s a-. |
    s16 c-. s a-. s d,-. |
    s16 c-. s fs-. s a-. |
    s16 c-. s a-. s c,-. |
    s16 b-. s d-. s g-. |
    
    \barNumberCheck 105
    s16 b-. s d-. s b-. |
    s16 a,-. s c-. s fs-. |
    s16 a-. s fs-. s d-. |
    \staffDown \oneVoice g,4. |
    r8 e-. f-. |
    e4.( |
    f8)\noBeam \clef treble gs''-. a-. |
    \clef bass e,,4.( |
    
    \barNumberCheck 113
    f8)\noBeam \clef treble gs''-. a-. |
    \clef bass e,,4.( |
    d8) s4 |
    c8 s4 |  
    b8 s4 |
    a4. |
    <c' e>8-. q( <b d> |
    <a c>8) <g b>-. <fs a>-. |
    
    \barNumberCheck 121
    <e g>8-. <e' g>( <d f> |
    <c e>8) <b d>-. <a c>-. |
    << { b8( e) ds-. } \\ { g,4 fs!8 } >> |
    e'8( d!) c-. |
    b4( cs8 |
    ds8 e) b-. |
    \voiceUp s16 e-. s g-. s b-. |
    s16 b,-. s fs'-. s a-. |
    
    \barNumberCheck 129
    s16 e-. s g-. s b-. |
    s16 b,16-. s fs'-. s a-. |
    s16 \staffDown e,-. s \staffUp e'-. s g-. |
    s16 \staffDown a,-. s \staffUp e'-. s g-. |
    s16 \staffDown a,-. s \staffUp d-. s f-. |
    s16 \staffDown a,-. s \staffUp e'-. s g-. |
    s16 \staffDown a,-. s \staffUp d-. s f-. |
    s16 \staffDown g,-. s \staffUp d'-. s f-. |
    
    \barNumberCheck 137
    s16 \staffDown g,-. s \staffUp c-. s e-. |
    s16 \staffDown g,-. s \staffUp d'-. s f-. |
    \staffDown \oneVoice c,8-. <c' e>( <b d> |
    <a c>8) <g b>-. <fs a>-. |
    g,8-. <b' d>( <a c> |
    <g b>) <fs a>-. <e g>-. |
    d,4. |
    <g' bf d>8 q q |
    
    \barNumberCheck 145
    <fs a>8 <fs a d> q |
    <g bf d>8 q q |
    <fs a>8 <fs a d> q |
    <g d' f>8 q q |
    <af c f>8 q q |
    <g d' f>8 q q |
    <af c f>8 q q |
    <a! cs g'>8 q q |
    
    \barNumberCheck 153
    <bf d g>8 q q |
    <a cs e g>8 q q |
    <bf d g>8 q <a c d fs> |
    <g g'>8 <f f'> <ef ef'> |
    <d d'>4 <e! c'>8( |
    <fs d'>8-.) <g d'>-. <fs d'>-. |
    <g d'>8-. <bf d>( <a c> |
    <g d'>8) f-. ef-. |
    
    \barNumberCheck 161
    d,4. |
    <d d'>4. |
    <g g'>4. |
    <d d'>4. |
    <g g'>4. |
    <d d'>4. |
    <g g'>8-. <a a'>-. <b b'>-. |
    c8( d) d,-. |
    
    \barNumberCheck 169
    g4. |
    <d d'>4. |
    <g g'>4. |
    <d d'>4. |
    <g g'>4. |
    <d d'>4. |
    <g g'>8-. <a a'>-. <b b'>-. |
    c8( d) d,-. |
    
    \barNumberCheck 177
    g8 s4 |
    d4. |
    r8 s4 |
    g4. |
    r8 s4 |
    d4. |
    r8 s4 |
    g8 s4 |
    
    \barNumberCheck 185
    d8 s4 |
    g8 s4 |
    d8 s4 |
    g8( a b |
    c8 d) d,-. |
    g'8-. <b d>-. <g g'>-. |
    << { e'4-> fs8-. } \\ { c8( b) a-. } >> |
    <g g'>8-. g'( fs |
    
    \barNumberCheck 193
    e8) d-. c-. |
    << { b8( g') fs-. } \\ { b,4 a8-. } >>
    <g g'>8-. fs'( <e g> |
    <d fs>) <c e>-. <b d>-. |
    << 
      { 
        \voiceTwo a8 g( fs |
        g8 a b |
      } 
      \new Voice { 
        \voiceThree c8-. d4 |
        d4. |
      }
    >>
    \oneVoice c8 d) d,-. |
    g,8-.\noBeam \clef treble fs'''( g) |
    \clef bass c,,,8-. \offsetPositions #'(0 . 2.5) d4( |
    g,8)\noBeam \clef treble fs'''( g) |
    \clef bass c,,,8-. d4-\slurShapeL ( |
    g,8)\noBeam \clef treble fs'''( g) |
    \clef bass c,,,8-. d4( |
    <g, g'>8-.) <a a'>-. <b b'>-. |
    <c c'>8( <d d'>) d,-. |
    g8( a b |
    
    \barNumberCheck 209
    c8 d) d,-. |
    g4. |
  }
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s4.\f |
    s4. * 7 |
    
    \barNumberCheck 9
    s4. * 8 |
    
    \barNumberCheck 17
    s4. * 2 |
    s8 s4\cresc |
    s4. * 3 |
    s4.\f |
    s4. |
    
    \barNumberCheck 25
    s4. |
    s4.\mf |
    s4. |
    s4.\p |
    s4. |
    s4.\f |
    s4. |
    s4.\p |
    
    \barNumberCheck 33
    s4. |
    s4.\p |
    s4. * 4 |
    s4.\cresc |
    s4. |
    
    \barNumberCheck 41
    s4.-\tweak Y-offset 1 \f |
    s4. |
    s4.\p |
    s4.\cresc |
    s4. * 2 |
    s4.\mf |
    s4.\cresc |
    
    \barNumberCheck 49
    s4. * 2 |
    s4.-\tweak Y-offset -2 \f |
    s4. * 2 |
    s4.-\tweak extra-offset #'(0 . -1) \p |
    s4. * 2 |
    
    \barNumberCheck 57
    s4. |
    s4.\mf |
    s4. |
    s4.\p |
    s4. |
    s4.\p |
    s4. * 2 |
    
    \barNumberCheck 65
    s4\mf\> s16 s\! |
    s4.\p |
    s4. * 2 |
    s4\mf\> s16 s\! |
    s4.\p\cresc |
    s4. * 2 |
    
    \barNumberCheck 73
    s4.\f |
    s4.\p |
    s4. * 2 |
    s4.\cresc |
    s4. * 3 |
    
    \barNumberCheck 81
    s4.\f |
    s4. * 3 |
    s4.\p |
    s4. * 3 |
    
    \barNumberCheck 89
    s4.\f |
    s4. |
    s16\> s\! s4\p |
    s4. |
    s4.-\tweak Y-offset -1 \cresc |
    s4. * 3 |
    
    \barNumberCheck 97
    s4.\f |
    s4. * 2 |
  }
  \repeat volta 2 {
    s16\f s\p s4 |
    s4. |
    s16\f s\p s4 |
    s4. |
    s16\f s\p s4 |
    
    \barNumberCheck 105
    s4. |
    s16\f s\p s4 |
    s4. |
    s4.\f |
    s4.-\tweak Y-offset -1.5 \p |
    s4. * 3 |
    
    \barNumberCheck 113
    s4. * 2 |
    s4.\cresc |
    s4. * 2 |
    s4.\f |
    s4.\p |
    s4. |
    
    \barNumberCheck 121
    s8\f s4\p |
    s4. |
    s8-\tweak Y-offset 1 \f s4-\tweak Y-offset 1.5 \p |
    s4.\cresc |
    s4. * 2 |
    s16\f s\p s4 |
    s4. |
    
    \barNumberCheck 129
    s4. |
    s4\< s16 s\! |
    s16\f s\p s4 |
    s4. * 2 |
    s4-\tweak Y-offset -1.5 \< s16 s\! |
    s16\f s\p s4 |
    s4. |
    
    \barNumberCheck 137
    s4. |
    s4-\tweak Y-offset -1 \< s16 s\! |
    s16\f s\p s4 |
    s4. |
    s16\f s\p s4 |
    s4. |
    s4.\f |
    s4.\mf |
    
    \barNumberCheck 145
    s4. |
    s4.\p |
    s4. |
    s4.\mf |
    s4. |
    s4.\p |
    s4. |
    s4.\mf |
    
    \barNumberCheck 153
    s4. |
    s4.\f |
    s4. * 6 |
    
    \barNumberCheck 161
    s4. |
    s4.\f |
    s4. * 6 |
    
    \barNumberCheck 169
    s16 s\p s4 |
    s4. * 5 |
    s4.-\tweak Y-offset 2 \f |
    s4. |
    
    \barNumberCheck 177
    s16\> s\! s4\p |
    s4. * 6 |
    s4.\cresc |
    
    \barNumberCheck 185
    s4. * 3 |
    s4.-\tweak Y-offset -2.5 \f |
    s4. |
    s16 s8\mf s8.\cresc |
    s4. * 2 |
    
    \barNumberCheck 193
    s4. |
    s4.\f |
    s4. * 5 |
    s8 s4\p |
    
    \barNumberCheck 201
    s4. * 5 |
    s4.\f |
    s4. * 2 |
    
    \barNumberCheck 209
    s4. * 2 |
  }
}

pedal = {
  \repeat volta 2 {
    s4. * 96 |
    
    \barNumberCheck 97
    s4. * 3 |
  }
  \repeat volta 2 {
    s4. * 5 |
    
    \barNumberCheck 105
    s4. * 56 |
    
    \barNumberCheck 161
    s4. |
    s4\sd s8\su |
    s4\sd s8\su |
    s4\sd s8\su |
    s4\sd s8\su |
    s4\sd s8\su |
    s4. * 2 |
    
    \barNumberCheck 169
    s4. |
    s4\sd s8\su |
    s4\sd s8\su |
    s4\sd s8\su |
    s4\sd s8\su |
    s4\sd s8\su |
    s4. * 2 |
    
    \barNumberCheck 177
    s4. * 32 |
    
    \barNumberCheck 209
    s4. * 2 |
  }
}

tempi = {
  \repeat volta 2 {
    \tempo " Allegro" 4. = 72
    s4. * 96 |
    
    \barNumberCheck 97
    s4. |
    \set Score.tempoHideNote = ##t
    s8 \tempo 4. = 66 s \tempo 4. = 60 s |
    s4. |
  }
  \repeat volta 2 {
    \tempo 4. = 72
    s4. * 5 |
    
    \barNumberCheck 105
    s4. * 104 |
    
    \barNumberCheck 209
    \tag layout { s4. * 2 | }
    \tag midi {
      \alternative {
        {
          s8 \tempo 4. = 66 s \tempo 4. = 60 s |
          s4. |
        }
        {
          \tempo 4. = 63 s8 \tempo 4. = 56 s \tempo 4. = 50 s |
          \tempo 4. = 40 s4. |
        }
      }
    }
  }
}

forceBreaks = {
  % page 1
  s4. * 5 \break
  s4. * 6 \break
  s4. * 6 \break
  s4. * 5 \break
  s4. * 6 \break
  s4. * 6 \pageBreak
  
  % page 2
  s4. * 5 \break
  s4. * 6 \break
  s4. * 5 \break
  \grace { s32 } s4. * 6 \break
  s4. * 5 \break
  s4. * 5 \pageBreak
  
  % page 3
  s4. * 5 \break
  s4. * 5 \break
  s4. * 5 \break
  s4. * 7 \break
  s4. * 5 \break
  s4. * 6 \pageBreak
  
  % page 4
  s4. * 7 \break
  s4. * 6 \break
  s4. * 6 \break
  s4. * 6 \break
  s4. * 6 \break
  s4. * 6 \pageBreak
  
  % page 5
  s4. * 6 \break
  s4. * 7 \break
  s4. * 6 \break
  s4. * 6 \break
  s4. * 6 \break
  s4. * 6 \pageBreak
  
  % page 6
  s4. * 6 \break
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
    \new Staff = "lower" \leftHand
    \new Dynamics \pedal
    \new Dynamics \tempi
    \new Devnull \forceBreaks
  >>
  \layout {}
}

\include "articulate.ly"

\score {
  \keepWithTag midi
  \articulate <<
    \new Staff = "upper" << \rightHand \dynamics \pedal \tempi >>
    \new Staff = "lower" << \leftHand \dynamics \pedal \tempi >>
  >>
  \midi {}
}
