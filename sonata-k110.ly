%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\include "globals.ily"

\header { 
  title = "Sonata in A minor"
  opus = "K.110"
  source = "https://ks15.imslp.org/files/imglnks/usimg/1/12/IMSLP626892-PMLP335387-Sonata_K._110_(as_L._469).pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'((0 . 0) (0 . -1) (0 . 0) (0 . 0)) \etc
slurShapeB = \shape #'(
                        ((0 . 0) (0 . 0) (2 . 0) (2 . 0))
                        ((0 . 0) (0 . 0) (0 . 1) (0 . -1))
                      ) \etc
slurShapeC = \shape #'(
                        ((0 . 0) (0 . 0) (2 . 0) (2 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeD = \shape #'(
                        ((0 . 0) (0 . 0) (3 . 0) (3 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeE = \shape #'((0 . -1) (0 . 0) (0 . 0) (0 . 0)) \etc
slurShapeF = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 2) (0 . 2) (0 . 2) (0 . 2))
                      ) \etc
slurShapeG = \shape #'(
                        ((0 . 0) (0 . 0) (3 . 0) (3 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc

%
% Music
%

global = {
  \time 3/8
  \key a \minor
}

rightHand = \relative {
  \global
  \repeat volta 2 {
    a''16( e c a e c |
    a8-.) r e''-. |
    f16( d c b c d) |
    \appoggiatura { d16 } e4 e8-. |
    d16( c b a gs a) |
    \appoggiatura { a16 } b4 e8-. |
    f16( d c b c d) |
    \appoggiatura { d16 } e4 e8-. |
    
    \barNumberCheck 9
    d16( c b a a gs) |
    \appoggiatura { gs8 } a4. |
    gs,16( a b cs d e |
    fs16 gs a b cs d |
    e16 fs gs a b cs |
    cs8-.) b16(\prall a) b8-. |
    gs,,16-\slurShapeB ( a b cs d e |
    fs16 gs a b cs d |
    
    \barNumberCheck 17
    e16 fs gs a b cs |
    cs,8-.) b16(\prall a) b8-. |
    r16 fs'( b,8. a16 |
    gs16) fs'( b,8. a16 |
    gs16) g'!( cs,8. b16 |
    as16) g'( cs,8. b16 |
    as16) c'!( fs,8. e16 |
    ds16) c'( fs,8. e16 |
    
    \barNumberCheck 25
    ds16 c') c( b) b( a) |
    a16( g) \offsetPositions #'(0 . -1) g( fs e d |
    c16 b a g fs e |
    \tag layout { b4.)\prallprall } \tag midi { b)\prall } |
    b'16-.[ r fs'-. r a-.] r |
    gs16-\slurShapeD ( fs e ds e fs |
    b,16-.[) r fs'-. r a-.] r |
    gs16( fs e ds e fs |
    
    \barNumberCheck 33
    b,16-.[) r fs'-. r a-.] r |
    gs16( b a gs fs e |
    fs16 a gs fs e ds |
    e4.) |
    b16-.[ r fs'-. r a-.] r |
    gs16( fs e ds e fs |
    b,16-.[) r fs'-. r a-.] r |
    gs16( fs e ds e fs |
    
    \barNumberCheck 41
    b,16-.[) r fs'-. r a-.] r |
    gs16( b a gs fs e |
    fs16 a gs fs e ds |
    \tag layout { e4.)\prallprall ^\trillSharp } \tag midi { e)\prall } |
    e16( as) as( b) b( b, |
    c16 gs') gs( a) a( a, |
    b16 fs') fs( g!) g( g, |
    a16 e') e( fs) fs( fs, |
    
    \barNumberCheck 49
    g16 e') e( ds e g |
    fs16 a g fs e ds |
    e16 as) as( b) b( b, |
    c16 gs') gs( a) a( a, |
    b16 fs') fs( g!) g( g, |
    a16 e') e( fs) fs( fs, |
    g16 e') e-\slurShapeE ( ds e g |
    fs16 a g fs e ds |
    
    \barNumberCheck 57
    e16 b' e,) e-. e-. e-. |
    fs16( a g fs e fs |
    g e b) b-. b-. b-. |
    c16( a g fs e ds |
    e-.) b''( e,) e-. e-. e-. |
    fs16( a g fs e fs |
    g e b) b-. b-. b-. |
    c16( a g fs e ds |
    
    \barNumberCheck 65
    \tag layout { e4.)\prallprall ^\trillSharp } \tag midi { e)\prall } |
  }
  \repeat volta 2 {
    e16( gs) gs( b) b( d |
    fs16 d cs b cs d) |
    a'16( e) e( cs) cs( a) |
    fs'16( d cs b cs d) |
    a'16( e) e( cs) cs( a) |
    fs'16( d cs b a b) |
    \appoggiatura { b16 } cs4. |
    
    \barNumberCheck 73
    a16( cs) cs( e) e( g |
    bf16 g f! e f gs |
    a16 f) f( d) d( a) |
    bf'16( g f! e f gs |
    a16 f) f( d) d( a) |
    bf'16( g f! e d e) |
    \appoggiatura { e16 } d4. |
    \voiceFour \grace { f16( } <f d'>4.)(\startTrillSpan |
    
    \barNumberCheck 81
    q4.) |
    \grace { e16(\stopTrillSpan } <e c'>4.)(\startTrillSpan |
    q4.) |
    \grace { d16(\stopTrillSpan } <d b'>4.)(\startTrillSpan |
    q4.) |
    \oneVoice <c a'>16(\stopTrillSpan g' f e d c |
    f16 e d c b a |
    gs16 f e d c b |
    
    \barNumberCheck 89
    a16 gs a b c d) |
    \appoggiatura { d16 } e4.\fermata |
    b'16-.[ r d-. r fs-.] r |
    e16( a e cs a e' |
    b16-.)[ r d-. r fs-.] r |
    e16-\slurShapeG ( a e cs a e' |
    b16-.)[ r d-. r fs-.] r |
    e16( a e cs a e' |
    
    \barNumberCheck 97
    b16 d cs b a gs |
    a4.) |
    b16-.[ r d-. r fs-.] r |
    e16( a e cs a e' |
    b16-.)[ r d-. r fs-.] r |
    e16( a e cs a e' |
    b16-.)[ r d-. r fs-.] r |
    e16( a e cs a e' |
    
    \barNumberCheck 105
    b16 d cs b a gs |
    a4.) |
    a16( b') b( c!) c( c, |
    d16 a') a( b) b( b, |
    c16 gs') gs( a) a( g |
    f16 e d c b a |
    gs d') d( e) e( e, |
    f16 cs') cs( d) d( d, |
    
    \barNumberCheck 113
    e16 b') b( c) c( c, |
    d16 a') a( b) b( b, |
    c16 a') a( gs a c |
    \stemUp b16 d c b a gs |
    a16 ds) ds( e) e( e, |
    f16 cs') cs( d) d( d, |
    e16 b') b( c) \offsetPositions #'(-1 . 0) c( c, |
    d16 a') a( b) b( b, |
    
    \barNumberCheck 121
    c16 a') a( gs a c |
    b16 d c b a gs |
    \stemNeutral a a' e) e-. e-. e-. |
    f16( d c b c d |
    e c a) a-. a-. a-. |
    b16( d c b a gs |
    a16 a' e) e-. e-. e-. |
    f16( d c b c d |
    
    \barNumberCheck 129
    e c a) a-. a-. a-. |
    b16( d c b a gs |
    \tag layout { a4.)\prallprall } \tag midi { a)\prall } |
  }
}

leftHand = \relative {
  \global
  \clef bass
  \repeat volta 2 {
    R4. |
    r8 a,-. a'-. |
    d,4 d'8-. |
    \mergeDifferentlyDottedOn
    << 
      { \voiceThree c8-\slurShapeA ( gs' a | } 
      \new Voice { c,4. | } 
    >>
    \oneVoice d4) f8-. |
    e8.( d16 c a |
    d,4) d'8-. |
    << 
      { \voiceThree c8( gs' a | } 
      \new Voice { c,4. | } 
    >>
    
    \barNumberCheck 9
    \oneVoice d8-.) e-. e,-. |
    a,4. |
    e'16( fs gs a b cs |
    \clef treble d e fs gs a b |
    \stemUp cs8-.) b-. a-. |
    e4. |
    \clef bass \stemNeutral e,16-\slurShapeC ( fs gs a b cs |
    \clef treble d e fs gs a b |
    
    \barNumberCheck 17
    \stemUp cs8-.) b-. a-. |
    e4. |
    <ds fs>8 q q( |
    e8) q q( |
    e8) <e g!> q( |
    fs8) q q( |
    fs8) <a c!> q( |
    b8) q q |
    
    \barNumberCheck 25
    \stemNeutral b8 \clef bass b,( ds |
    e8) e,-. g-. |
    a8-. a,-. c-. |
    b4. |
    \clef treble r16 b''-.[ r ds-. r fs-.] |
    \clef bass e,,,4. |
    \clef treble r16 b'''-.[ r ds-. r fs-.] |
    \clef bass e,,,4. |
    
    \barNumberCheck 33
    \clef treble r16 b'''-.[ r ds-. r fs-.] |
    \clef bass e,,,4 gs'8( |
    a8 b) b,-. |
    e4. |
    \clef treble r16 b''-.[ r ds-. r fs-.] |
    \clef bass e,,,4. |
    \clef treble r16 b'''-.[ r ds-. r fs-.] |
    \clef bass e,,,4. |
    
    \barNumberCheck 41
    \clef treble r16 b'''-.[ r ds-. r fs-.] |
    \clef bass e,,,4 gs'8( |
    a8 b) b,-. |
    e,4. |
    e4 \clef treble g''!8( |
    a8) fs-. e-. |
    <ds fs>4 <e g!>8( |
    fs8-.) ds-. b-. |
    
    \barNumberCheck 49
    e8( fs g |
    a8 b) b,-. |
    \clef bass e,4 <g, g'>8( |
    <a a'>8) <fs fs'>-. <d! d'!>-. |
    <g g'>8-. <e e'>-. <cs cs'>-. |
    <fs fs'>8-. <ds ds'>-. <b b'>-. |
    <e e'>8-. <fs fs'>( <g g'> |
    <a a'>8 <b b'>) <b, b'>-. |
    
    \barNumberCheck 57
    <e e'>4 g''8-. |
    a4 b,8-. |
    e4 g,8( |
    a8 b) b,-. |
    e,4 g''8-. |
    a4 b,8-. |
    e4 g,8( |
    a8 b) b,-. |
    
    \barNumberCheck 65
    e,4. |
  }
  \repeat volta 2 {
    R4. |
    <e' b' d>8-. q-. q-. |
    <e a cs>8-. q-. q-. |
    <e b' d>8-. q-. q-. |
    <e a cs>8-. q-. q-. |
    <e b' d>8-. q-. q-. |
    a,4. |
    
    \barNumberCheck 73
    R4. |
    \clef treble <a' e' g>8-. q-. q-. |
    <a d f>8-. q-. q-. |
    <a e' g>8-. q-. q-. |
    <a d f>8-. q-. q-. |
    <a e' g>8-. q-. q-. |
    \clef bass d,4. |
    d8-. d'( f) |
    
    \barNumberCheck 81
    g,, d''( f) |
    c,8-. c'( e) |
    f,,8-. c''( e) |
    b,8-. b'( d) |
    e,,8-. b''( d) |
    a,8-\slurShapeF ( b c |
    d8 e f |
    e8-.) e, e'-. |
    
    \barNumberCheck 89
    f4.( |
    e4.)\fermata |
    \clef treble r16 gs'-.[ r b-. r d-.] |
    \clef bass a,,,4. |
    \clef treble r16 gs'''-.[ r b-. r d-.] |
    \clef bass a,,,4. |
    \clef treble r16 gs'''-.[ r b-. r d-.] |
    \clef bass a,,,4 cs''8( |
    
    \barNumberCheck 97
    d8 e) e,-. |
    a,4. |
    \clef treble r16 gs''-.[ r b-. r d-.] |
    \clef bass a,,,4. |
    \clef treble r16 gs'''-.[ r b-. r d-.] |
    \clef bass a,,,4. |
    \clef treble r16 gs'''-.[ r b-. r d-.] |
    \clef bass a,,,4 cs''8( |
    
    \barNumberCheck 105
    d8 e) e,-. |
    a,4. |
    a4 \clef treble a''8( |
    b8) gs-. e-. |
    a,8( b c |
    d8-.) e-. f-. |
    e4 \clef bass c8( |
    d8-.) b-. g!-. |
    
    \barNumberCheck 113
    c8-. a-. fs-. |
    b8-. gs-. e-. |
    a8( b c |
    d8 e) e,-. |
    a,4 <c c'>8( |
    <d d'>8-.) <b b'>-. <g! g'!>-. |
    <c c'>8-. <a a'>-. <fs fs'>-. |
    <b b'>8-. <gs gs'>-. <e e'>-. |
    
    \barNumberCheck 121
    <a a'>8-. <b b'>-. <c c'>-. |
    <d d'>8( <e e'>) <e, e'>-. |
    <a a'>4 c'8-. |
    d4 g,!8-. |
    c4 f8-. |
    d8( e) e,-. |
    a8-. a,-. c-. |
    d4 g!8-. |
    
    \barNumberCheck 129
    c,8( f e |
    d8 e) e,-. |
    a4. |
  }
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s4.\f |
    s4. * 7 |
    
    \barNumberCheck 9
    s4. * 2 |
    s4.\p\cresc |
    s4. * 2 |
    s4.\f |
    s4.\p |
    s4. |
    
    \barNumberCheck 17
    s4-\tweak Y-offset 1.5 \< s16 s\! |
    s8\f s4\p |
    s4.\p |
    s4.\cresc |
    s4. * 2 |
    s16 s\f s4 |
    s4. |
    
    \barNumberCheck 25
    s4. * 4 |
    s4.\f |
    s4. * 3 |
    
    \barNumberCheck 33
    s4. * 4 |
    s4.\p |
    s4. * 3 |
    
    \barNumberCheck 41
    s4. |
    s4.\cresc |
    s4. |
    s4.\f |
    s8.\p s\cresc |
    s4. * 3 |
    
    \barNumberCheck 49
    s4. * 2 |
    s4.\f |
    s4. * 5 |
    
    \barNumberCheck 57
    s4. * 4 |
    s16 s\p s4 |
    s4. |
    s8 s4\cresc |
    s4. |
    
    \barNumberCheck 65
    s4.\f |
  }
  \repeat volta 2 {
    s4\p\< s16 s\! |
    s4.\f |
    s4. * 5 |
    
    \barNumberCheck 73
    s4\p\< s16 s\! |
    s4.\f |
    s4. * 5 |
    \tag layout { s4.\f } \tag midi { s\mf } |
    
    \barNumberCheck 81
    s4. * 8 |
    
    \barNumberCheck 89
    s4. * 2 |
    s4.\p\cresc |
    s4. * 4 |
    s4.\f |
    
    \barNumberCheck 97
    s4. * 2 |
    s4.\p |
    s4. * 4 |
    s4.\cresc |
    
    \barNumberCheck 105
    s4. |
    s4.\f |
    s8.\p s\cresc |
    s4. * 3 |
    s4.\mf |
    s4.\cresc |
    
    \barNumberCheck 113
    s4. * 4 |
    s4.\f |
    s4. * 3 |
    
    \barNumberCheck 121
    s4. * 6 |
    s8. s\p |
    s4. |
    
    \barNumberCheck 129
    s8. s\cresc |
    s4. |
    s4.\f |
  }
}

tempi = {
  \repeat volta 2 {
    \tempo "Allegro" 4. = 80
    s4. * 56 |
    
    \barNumberCheck 57
    s4. * 7 |
    \set Score.tempoHideNote = ##t
    s8 \tempo 4. = 72 s \tempo 4. = 66 s |
    
    \barNumberCheck 65
    s4. |
  }
  \repeat volta 2 {
    \tempo 4. = 80
    s4. * 7 |
    
    \barNumberCheck 73
    s4. * 16 |
    
    \barNumberCheck 89
    s4. |
    \tempo 4. = 60 s4. |
    \tempo 4. = 80
    s4. * 6 |
    
    \barNumberCheck 97
    s4. * 32 |
    
    \barNumberCheck 129
    s4. |
    \tag layout { s4. * 2 | }
    \tag midi {
      \alternative {
        {
          s8 \tempo 4. = 72 s \tempo 4. = 66 s |
          s4. |
        }
        {
          \tempo 4. = 76 s8 \tempo 4. = 66 s \tempo 4. = 58 s |
          \tempo 4. = 40 s4. |
        }
      }
    }
  }
}

forceBreaks = {
  % page 1
  s4. * 8 \break
  s4. * 7 \break
  s4. * 7 \break
  s4. * 8 \break
  s4. * 7 \break
  s4. * 7 \pageBreak
  
  % page 2
  s4. * 7 \break
  s4. * 7 \break
  s4. * 7 \break
  s4. * 7 \break
  s4. * 7 \break
  \grace { s16 } s4. * 8 \pageBreak
  
  % page 3
  s4. * 7 \break
  s4. * 7 \break
  s4. * 8 \break
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
