%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\include "globals.ily"
\include "initial-clef-engraver.ily"

\header { 
  title = "Sonata in A major"
  opus = "K.100"
  source = "https://s9.imslp.org/files/imglnks/usimg/7/72/IMSLP626883-PMLP335267-Sonata_K._101_(as_L._494).pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'((-1 . 2.5) (-1 . 2.75) (0 . 2.75) (0 . 2.5)) \etc
slurShapeB = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.25 . 0) (0.25 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeC = \shape #'((0 . 0) (0 . 1) (0 . 2) (0 . -2)) \etc
slurShapeD = \shape #'((0 . 0) (0 . 0) (0 . 1.5) (0 . -1.5)) \etc
slurShapeE = \shape #'((0 . 0) (0 . 0) (0 . -1.5) (0 . 1.5)) \etc
slurShapeF = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.25 . 0) (0.25 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeG = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0.25) (0 . 0.25))
                        ((0 . 0.25) (0 . 0.25) (0 . 0) (0 . 0))
                      ) \etc
slurShapeH = \shape #'((0.25 . 0) (0 . 0) (0 . 0) (-0.25 . 0)) \etc
slurShapeI = \shape #'((0.25 . 0) (0 . 0) (0 . 0) (-0.25 . 0)) \etc
slurShapeJ = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.5 . 0) (0.5 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeK = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.5 . 1.5) (0.5 . 1.5) (0 . 0) (0 . 0))
                      ) \etc
slurShapeL = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.25 . 0) (0.25 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeM = \shape #'((0.25 . 0) (0.25 . 0) (0 . 0) (0 . 0)) \etc
slurShapeN = \shape #'((0 . 0) (0 . 0) (0 . 0) (0 . 0.75)) \etc
slurShapeO = \shape #'((0 . 0) (0 . 0) (0 . 0) (0 . 0.25)) \etc
slurShapeP = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.25 . 0.25) (0.25 . 0.25) (0 . 0) (0 . 0))
                      ) \etc
slurShapeQ = \shape #'((-1 . 2.75) (-1 . 2.75) (0 . 1.25) (0 . 0)) \etc

%
% Music
%

global = {
  \time 3/8
  \key a \major
}

rightHand = \relative {
  \global
  \repeat volta 2 {
    a''16( e32 cs a8-.) b-. |
    a'16( e32 cs a8-.) b-. |
    a'16( e32 cs a8-.) b-. |
    b8( cs4) |
    cs16( d) d( e) e( fs) |
    fs16( gs) gs( a) a( b) |
    b16( e,) e-\slurShapeB ( d cs d |
    d8-.) cs4-> |
    
    \barNumberCheck 9
    cs16( d) d( e) e( fs) |
    fs16( gs) gs( a) a( b) |
    b16( e,) e( d cs d |
    d8-.) cs4-> |
    a'32-\slurShapeC ( e cs a  cs[ a e cs]  a cs e a |
    cs,8-.) \tag layout { b4\prallprall } \tag midi { b4\prall } |
    a''32-\slurShapeC ( e cs a  cs[ a e cs]  a cs e a |
    cs,8-.) \tag layout { b4\prallprall } \tag midi { b4\prall } |
    
    \barNumberCheck 17
    b''16( gs) gs( e) e( ds) |
    ds16( cs) cs( b) b( as) |
    as16( b) b( a gs a |
    a8-.) \tag layout { gs4\prallprall } \tag midi { gs4\prall } |
    b'16( gs) gs( e) e( ds) |
    ds16( cs) cs( b) b( as) |
    as16( b) b( a gs a |
    a8-.) \tag layout { gs4\prallprall } \tag midi { gs4\prall } |
    
    \barNumberCheck 25
    b16( d c gs a c |
    b16 e ds fs g as |
    b16 fs g ds e c |
    \tag layout { b4.)\prallprall ^\trillNatural } \tag midi { b4.)\prall } |
    b16-\slurShapeD ( d c gs a c |
    b16 e ds fs g as |
    b16 fs g ds e c |
    b16 fs g ds e c |
    
    \barNumberCheck 33
    \tag layout { b4.)\prallprall ^\trillNatural } \tag midi { b4.)\prall } |
    b''32( a gs! fs  e[ ds cs! b]  a gs fs e |
    cs'16 e, ds fs e gs |
    fs16 cs' b a gs fs) |
    b'32-\slurShapeF ( a gs fs  e[ ds cs b]  a gs fs e |
    cs'16 e, ds fs e gs |
    fs16 cs' b a gs fs |
    e4) b''8->(~ |
    
    \barNumberCheck 41
    b16 a fs ds b a') |
    \appoggiatura { a16 } gs4 b8->(~ |
    b16 a fs ds b a') |
    \appoggiatura { a16 } gs4 b8->-\slurShapeG (~ |
    b16 a fs ds b a' |
    gs16 b ds, fs e gs |
    fs16 cs' b a gs fs |
    e8-.) g-. b->(~ |
    
    \barNumberCheck 49
    b16 a fs ds b a') |
    \appoggiatura { a16 } g4 b8->-\slurShapeG (~ |
    b16 a fs ds b a') |
    \appoggiatura { a16 } g4 b8->(~ |
    b16 a fs ds b a' |
    g16 e ds fs e g |
    fs16 a g fs e ds) |
    b'32( a gs! fs  e[ ds cs b]  a gs fs e |
    
    \barNumberCheck 57
    cs'8-.) \afterGrace 7/8 fs,4(\trill { e32 fs]) } | 
    b'32( a gs fs  e[ ds cs b]  a gs fs e |
    cs'8-.) \afterGrace 7/8 fs,4(\trill { e32 fs] } |
    e4.) |
  }
  \repeat volta 2 {
    e16( g f a gs c |
    b16 e d c b a |
    e16)-\slurShapeH ( g f a gs c |
    b16 e d c b a |
    
    \barNumberCheck 65
    e16)-\slurShapeJ ( a g bf a d |
    c16 f e g f e |
    \tuplet 3/2 { f16 e d } d8-.)\noBeam r |
    f16( e) e( d) d( c) |
    c16( b) b( c) c( d) |
    e16( d) d( c) c( b) |
    b16( a) a( b) b( c) |
    d16( c) c( b) b( a) |
    
    \barNumberCheck 73
    a16( gs!) gs( a) a( b |
    c16 e) e( c) c( e) |
    e16( c) c( e) e( c) |
    << { c16( a') a( c,) c( a') } \\ { a,8 a a } >> |
    << { a'16( c,) c( a') a( c,) } \\ { a8 a a } >> |
    << { c16( c') c( e,) e( c') } \\ { a,8. c16 c8 } >> |
    << { c'16( e,) e( c') c( e,) } \\ { c8. c16 c8 } >> |
    r16 c'-. c( b) b( a) |
    
    \barNumberCheck 81
    a16( g f e) e( ds |
    e16 d!) d( c) c-\slurShapeL ( b |
    a16 g f e e ds |
    ds8-.) e4 |
    b''32-\slurShapeN ( gs! e b  e[ b gs e]  b' gs b, e |
    d!8-.) \tag layout { cs4\prallprall } \tag midi { cs4\prall } |
    b''32-\slurShapeO ( gs e b  e[ b gs e]  b' gs b, e |
    d8-.) \tag layout { cs4\prallprall } \tag midi { cs4\prall } |
    
    \barNumberCheck 89
    cs16( d) d( e) e( fs) |
    fs16( gs) gs( a) a( b) |
    b16( cs) cs( d) d( e) |
    e16( fs) fs( gs) gs( a) |
    a32( b a gs  fs[ e d cs]  b a gs fs |
    e16[ d']) cs8-. b-.\prall |
    a'32( b a gs  fs[ e d cs]  b a gs fs |
    e16[ d']) cs8-. b-.\prall |
    
    \barNumberCheck 97
    a4 cs'8->(~ |
    cs16 b32 cs d8-.)  b16[( <a cs>32 <gs b>]) |
    \appoggiatura { q16 } <a cs>4 cs8->(~ |
    cs16 b32 cs d8-.)  b16[( <a cs>32 <gs b>]) |
    \appoggiatura { q16 } <a cs>4 cs8->(~ |
    cs16 b32 cs d8-.)  b16[( <a cs>32 <gs b>]
    <a cs>16-.) fs( e ds e cs |
    b16 d! cs b a gs |
    
    \barNumberCheck 105
    a4) c'8(~ |
    c16 b32 c d8-.)  b16[( <a c>32 <gs b>]) |
    \appoggiatura { q16 } <a c>4 c8(~ |
    c16 b32 c d8-.)  b16[( <a c>32 <gs b>]) |
    \appoggiatura { q16 } <a c>4 c8(~ |
    c16 b32 c d8-.)  b16[( <a c>32 <gs b>] |
    <a c>16-.) f-\slurShapeP ( e ds e c |
    b d! c b a gs) |
    
    \barNumberCheck 113
    a'32( b a gs  fs![ e d cs!]  b a gs fs |
    fs'8-.) \afterGrace 7/8 b,4(\trill { a32[ b]) } |
    a'32( b a gs  fs[ e d cs]  b a gs fs |
    fs'8-.) \afterGrace 7/8 b,4(\trill { a32[ b] } |
    a4.) |
  }
}

leftHand = \relative {
  \global
  \clef treble % Initial bass clef, see initial-clef-engraver.ily
  \repeat volta 2 {
    a4 gs'8-. |
    <a, a'>4  gs'8-. |
    <a, a'>4  gs'8-. |
    << { gs8-\slurShapeA ( a4) } \\ { a,4. } >> |
    a'8( b cs |
    d b cs |
    gs4) e8-. |
    a4 a,8-. |
    
    \barNumberCheck 9
    a'8( b cs 
    d8 b cs |
    gs4) e8-. |
    a4 a,8-. |
    \clef bass a4 a,8-. |
    e4 e'8-. |
    a4 a,8-. |
    e4 e'8-. |
    
    \barNumberCheck 17
    e8( gs a |
    b4) cs8-. |
    ds4 b8-. |
    e,4 e'8-. |
    e,8( gs a |
    b4) cs8-. |
    ds4 b8-. |
    e4 e,8-. |
    
    \barNumberCheck 25
    \clef treble b'16( d c gs a c |
    b16 e ds fs g as |
    b16 fs g ds e c |
    b4.) |
    b16-\slurShapeE _( d c gs a c |
    b16 e ds fs g as |
    b16 fs g ds e c |
    \clef bass b16 fs g ds e c |
    
    \barNumberCheck 33
    b4.) |
    gs!4 gs'8( |
    a8 fs) gs-. |
    a8( b) a-. |
    gs,4 gs'8( |
    a8 fs) gs-. |
    a8( b) b,-. |
    e16( gs b e gs b) |
    
    \barNumberCheck 41
    b,,4. |
    e16( gs b e gs b) |
    b,,4. |
    e16( gs b e gs b) |
    b,,4. |
    e8( fs gs |
    a8 b) b,-. |
    e16( g b e g b) |
    
    \barNumberCheck 49
    b,,4. |
    e16( g b e g b) |
    b,,4. |
    e16( g b e g b) |
    b,,4. |
    e8( fs gs |
    a8 b) a8-. |
    gs!4 gs8( |
    
    \barNumberCheck 57
    a8 b) a-. |
    gs4 gs8( |
    a8 b) b,-. |
    e4. |
  }
  \repeat volta 2 {
    e16( g f a gs c |
    b16 e d c b a |
    e16)-\slurShapeI ( g f a gs c |
    b16 e d c b a |
    
    \barNumberCheck 65
    e16)-\slurShapeK ( a g bf a d |
    c16 f e g f e |
    d,4 d'8-.) |
    \clef treble <d f a>8 q q |
    <d e gs!>8 q q |
    <c e a>8 q q |
    <c d f>8 q q |
    <b d>8 q q |
    
    \barNumberCheck 73
    <b d e>8 q q |
    <a c e>8 q q |
    \clef bass <g c e>8 q q |
    <f a e'>8 q q |
    <e a c>8 q q |
    \override Parentheses.font-size = -3
    \startParenthesis <e a \parenthesize c>8 <e a c> \endParenthesis
      <e a \parenthesize c> |
    <c e a>8 q q |
    q8 q q |
    
    \barNumberCheck 81
    <d a' b>8 q q |
    <e b'> q <e c'> |
    \grace { f,32( } f4.)-\slurShapeM (\trill |
    e4.) |
    e8 e e |
    a4. |
    e8 e e |
    a4. |
    
    \barNumberCheck 89
    a'8( fs cs |
    d8 b) cs-. |
    gs8( a fs' |
    cs8 d) e-. |
    fs4( gs8 |
    a8 e-.) d-. |
    cs4 d8-. |
    e4 e,8-. |
    
    \barNumberCheck 97
    \clef treble a'16( cs e a cs e) |
    \clef bass e,,,4. |
    \clef treble a'16( cs e a cs e) |
    \clef bass e,,,4. |
    \clef treble a'16( cs e a cs e) |
    \clef bass e,,,4. |
    a'8( b cs |
    d e) e,-. |
    
    \barNumberCheck 105
    \clef treble a16( c e a c e) |
    \clef bass e,,,4. |
    \clef treble a'16( c e a c e) |
    \clef bass e,,,4. |
    \clef treble a'16( c e a c e) |
    \clef bass e,,,4. |
    a'8( b c |
    d8 e) d-. |
    
    \barNumberCheck 113
    cs!4 cs,8-\slurShapeQ ( |
    d8 e) d-. |
    cs4 cs8( |
    d8 e) e,-. |
    a4. |
  }
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s4.\f |
    s4. * 2 |
    s8\> s4\! |
    s4.\p\cresc |
    s4. |
    s4.\mf
    s4. |
    
    \barNumberCheck 9
    s4.\p |
    s4. * 3 |
    s4.\mf |
    s4. |
    s4.\p |
    s4. |
    
    \barNumberCheck 17
    s4.\mf |
    s4. * 3 |
    s4.\p |
    s4. * 3 |
    
    \barNumberCheck 25
    s4.\p\cresc |
    s4. |
    s4\> s16 s\! |
    s4. |
    s4.\p |
    s4. * 3 |
    
    \barNumberCheck 33
    s4. |
    s4.\mf |
    s4. * 2 |
    s4.\p |
    s4. * 2 |
    s4.\p |
    
    \barNumberCheck 41
    s4.\cresc |
    s4. * 4 |
    s4.\f |
    s4. * 2 |
    
    \barNumberCheck 49
    s4.\p |
    s4.\cresc |
    s4. * 3 |
    s4.\f |
    s4. * 2 |
    
    \barNumberCheck 57
    s4. |
    s4.\p |
    s4. * 2 |
  }
  \repeat volta 2 {
    s4\p\< s16 s\! |
    s4. |
    s4\< s16 s\! |
    s4. |
    
    \barNumberCheck 65
    s4.\cresc |
    s4. |
    s4.-\tweak X-offset -1 \f |
    s4.\p |
    s4.\< |
    s8\f s4\p |
    s4\< s16 s\! |
    s8\f s4\p |
    
    \barNumberCheck 73
    s4.\< |
    s4.\cresc |
    s4. |
    s4.\mf |
    s4. |
    s4.\f |
    s4. * 2 |
    
    \barNumberCheck 81
    s4. * 4 |
    s4.\mf |
    s4. |
    s4.\p |
    s4. |
    
    \barNumberCheck 89
    s4.\cresc |
    s4. * 3 |
    s4.\f |
    s4. |
    s4.-\tweak Y-offset 0 \p |
    s4. |
    
    \barNumberCheck 97
    s4\< s8\f |
    s4. * 7 |
    
    \barNumberCheck 105
    s4.\p |
    s4. * 5 |
    s4.\cresc |
    s4. |
    
    \barNumberCheck 113
    s4.\f |
    s4. |
    s4.\p |
    s4. * 2 |
  }
}

tempi = {
  \repeat volta 2 {
    \tempo "Allegretto" 8 = 168
    s4. * 56 |
    
    \barNumberCheck 57
    s4. * 2 |
    \set Score.tempoHideNote = ##t
    s8 \tempo 8 = 152 s \tempo 8 = 138 s |
    s4. |
  }
  \repeat volta 2 {
    \tempo 8 = 168
    s4. * 4 |
    
    \barNumberCheck 65
    s4. * 48 |
    
    \barNumberCheck 113
    s4. * 3 |
    \tag layout { s4. * 2 | }
    \tag midi {
      \alternative {
        {
          s8 \tempo 8 = 152 s \tempo 8 = 138 s |
          s4. |
        }
        {
          \tempo 8 = 144 s8 \tempo 8 = 126 s \tempo 8 = 112 s |
          \tempo 8 = 100 s4. |
        }
      }
    }
  }
}

forceBreaks = {
  % page 1
  s4. * 7 \break
  s4. * 7 \break
  s4. * 6 \break
  s4. * 6 \break
  s4. * 7 \pageBreak
  
  % page 2
  s4. * 5 \break
  s4. * 6 \break
  s4. * 6 \break
  s4. * 5 \break
  s4. * 5 \pageBreak
  
  % page 3
  s4. * 6 \break
  s4. * 6 \break
  s4. * 5 \break
  s4. * 5 \break
  \grace { s16 } s4. * 6 \pageBreak
  
  % page 4
  s4. * 6 \break
  s4. * 6 \break
  \grace { s16 } s4. * 6 \break
  \grace { s16 } s4. * 5 \break
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
