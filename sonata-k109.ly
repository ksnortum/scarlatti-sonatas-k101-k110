%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\include "globals.ily"

\header { 
  title = "Sonata in A minor"
  opus = "K.109"
  source = "https://s9.imslp.org/files/imglnks/usimg/b/bf/IMSLP626891-PMLP335375-Sonata_K._109_(as_L._138).pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'((0 . -0.5) (0 . 0) (0 . 0) (0 . -0.5)) \etc
slurShapeB = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (-0.25 . 0.25))
                        ((-0.5 . 0) (-0.5 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeC = \shape #'(
                        ((0 . -2.5) (0 . -2.5) (0 . -2.5) (0 . -2.5))
                        ((-0.5 . -2.5) (-0.5 . -2.5) (0 . -2.5) (0 . -2.5))
                      ) \etc
slurShapeD = \shape #'(
                        ((-0.25 . -2.75) (-0.25 . -2.75) (0 . -2.75) (0 . -2.75))
                        ((0 . 0) (0 . -0.5) (0 . -1.5) (0 . -2.5))
                      ) \etc
slurShapeE = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 2.25) (0 . 2.25) (0 . 2.25) (0 . 2.25))
                      ) \etc
slurShapeF = \shape #'(
                        ((0 . -0.5) (0 . -0.5) (0 . 0) (0 . 0))
                        ((0 . -2) (0 . -2) (0 . -2) (0 . -2))
                      ) \etc
slurShapeG = \shape #'((0 . -1) (0 . 0) (0 . 1) (0 . -1)) \etc
slurShapeH = \shape #'(
                        ((0 . 0) (0 . 0.25) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc

tieShapeA = \shape #'((0 . -0.5) (0 . -0.5) (1 . -0.5) (1 . -0.5)) \etc
tieShapeB = \shape #'((0 . -0.5) (0 . -0.5) (1 . -0.5) (1 . -0.5)) \etc

%
% Music
%

global = {
  \time 4/4
  \key a \minor
}

rightHandUpper = \relative { 
  \repeat volta 2 {
    r4 a'-\slurShapeA ( c e |
    \acciaccatura { g8 } f4-.) e2 \tuplet 3/2 { b'8( c d } |
    \acciaccatura { g,8 } f4-.) e2 \tupletOff \tuplet 3/2 { b'8( c d) } |
    \acciaccatura { d8 } c4.( b16 a  \tag layout { gs4.\prallprall }
      \tag midi { gs\prall } a8 |
    b4. c16 d \tag layout { gs,4.\prallprall } \tag midi { gs\prall } a8 |
    b4. c16 d \tag layout { gs,4.\prallprall } \tag midi { gs\prall } a8) |
    a8_\( \grace { b32( } b8\))~\startTrillSpan b2. |
    r4\stopTrillSpan a8( f \appoggiatura { cs8 } d2->~ |
    
    \barNumberCheck 9
    d8) gs-\slurShapeB ( a f \appoggiatura { cs8 } d2->~ |
    d8) b'( gs f  d4. c16 b) |
    \tag layout { \appoggiatura { b8 } c4.(-\insideSlur \prallprall }
      \tag midi { \appoggiatura { b8 } c4.(\prall } b16 a)
      \tag layout { \appoggiatura { a8 } b4.(-\insideSlur \prallprall }
      \tag midi { \appoggiatura { a8 } b4.(\prall } a16 gs |
    a4) b'( c) b,( |
    c4) b,( c) \grace { d16( } d8.)(\trill c32 d |
    e4) b''( c) b,( |
    c4) b,( c) \grace { d16( } d8.)(\trill c32 d |
    e4) e-- \voiceOne c'2( |
    
    \barNumberCheck 17
    \tuplet 3/2 { b8 d c  b a g)  g( bf a g f e } |
    \tuplet 3/2 { f8) d( f  gs d b' } d2 |
    \tuplet 3/2 { c8)( e d  c b a)  a( c b  a g fs } |
    \oneVoice \tuplet 3/2 { g8 e g) } <b g'>4( <a fs'> \voiceOne
      \tuplet 3/2 { e'8 ds e } |
    \oneVoice <b ds>4) a'( b) a,( |
    \stemUp b4) a,( b) e( |
    \tuplet 3/2 { ds8 cs b) } \stemNeutral a''4( b) a,( |
    \stemUp b4) a,( b) \offsetPositions #'(1 . 0) e( |
    
    \barNumberCheck 25
    \tuplet 3/2 { ds8 b fs' } <c a'>4 <b g'> <a fs'>~ |
    <a e'>4) \voiceOne \offsetPositions #'(1 . 1) c'(
      \tuplet 3/2 { b8 a g  fs e ds } |
    \oneVoice e4) b'-- \voiceOne b'2( |
    \tuplet 3/2 { a8 g fs } e2 ds4 |
    e4) \tuplet 3/2 { \offsetPositions #'(0 . -0.5) fs8( g a } g4)
      \tuplet 3/2 { \offsetPositions #'(0 . -0.5) fs8( g a } |
    g4) \tuplet 3/2 { \offsetPositions #'(0 . -0.5) fs8( g a } g4)
      \tuplet 3/2 { fs8-\slurShapeE ( g a } |
    \tuplet 3/2 { g8 fs g  a g fs } e4 ds |
    e4) \tuplet 3/2 { \offsetPositions #'(0 . -0.5) a8( b c } b4)
      \tuplet 3/2 { \offsetPositions #'(0 . -0.5) a8( b c } |
    
    \barNumberCheck 33
    b4) \tuplet 3/2 { \offsetPositions #'(0 . -0.5) a8( b c } b4)
      \tuplet 3/2 { \offsetPositions #'(0 . -1.5) a8( b c } |
    \tuplet 3/2 { b8 a b  c b a } g4 fs |
    \oneVoice e4) e-- \voiceOne b'2( |
    \tuplet 3/2 { a8 g fs } e2 ds4 |
    \override Parentheses.font-size = -3
    \oneVoice <\parenthesize g, e'>4) e-- \voiceOne
      \offsetPositions #'(2.5 . 2.5) b'2( |
    \tuplet 3/2 { a8 g fs } e2 ds4 |
    \alternative {
      { \oneVoice <\parenthesize g, e'>4) r r2 | }
      { 
        \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
        \repeat volta 2 {
          <\parenthesize g e'\repeatTie>4 b'-- b2-\slurShapeG (~ | 
          
          \barNumberCheck 41
          b4 e8. a,16 \tag layout { gs4.\prallprall } \tag midi { gs\prall }
            a8 |
          b4) \offsetPositions #'(0 . -1.5) c8( a b2~ |
          b4 e8. a,16 \tag layout { gs4.\prallprall } \tag midi { gs\prall }
            a8 |
          b4) e,8. e'16 e2->(~\mf |
          e4 a8. d,16  \tag layout { cs4.\prallprall } \tag midi { cs\prall }
            d8 |
          e4) f8(\mf d e2~ |
          e4 a8. d,16  \tag layout { cs4.\prallprall } \tag midi { cs\prall }
            d8 |
          e4 a) \tag layout { a2-\slurShapeH (~\prallprall ^\trillFlat }
            \tag midi { a2(~\prall } |
          
          \barNumberCheck 49
          a4 g \tuplet 3/2 { f8 e d  c b! c } |
          b4) \voiceOne \tuplet 3/2 { f'8( g a } g4) \tuplet 3/2 { f8( e f } |
          \tuplet 3/2 { e8 f g)  g( f g  a g f  e d c } |
          \oneVoice b4) b'( c) b,( |
          c4) b,( c) c( |
          \tuplet 3/2 { b8 a g) } b''4( c) b,( |
          c4) b,( c) c( |
          \tuplet 3/2 { b8 a g) } \grace { d''16[( e] } f!4)( e
            \tuplet 3/2 { d8 c b } |
          
          \barNumberCheck 57
          \tuplet 3/2 { c8 b c  a' f a,) } \tag layout { b4.(\prallprall }
            \tag midi { b(\prall } c8) |
          c4 g'( \tuplet 3/2 { fs8 ef d  c bf a } |
          \tuplet 3/2 { bf8 a g) } g'4( d cs |
          d4) a'( \tuplet 3/2 { gs8 f! e  d c b! }
          \tuplet 3/2 { c8 b a) } a'4( e ds |
          e4) \tuplet 3/2 { \offsetPositions #'(-1 . 2.5) e8( f! g  f e d
            c b a } |
          gs4) \tuplet 3/2 { e'8( f g!  f e d  c b a } |
          gs4) b'( c) b,( |
          
          \barNumberCheck 65
          c) b,( c) \grace { d16( } d8.)(\trill c32 d |
          e4) b''( c) b,( |
          c) b,( c) \grace { d16( } d8.)(\trill c32 d |
          e4) r \acciaccatura { g'!8 } f2( |
          \tuplet 3/2 { e8 d c  b a gs) } \acciaccatura { g'!8 } f2( |
          \tuplet 3/2 { e8 d c  b a gs) } \acciaccatura { a'8 } gs2( |
          \tuplet 3/2 { a8 e d  c b a  e' d c  b a gs } |
          a4) \voiceOne r a'2 |
          
          \barNumberCheck 73
          a2 a |
          a4 f( e d |
          c4) \tuplet 3/2 { gs'8( a b } a4) \tuplet 3/2 { gs8( a b } |
          a4) \tuplet 3/2 { b8( c d } c4) \tuplet 3/2 { b8( c d } |
          \tuplet 3/2 { c8 b c  d c b } a4 gs |
          \oneVoice <\parenthesize c, a'>4) a-- e'2 |
          \acciaccatura { e8 } \tuplet 3/2 { d( c b } a2 gs4 |
          a8) \offsetPositions #'(0 . -0.5) a,( f' d \appoggiatura { ds8 }
            e2) |
          
          \barNumberCheck 81
          \tuplet 3/2 { d8( c b } a2 gs4 |
          \alternative {
            { a8) a'( f d  ds4 e) | }
            { a,1-\tieShapeA \repeatTie | \bar "|." }
          }
        }
      }
    }
  }
}

rightHandLower = \relative {
  \repeat volta 2 {
    s1 * 8 |
    
    \barNumberCheck 9
    s1 * 7 |
    s2 \voiceFour r4 e'( |
    
    \barNumberCheck 17
    d2.) cs4 |
    s2 r4 e4~ |
    e2. ds4 |
    s2. a'4 |
    s1 * 4 |
    
    \barNumberCheck 25
    s1 |
    s4 e2( ds4 |
    \hideNoteHead e4) s r b'-\slurShapeC ( |
    c4) a( b2 |
    \override Parentheses.font-size = -3
    \parenthesize g4) \offsetPositions #'(-2.5 . -2.5) ds'( e)
      \offsetPositions #'(-2.5 . -2.5) ds( |
    e4) \offsetPositions #'(-2.5 . -2.5) ds( e)
      \offsetPositions #'(-2.5 . -2.5) ds( |
    e4) c-\slurShapeF ( b a |
    g4) \offsetPositions #'(-2.5 . -2.5) ds'( e)
      \offsetPositions #'(-2.5 . -2.5) ds( |
    
    \barNumberCheck 33
    e4) \offsetPositions #'(-2.5 . -2.5) ds( e)
      \offsetPositions #'(-2.5 . -2.5) ds( |
    e4) e2( ds4 |
    \hideNoteHead e4) s r b( |
    c4) a( b2 |
    \hideNoteHead g4) s r b,( |
    c4) a( b2 |
    \alternative {
      { \hideNoteHead g4) s2. | }
      { 
        \repeat volta 2 {
          s1 |
          
          \barNumberCheck 41
          s1 * 8 |
          
          \barNumberCheck 49
          s1 |
          s4 \offsetPositions #'(-2.5 . -2.5) b'( c)
            \offsetPositions #'(-2.5 . -2.5) b( |
          c4) c c c |
          s1 * 5 |
          
          \barNumberCheck 57
          s1 * 8 |
          
          \barNumberCheck 65
          s1 * 7 |
          s4 \tupletOff \tuplet 3/2 { b8( c d } c4) \tuplet 3/2 { b8( c d } |
          
          \barNumberCheck 73
          c4) \tuplet 3/2 { b8( c d } c4) \tuplet 3/2 { b8( c d } |
          \tuplet 3/2 { c8 b c  d c b  c b a  b a gs } |
          a4) e' e e |
          e4 e e e |
          e4 f e d |
          s1 * 3 |
          
          \barNumberCheck 81
          s1 |
          \alternative {
            { s1 | }
            { s1 | }
          }
        }
      }
    }
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
    s1 |
    s4 \clef treble \voiceThree c''( b2) |
    s4 c( b2) |
    s4 d2.~ |
    d4 e2->~ e8 d~ |
    d4 e2->~ e8 d~ |
    d4 s2. |
    s1 |
    
    \barNumberCheck 9
    s1 * 16 |
    
    \barNumberCheck 25
    s1 * 3 |
    s2 \clef bass g,4( fs |
    \hideNoteHead e4) \clef treble \tupletOff \tuplet 3/2 { a8( b c } b4)
      \tuplet 3/2 { a8( b c } |
    b4) \tuplet 3/2 { a8( b c } b4) \tuplet 3/2 { a8( b c } |
    b4) \oneVoice <a, a'>^( <b g'> <b fs'> |
    e4) \voiceThree \tuplet 3/2 { fs8( g a } g4) \tuplet 3/2 { fs8( g a } |
    
    \barNumberCheck 33
    g4) \tuplet 3/2 { fs8( g a } g4) \tuplet 3/2 { fs8( g a } |
    g4) a( e fs) |
    s1 |
    s2 \clef bass g4( fs) |
    s1 * 2 |
    \alternative {
      { s1 | }
      { 
        \repeat volta 2 {
          s1 | 
          
          \barNumberCheck 41
          s1 * 24 |
          
          \barNumberCheck 65
          s1 * 7 |
          s4 \tuplet 3/2 { d8( e f } e4) \tuplet 3/2 { d8( e f } |
          
          \barNumberCheck 73
          e4) \tuplet 3/2 { d8( e f } e4) \tuplet 3/2 { d8( e f } |
          \oneVoice <a, e'>4) s2. |
          s4 \clef treble \voiceThree \tuplet 3/2 { b'8( c d } c4)
            \tuplet 3/2 { b8( c d } |
          c4) \tuplet 3/2 { gs8( a b } a4) \tuplet 3/2 { gs8( a b } |
          a4) s2. |
          s1 * 3 |
          
          \barNumberCheck 81
          s1 |
          \alternative {
            { s1 | }
            { s1 | }
          }
        }
      }
    }
  }
}

leftHandLower = \relative {
  \repeat volta 2 {
    a,4 r r2 |
    r4 \clef treble \voiceTwo a''4( gs e) |
    \oneVoice r4 \voiceTwo a4( gs e) |
    \oneVoice r4 \voiceTwo <f a> q q |
    <e b'>4 <f a> q q |
    <e b'>4 <f a> q q |
    <e b'>4 \clef bass \oneVoice e,( gs b |
    e4) f2->( e8 d |
    
    \barNumberCheck 9
    gs4) f2->( e8 d |
    gs4) e2( gs4 |
    a4 f d e |
    a,4) \clef treble gs''( a) gs,( |
    a4) \clef bass gs,( a) f( |
    e4) \clef treble gs''( a) gs,( |
    a4) \clef bass gs,( a) f( |
    e2.) c4( |
    
    \barNumberCheck 17
    g4 g' a a, |
    d2.) e4( |
    a,4 a' b b, |
    e4) e'( a, c |
    <b fs'>4) \clef treble fs''( g) fs,( |
    g4) \clef bass fs,( g) c,( |
    b4) \clef treble fs'''( g) fs,( |
    g4) \clef bass fs,( g) c,( |
    
    \barNumberCheck 25
    b2.) b4( |
    c4) \offsetPositions #'(1 . 0) a( b b' |
    e,2.) <g e'>4-\slurShapeD _( |
    <a fs'>4 <c e> \voiceTwo b2 |
    \oneVoice <e, e'>4) \clef treble \voiceTwo e' e e|
    e4 e e e |
    e4 s2 \hideNoteHead b4(
    \hideNoteHead e4) b b b |
    
    \barNumberCheck 33
    b4 b b \offsetPositions #'(-2 . -2) b( |
    e4) e \offsetPositions #'(-2 . -2) e( b) |
    \clef bass \oneVoice <e, e'>2. <g e'>4_( |
    <a fs'>4 <c e> \voiceTwo b2 |
    \oneVoice e,2.) <g, e'>4( |
    <a e'>4 <c e> <b g'> <b fs'> |
    \alternative {
      { <e, e'>4.) f'!8(  \stemDown e8.[ d16 c8. b16]) | }
      { 
        \repeat volta 2 {
          \stemNeutral <e, e'>4 r r <d'' f>( |
          
          \barNumberCheck 41
          <c e>4)q( <b d>) \offsetPositions #'(-2.5 . -2.5) <a c e>_( |
          <e b' e>4) r r <d' f>( |
          <c e>4) q( <b d>) <a c>( |
          <e b'>4) r r \clef treble <g' bf>(^\p |
          <f a>4) q( <e g>) <d f a>( |
          <a e' a>4) r r <g' bf>(^\p |
          <f a>4) q( <e g>) <d f a>( |
          <a e' a>4) r a'(^\mf g |
          
          \barNumberCheck 49
          <f a>4 <e g> <d a'> <f a> |
          g4) f( e) d( |
          c4) e( f fs |
          g4) d'( e) d,( |
          e4) \clef bass d,( e) fs( |
          g,) \clef treble d'''( e) d,( |
          e4) \clef bass d,( e) \offsetPositions #'(0 . 2.5) fs( |
          g,4) r r g''( |
          
          \barNumberCheck 57
          a4 f <g, c e> <g b d>) |
          c,4 \clef treble \offsetPositions #'(0 . -1) <c' c'>4( <d c'> fs |
          \clef bass g,4) <bf d g>( <a d f!>) <a e'>( |
          <d, d'>4) <f! d'>( <e d'> <gs d' e> |
          <a e'>4) <a e' a>( <b e g!>) <b fs'>( |
          e,4) <c' e>( <d, d'> <f! d'> |
          <e e'>4) <c' e>( <d f>) f( |
          e4) \clef treble gs'( a) gs,( |
          
          \barNumberCheck 65
          a4) \clef bass gs,( a) f( |
          e4) \clef treble gs''( a) gs,( |
          a4) \clef bass gs,( a) f( |
          e4) \offsetPositions #'(0 . -1) e'2( d4 |
          e,4) e'2( d4 |
          e,4) e'2( d4 |
          c4 d e e, |
          a,4) \voiceTwo r a'2 |
          
          \barNumberCheck 73
          a2 a |
          s4 \oneVoice <d, d'>( <e c'> <e b'> |
          a,4) \clef treble \voiceTwo e'' e e |
          e4 e e e |
          e4 \oneVoice <d a' b>( <e c'> <e b'> |
          \clef bass a,2) r4 <c e>( |
          <d f>4) f( e e, |
          a,2.) \offsetPositions #'(-1 . 0) <c a'>4_( |
          
          \barNumberCheck 81
          d4 f e e, |
          \alternative {
            { a4) a'2( <g b>8 <fs a>) | }
            { a,1-\tieShapeB \repeatTie | }
          }
        }
      }
    }
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
  \override Hairpin.after-line-breaking = ##f
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s1\p |
    s1 |
    s2. \tuplet 3/2 { s4\< s8\! } |
    s1\mf |
    s1 * 4 |
    
    \barNumberCheck 9
    s1 * 3 |
    s4 s2.\pp |
    s2. s4\mf\> |
    s4\! s2.\pp |
    s2. s4\mf\> |
    s4\! s2\< s4\mf |
    
    \barNumberCheck 17
    s1 |
    s4 s\< \tag layout { s2\! } \tag midi { s2\f } |
    s1 |
    s4\< \tag layout { s2.\! } \tag midi { s2.\ff } |
    s4 s2.\pp |
    s2. s4-\tweak Y-offset -2 \mf |
    s4\> s2.\pp |
    s2. s4\mf |
    
    \barNumberCheck 25
    s1 * 4 |
    s4 s2.\p |
    s1 |
    s4\< \tag layout { s2\! } \tag midi { s2\mf } s4\> |
    s8 s\! s2.\p |
    
    \barNumberCheck 33
    s1 |
    s4\< \tag layout { s2\! } \tag midi { s2\f } s4\> |
    s4\! s2.\mf |
    s1 |
    s4 s2.\p |
    s1 |
    \alternative {
      { s1 | }
      { 
        \repeat volta 2 {
          s4 s2.\p | 
          
          \barNumberCheck 41
          s1 |
          s4 s2\mf s4-\tweak Y-offset 2 \p |
          s1 |
          s4 s\< s2\! |
          s1 * 4 |
          
          \barNumberCheck 49
          s1 * 2 |
          s4 s-\tweak Y-offset 1 \< \tag layout { s\! } \tag midi { s\mf }
            \tuplet 3/2 { s4-\tweak Y-offset 1 \> s8\! } |
          s4 s2.-\tweak Y-offset 1 \pp |
          s2. s4-\tweak Y-offset -1 \mf |
          \tuplet 3/2 { s4-\tweak Y-offset -1 \> s8\! } s2.-\tweak Y-offset 1
            \pp |
          s2. s4\mf |
          \tuplet 3/2 { s4\> s8\! } s2.-\tweak Y-offset 1 \mf |
          
          \barNumberCheck 57
          s1 * 7 |
          s4 s2.-\tweak extra-offset #'(0 . -1) \pp |
          
          \barNumberCheck 65
          s2. s4\mf\> |
          s4\! s2.-\tweak Y-offset 0.5 \pp |
          s2. s4\mf\> |
          s4\! s2.-\tweak Y-offset 1 \mf |
          s1 * 3 |
          s4 s2.\p |
          
          \barNumberCheck 73
          s1 |
          \tuplet 3/2 { s8 s4-\tweak Y-offset -1 \< } \tag layout { s2\! }
            \tag midi { s2\mf } \tuplet 3/2 { s8 s4-\tweak Y-offset -1 \> } |
          s4\! s2.\p |
          s1 |
          s4\< \tag layout { s\! } \tag midi { s\mf } s\> s\! |
          s4 s2.\p |
          s1 |
          s1\mf |
          
          \barNumberCheck 81
          s1 |
          \alternative {
            { s8 s2..\p | }
            { s1 | }
          }
        }
      }
    }
  }
}

tempi = {
  \repeat volta 2 {
    \tempo "Agadio" 4 = 100
    s1 * 32 |
    
    \barNumberCheck 33
    s1 * 6 |
    \alternative {
      { s1 | }
      { 
        \repeat volta 2 {
          s1 | 
          
          \barNumberCheck 41
          s1 * 40 |
          
          \barNumberCheck 81
          \tag layout { 
            s1 |
            \alternative {
              { s1 | }
              { s1 | }
            }
          }
          \tag midi {
            \alternative {
              { s1 * 2 | }
              { 
                s4 \tempo 4 = 88 s \tempo 4 = 76 s \tempo 4 = 66 s |
                \tempo 4 = 60 s1 |
              }
            }
          }
        }
      }
    }
  }
}

forceBreaks = {
  % page 1
  s1 * 4 \break
  s1 * 5 \break
  s1 * 5 \break
  s1 * 4 \break
  s1 * 4 \break
  s1 * 5 \pageBreak
  
  % page 2
  s1 * 4 \break
  s1 * 4 \break
  s1 * 4 \break
  s1 * 5 \break
  s1 * 5 \break
  s1 * 5 \pageBreak
  
  % page 3
  s1 * 5 \break
  s1 * 5 \break
  s1 * 5 \break
  s1 * 4 \break
  s1 * 4 \break
  
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
