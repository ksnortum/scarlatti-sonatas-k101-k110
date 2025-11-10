%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\include "globals.ily"
\include "initial-clef-engraver.ily"

\header { 
  title = "Sonata in F major"
  opus = "K.106"
  source = "https://s9.imslp.org/files/imglnks/usimg/8/80/IMSLP626888-PMLP335339-Sonata_K._106_(as_L._437).pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'((0 . 0) (0 . 0) (0 . 1) (0 . -1)) \etc
slurShapeB = \shape #'((0 . 0) (0 . 0) (0 . -0.5) (0 . 1.5)) \etc
slurShapeC = \shape #'((0 . -0.5) (0 . 0.5) (0 . 0.5) (0 . 0)) \etc
slurShapeD = \shape #'((0 . 0) (0 . 2) (0 . 3) (0 . -1)) \etc
slurShapeE = \shape #'((0 . 0) (0 . 0) (0 . 1) (0 . -1)) \etc
slurShapeF = \shape #'((0 . 0) (0 . 0) (0 . 1) (0 . -1)) \etc
slurShapeG = \shape #'((0 . 0) (0 . 0) (0 . 1) (0 . -1)) \etc
slurShapeH = \shape #'((0 . 0) (0 . 1) (0 . 0) (0 . 0)) \etc
slurShapeI = \shape #'(
                        ((0 . 0) (0 . 1) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeJ = \shape #'((0 . 0) (0 . 1) (0 . 0) (0 . 0)) \etc
slurShapeK = \shape #'((0 . 0) (0 . 1) (0 . 1) (0 . 0)) \etc
slurShapeL = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.4 . -2.5) (0.4 . -2.5) (0 . -2.5) (0 . -2.5))
                      ) \etc
slurShapeM = \shape #'((0 . 0) (0 . 1) (0 . 1) (0 . 0)) \etc
slurShapeN = \shape #'((0 . 0) (0 . -1) (0 . 0) (0 . 0)) \etc
slurShapeO = \shape #'((0 . 0) (0 . 0.5) (0 . 0.5) (0 . -1)) \etc

%
% Music
%

global = {
  \time 4/4
  \key f \major
}

rightHand = \relative {
  \global
  \repeat volta 2 {
    \tuplet 3/2 4 { r8 c'''( bf  a g f } g4.-\insideSlur \trill f16 g |
    \tupletOff \tuplet 3/2 { a8) c-\slurShapeA ( bf  a g f } g4.-\insideSlur
      \trill f16 e |
    \tuplet 3/2 { f8) c-\slurShapeB ( bf  a g f } g4.-\insideSlur \trill f16
      g |
    \stemUp \tuplet 3/2 { a8) c-\slurShapeC ^( bf  a g f } g4.-\insideSlur
      \trill f16 g) |
    r8 \stemNeutral a16( bf  c d e f  gs4-.) <a, a'>-. |
    r8 g!16( a  b c d e  fs4-.) <g, g'>-. |
    r8 f!16( g  a b c d  e4-.) <f, b f'>4-. |
    \tuplet 3/2 { e'8( g f  e d c } d4.-\insideSlur \trill c16 d |
    
    \barNumberCheck 9
    \tuplet 3/2 { 
      e8 d c  g' f e  a g f  e d c |
      b8 a g)  g'( f e  a g f  e d c |
    }
    b4-.) g'-.( a,-. g'-. |
    g,4-. g'-. f,-. g'-.) |
    \tuplet 3/2 { e,8( f g  a b c  d e f  e d c } |
    b4-.) g'-.( a,-. g'-. |
    g,4-. g'-. f,-. g'-.) |
    \tuplet 3/2 { e,8( d e \acciaccatura { g } f e d } c8)
      \appoggiatura { e16 } d4.(\trill |
    
    \barNumberCheck 17
    \tuplet 3/2 { c8) g( c  e c e  g e g  c g c) } |
    \tuplet 3/2 { c'8( g e  c) c c } \grace { c16( } c2)\trill |
    \tuplet 3/2 { \offsetPositions #'(-0.5 . -0.5) c8( a' g  f e d  g f e
      d c b) } |
    \tuplet 3/2 { c8( g e  c) c c } \grace { c16( } c2)\trill |
    \tuplet 3/2 { c8( a' g  f e d  g f e  d c b } |
    c1)\fermata |
  }
  \repeat volta 2 {
    \tupletOn \tuplet 3/2 { r8 c'( df } \tupletOff \tuplet 3/2 { ef8 f g
      af g f } ef4~ |
    ef4.) af8-.  df,4.(-\trillBelow \trill ^\trillFlat c16 df |
    
    \barNumberCheck 25
    c8-.) af'-\slurShapeD \(~  af16 g f ef \grace { df16( } \afterGrace 7/8
      df2)-\trillBelow \trill -\noPriority ^\trillFlat { c16[ df] } |
    \tuplet 3/2 { c8\) df( ef  f g af  bf af gf } f4~ |
    f4.) bf8-.  ef,4.(\trill df16 ef |
    df8-.) bf'-\slurShapeE \(~  bf16 af gf f \grace { ef16( } \afterGrace 7/8
      ef2)\trill { df16[ ef] } |
    \tuplet 3/2 { df8\) ef( f  g a!  b  c bf af } g4~ |
    g4.) c8-.  f,4.(\trill ef16 f |
    \tuplet 3/2 { e!8) g-\slurShapeF \( f  e d c } \grace { bf!16( }
      \afterGrace 7/8 bf2)\trill { a16[ bf] } |
    \tuplet 3/2 { a8\) c'-\slurShapeG \( bf  a g f } \grace { ef16( }
      \afterGrace 7/8 ef2)\trill { d16[ ef] } |
    
    \barNumberCheck 33
    d8.\) cs'16-\slurShapeH ( d4~  d16 c bf a  g f e d |
    c8.) b'16-\slurShapeI ( c4~  c16 bf a g  f e d c |
    bf8.) a'16-\slurShapeJ ( bf4~  bf16 a g f  e d c bf |
    a4-.) c'-.( g,-. c'-. |
    f,,4-. c''-.)  e,,4~-\slurShapeK \( e16 f g a |
    \grace { bf16( } bf4.)\trill a16 g  a4\) c'-.( |
    g,4-. c'-. f,,-. c''-.) |
    e,,4~-\slurShapeM \( e16 f g a \grace { bf16( } bf4.)\trill a16 g |
    
    \barNumberCheck 41
    \tuplet 3/2 { a8 bf c  d bf g } f8\) \appoggiatura { a16 } g4.(\trill |
    f8.) f'16( ef2) \tupletOn \tuplet 3/2 { c8(\prall b c } |
    b8.) bf'!16( af2) \tupletOff \tuplet 3/2 { f8(\prall e f } |
    e8.) d'16( bf!2) \tuplet 3/2 { g8(\prall f g } |
    \tuplet 3/2 { a8 g a  bf a g } f8) \appoggiatura { a16} \afterGrace 7/8
      g4.-\slurShapeN (\trill { f16[ g] } |
    \tuplet 3/2 { a8) c-\slurShapeO \( bf  a g f } \grace { g16( } g4.)\trill
      f16 e |
    \tuplet 3/2 { f8 c a  f\) f-. f-. } \grace { f16( } f2)\trill |
    \tuplet 3/2 { f8( d' c  bf a g  \stemUp c bf a  g f e) } |
    
    \barNumberCheck 49
    \tuplet 3/2 { f8( c a  f) f-. f-. } \grace { f16( } f2)\trill |
    \tuplet 3/2 { f8( d' c  bf a g  c bf a  bf a g } |
    f1)\fermata |
  }
}

leftHand = \relative {
  \global
  \clef treble % initial bass clef, see initial-clef-engraver.ily
  \repeat volta 2 {
    \offsetPositions #'(2.5 . 0) f'4( f') r e( |
    f4) \offsetPositions #'(2.5 . 0) a,( bf c) |
    \clef bass f,,4( f') r e( |
    f4) a,( bf c |
    f,4-.) f'2 f4-. |
    e,4-. e'2 e4-. |
    d,4-. d'2 d4-. |
    \clef treble <c c'>4-. <e g>( <f a> <g b> |
    
    \barNumberCheck 9
    <c, c'>4-.) <e c'>( <f c'> <fs c'> |
    g4-.) <e g>( <f! a> <fs a> |
    g4-.) \clef bass g,,-._( f''!-. g,,-. |
    e''4-. g,,-. d''-. g,,-.) |
    \clef treble \tupletOff \tuplet 3/2 { c'8_( d e  f g a  b c d  c b a } |
    g4-.) \clef bass g,,-._( f''!-. g,,-. |
    e''4-. g,,-. d''-. g,,-.) |
    c'4( f, g) g,( |
    
    \barNumberCheck 17
    c,4) r c r |
    c4 r r <e' c'>( |
    <f c'>4) <f f'>( <g e'> <g d'>) |
    c,4( c,) r e'( |
    f4-.) f,-. g'-. g,-. |
    c,1\fermata |
  }
  \repeat volta 2 {
    \clef treble af'''4 r r <af c>( |
    <g bf>4 <af c> bf ef, |
    
    \barNumberCheck 25
    af4) <af c>( bf ef, |
    af4) r r <bf df>( |
    <a! c>4 <bf df> c f, |
    bf4) \offsetPositions #'(0 . -0.5) <bf df>( c f, |
    bf4) r r <c ef>( |
    <b d>4 <c ef> d g, |
    c4) <c, e!>( <d f> <e g> |
    f4) <f a>( <g bf> <a c> |
    
    \barNumberCheck 33
    bf4) <bf d>-.( q-. q-.) |
    a4-.( <a c>-. q-. q-.) |
    g4-.( <g bf>-. q-. q-.) |
    f4-. \clef bass c,,-._( e''-. c,,-. |
    d''4-. c,,-. c'') c( |
    d4 e f) c,,-.-\slurShapeL _( |
    e''4-. c,,-. d''-. c,,-. |
    c''4) c( d e |
    
    \barNumberCheck 41
    f4) bf,( c c, |
    f2) <af c f>( |
    <g d' f>2) \clef treble <b f' g>( |
    <c g'>2) <c bf'! c>( |
    <f c'>4) <bf d>( c) c,-. |
    <f f'>4-. \clef bass <a, f'>( <bf g'> <c g'> |
    f,4) r r <a c>( |
    <bf d>4) q( c-.) c, |
    
    \barNumberCheck 49
    \offsetPositions #'(0 . 2.5) f4( f,-.) r a( |
    bf4) bf( c c, |
    f1)\fermata |
  }
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s1\mf |
    s1 |
    \tuplet 3/2 { s8 s4-\tweak Y-offset 1 \p } s2. |
    s1 |
    s8 s4.-\tweak Y-offset 1 \< s4\! s-\tweak Y-offset 0.5 \p |
    s8 s4.\< s4\! s\p |
    s8 s4.\< s4\! s\p |
    s1\cresc |
    
    \barNumberCheck 9
    s1 |
    s4 s2.\mf |
    s4 s2.\p |
    s1 |
    s2\< s\> |
    s1\! |
    s1 |
    s1\mf |
    
    \barNumberCheck 17
    s1 * 6 |
  }
  \repeat volta 2 {
    s4\p\< s s\> s\! |
    s2 s4..-\tweak Y-offset 1 \mf-\tweak Y-offset 1 \> s16\! |
    
    \barNumberCheck 25
    s8\p s2..\mf |
    \tuplet 3/2 { s8 s4\p\< } s s\> s\! |
    s2 s4..\mf\> s16\! |
    s8\p s2..\mf |
    \tuplet 3/2 { s8 s4\p\< } s s\> s\! |
    s4. s8-\tweak Y-offset 0.5 \mf s2 |
    s1 * 2 |
    
    \barNumberCheck 33
    s8. s16\f s4 s2\p |
    s8. s16\f s4 s2\p |
    s8. s16\f s4 s\p s8.\< s16\! |
    s4\mf s2.\p |
    s2 s4..-\tweak Y-offset 1.5 \< s16\! |
    s2.-\tweak Y-offset 1 \mf s4\p |
    s1 |
    s2\< s\mf |
    
    \barNumberCheck 41
    s1 |
    s8. s16-\tweak Y-offset -2 \f s2. |
    s1 * 4 |
    s4\> s2.\mf |
    s1 |
    
    \barNumberCheck 49
    s1 * 3 |
  }
}

tempi = {
  \repeat volta 2 {
    \tempo "Allegro" 4 = 152
    s1 * 16 |
    
    \barNumberCheck 17
    s1 * 4 |
    \set Score.tempoHideNote = ##t
    s2 \tempo 4 = 138 s4 \tempo 4 = 126 s |
    s1 |
  }
  \repeat volta 2 {
    \tempo 4 = 152
    s1 * 2 |
    
    \barNumberCheck 25
    s1 * 24 |
    
    \barNumberCheck 49
    s1 |
    \tag layout { s1 * 2 | }
    \tag midi {
      \alternative {
        {
          s2 \tempo 4 = 138 s4 \tempo 4 = 126 s |
          s1 |
        }
        {
          s4 \tempo 4 = 132 s \tempo 4 = 116 s \tempo 4 = 96 s |
          s1 |
        }
      }
    }
  }
}

forceBreaks = {
  % page 1
  s1 * 4 \break
  s1 * 4 \break
  s1 * 4 \break
  s1 * 5 \break
  s1 * 5 \break
  s1 * 4 \pageBreak
  
  % page 2
  s1 * 4 \break
  s1 * 4 \break
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
