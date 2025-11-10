%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\include "globals.ily"

\header { 
  title = "Sonata in G minor"
  opus = "K.108"
  source = "https://vmirror.imslp.org/files/imglnks/usimg/f/fb/IMSLP626890-PMLP335363-Sonata_K._108_(as_L._249).pdf"
}

%
% Positions and shapes
%

slurShapeA = \shape #'((0 . 0) (0 . 0) (0 . 0) (-0.1 . 0)) \etc
slurShapeB = \shape #'((0 . 0) (0 . 0) (-0.5 . -0.25) (0 . -0.5)) \etc

%
% Music
%

global = {
  \time 3/8
  \key g \minor
}

rightHand = \relative {
  \global
  \repeat volta 2 {
    g'8( d) d'-. |
    \acciaccatura { c8 } bf-. a-. g-. |
    a8( d,) d'-. |
    << 
      { g'8\rest g,4-> } 
      \\ 
      { \appoggiatura { \once \slurUp c,16 } bf8(^\trill a-.) g-. } 
    >> |
    <a fs'>8( <bf g'>) <c a'>-. |
    <bf g'>8( <a f'!>) <g ef'>-. |
    <fs d'>8( <g e'>) <a fs'>-. |
    <bf g'>8( <a f'!>) <g ef'!>-. |
    
    \barNumberCheck 9
    <fs d'>8( <g e'>) <a fs'>-. |
    <bf g'>8( <a f'!>) <g ef'!>-. |
    cs8-. d4-> |
    d'8( d,) d,-.\noBeam |
    \tag layout { bf8.(\prallprall } \tag midi { bf(\prall } a16 g8) |
    d'''8( d,) d,-.\noBeam |
    \tag layout { bf8.(\prallprall } \tag midi { bf(\prall } a16 g8) |
    << { <fs' a>8( <g bf> <a c>) } \\ { d,4. } >> |
    
    \barNumberCheck 17
    << { <g bf>8( <a c> <bf d>) } \\ { d,4. } >> |
    << { <fs a>8( <g bf> <a c>) } \\ { d,4. } >> |
    << { <g bf>8( <a c> <bf d>) } \\ { d,4. } >> |
    << { <b' d>8( <c ef> <d f>) } \\ { g,4. } >> |
    << { ef'8( d c) } \\ { g4. } >> |
    << { <b d>8( <c ef> <d f>) } \\ { g,4. } >> |
    << { ef'8( d c) } \\ { g4. } >> |
    << { <a c>8( <bf d> <c ef>) } \\ { f,4. } >> |
    
    \barNumberCheck 25
    << { d'8( c bf) } \\ { f4. } >> |
    << { <a c>8( <bf d> <c ef>) } \\ { f,4. } >> |
    << { d'8( c bf) } \\ { f4. } >> |
    \stemUp <g bf>8( <a c> <bf d> |
    <a c>8 <g bf> <fs a>) |
    q8( <g bf> <a c> |
    <g bf>8 a g) |
    \stemNeutral <bf g'>8-. \slashedGrace { f'-\slurShapeA ( } <g, e')>-.
      < f d'>-. |
    
    \barNumberCheck 33
    \slashedGrace { e'-\slurShapeB ( } <f, d')>8( <e cs'>) <f d'>-. |
    \slashedGrace { e'-\slurShapeB ( } <f, d')>8( <e cs'>) <f d'>-. |
    \slashedGrace { e'-\slurShapeB ( } <f, d')>8( <e cs'>) <f d'>-. |
    \slashedGrace { e'-\slurShapeB ( } <f, d')>8( <e cs'>) 
      << { \grace { d'32_( } d16)\trill cs32 d } \\ { f,8 } >> |
    d'8( e4) |
    a8( a,) a,-.\noBeam |
    \clef bass \tag layout { f8.(\prallprall } \tag midi { f(\prall } e16 d8) |
    \clef treble a'''8( a,) a,-.\noBeam |
    
    \barNumberCheck 41
    \clef bass \tag layout { f8.(\prallprall } \tag midi { f(\prall } e16 d8) |
    \clef treble <e' cs'>8( <f d'>) <g e'>-. |
    <f d'>8( <e cs'>) <f d'>-. |
    <e cs'>8( <f d'>) <g e'>-. |
    <f d'>8( <g e'>) <a f'>-. |
    <bf g'>8( e) cs-. |
    d8( a) bf'-. |
    a16( g f e d cs) |
    
    \barNumberCheck 49
    \appoggiatura { cs8 } d4. |
    a'8-.\noBeam \clef bass a,,-. a,-. |
    d,4. |
    \clef treble a''''8-.\noBeam \clef bass a,,-. a,-. |
    d,4. |
    \clef treble a''''8-.\noBeam \clef bass a,,-. a,-. |
    d,4. |
    \clef treble <bf''' g'>8( e) cs-. |
    
    \barNumberCheck 57
    d8( a) bf'-. |
    a16( g f e d cs |
    d8 a) bf-. |
    a16( g f e d cs) |
    \appoggiatura { cs8-> } d4. |
  }
  \repeat volta 2 {
    << { <bf' d>8( <c ef!> <d f>) } \\ { f,4. } >> |
    <g ef' g>8( f' ef) |
    <f, bf d>8( f' d) |
    
    \barNumberCheck 65
    << { c8(\prall bf a) } \\ { f4. } >> |
    << { <bf d>8( <c ef> <d f>) } \\ { f,4. } >> |
    <g ef' g>8( f' ef) |
    <f, bf d>8( f' d) |
    \tag layout { c4.\prallprall } \tag midi { c\prall } |
    f8( c) c'-. |
    af8( g) f-. |
    f8( c) c'-. |
    
    \barNumberCheck 73
    af8( g) f-. |
    e8-. f16(\prall e32 f g8-.) |
    <g, e'>8( <af f'>) <bf g'>-. |
    <af f'>8( <g e'>) <af f'>-. |
    <g e'>8( <af f'>) <bf g'>-. |
    <af f'>8( <g e'>) <af f'>-. |
    <f d'>8( <g ef'!>) <af f'>-. |
    <g ef'>8( <f d'>) <g ef'>-. |
    
    \barNumberCheck 81
    <f d'>8( <g ef'>) <af f'>-. |
    <g ef'>8( <f d'>) <g ef'>-. |
    <bf df>8( <af c>) <bf df>-. |
    <af c>8( <g bf>) <af c>-. |
    <bf df>8( <af c>) <bf df>-. |
    <af c>8( <g bf>) <af c>-. |
    <a! c>8( <bf d!>) <c ef>-. |
    <bf d>8( <a c>) <bf d>-. |
    
    \barNumberCheck 89
    <b d>8( <c ef>) <d f>-. |
    <c ef>8( <b d>) <c e>-. |
    <cs e>8( <d f>) <e g>-. |
    << { fs8( g) a-. } \\ { d,4 c!8-. } >> |
    <bf g'>8( <a f'!>) <g ef'!>-. |
    <fs d'>8( <g e'>) <a fs'>-. |
    <bf g'>8( <a f'!>) <g ef'!>-. |
    cs8( d) r |
    
    \barNumberCheck 97
    r8 <c! c'!>( <bf bf'>) |
    r8 <a a'>( <g g'>) |
    r8 <f f'>( <ef ef'>) |
    r8 <d d'>( <c c'>) |
    r8 <bf bf'>( <a a'>) |
    <g g'>8( <a a'>) <bf bf'>~ |
    q8 <a a'>-. <g g'>-. |
    q8( <a a'>) r |
    
    \barNumberCheck 105
    r8 <c' c'>( <bf bf'>) |
    r8 <a a'>( <g g'>) |
    r8 <f f'>( <ef ef'>) |
    r8 <d d'>( <c c'>) |
    r8 <bf bf'>( <a a'>) |
    d'8[( g,) \grace { a16( bf } c8-.]) |
    bf8-. a16( g a fs) |
    \appoggiatura { fs8 } g4. |
    
    \barNumberCheck 113
    d''8-. d,-. d,-.\noBeam |
    \tag layout { bf8.(\prallprall } \tag midi { bf(\prall } a16 g8) |
    d'''8-. d,-. d,-.\noBeam |
    \tag layout { bf8.(\prallprall } \tag midi { bf(\prall } a16 g8) |
    << { <fs' a>8( <g bf> <a c>) } \\ { d,4. } >> |
    << { <g bf>8( <a c> <bf d>) } \\ { d,4. } >> |
    << { <fs a>8( <g bf> <a c>) } \\ { d,4. } >> |
    << { <g bf>8( <a c> <bf d>) } \\ { d,4. } >> |
    
    \barNumberCheck 121
    << { g'4 a8-. } \\ { ef8( c) fs-. } >> |
    <d g bf>8( d-.) c'-. |
    d16( c bf a g fs |
    g8 d) ef-. |
    d16( c bf a g fs |
    g8 d) ef-. |
    d16( c bf a g fs) |
    \appoggiatura { fs8-> } g4. |
  }
}

leftHand = \relative {
  \global
  \clef bass
  \repeat volta 2 {
    <g, g'>4 <fs fs'>8-. |
    <g g'>8-. <f! f'!>-. <ef ef'>-. |
    <d d'>4 <fs fs'>8-. |
    <g g'>8( <f! f'!>-.) <ef ef'>-. |
    <d d'>4 q8-. |
    <g g'>4 <c, c'>8-. |
    <d d'>4 q8-. |
    <g g'>4 <c, c'>8-. |
    
    \barNumberCheck 9
    <d d'>4 q8-. |
    <g g'>4 <c, c'>8-. |
    <d d'>4. |
    q4 <fs fs'>8-. |
    <g g'>4. |
    <d d'>4 <fs fs'>8-. |
    <g g'>4. |
    \clef treble d''''8-.\noBeam \clef bass d,,,-. d,-. |
    
    \barNumberCheck 17
    <g g'>4. |
    \clef treble d''''8-.\noBeam \clef bass d,,,-. d,-. |
    <g g'>4. |
    \clef treble d''''8-.\noBeam \clef bass g,,,-. g,-. |
    <c, c'>4. |
    \clef treble d''''8-.\noBeam \clef bass g,,,-. g,-. |
    <c, c'>4. |
    \clef treble c''''8-.\noBeam \clef bass f,,,-. f,-. |
    
    \barNumberCheck 25
    <bf bf'>4. |
    \clef treble c'''8-.\noBeam \clef bass f,,,-. f,-. |
    <bf bf'>4. |
    \clef treble bf'''8-.\noBeam \clef bass ef,,,-. ef,-. |
    <a a'>4. |
    \clef treble a'''8-.\noBeam \clef bass d,,,-. d,-. |
    <g g'>4. |
    q4. |
    
    \barNumberCheck 33
    <a a'>4 q8-. |
    q4 q8-. |
    q4 q8-. |
    q4 q8-. |
    q4. |
    q4 <cs, cs'>8-. |
    <d d'>4. |
    <a' a'>4 <cs, cs'>8-. |
    
    \barNumberCheck 41
    <d d'>4. |
    \clef treble a''''8-.\noBeam \clef bass a,,-. a,-. |
    <d, d'>4. |
    \clef treble a''''8-.\noBeam \clef bass a,,-. a,-. |
    <d, d'>4. |
    <g' bf d e>4 <a cs e>8-. |
    <f a d>4 <g bf>8-. |
    a4 a,8-. |
    
    \barNumberCheck 49
    <d, d'>4. |
    \clef treble << { e''8( a) g-. } \\ { cs,4 <cs e>8-. } >> |
    << { f8(\prall e d) } \\ { d4. } >> |
    << { e8( a) g-. } \\ { cs,4 <cs e>8-. } >> |
    << { f8(\prall e d) } \\ { d4. } >> |
    << { e8( a) g-. } \\ { cs,4 <cs e>8-. } >> |
    << { f8(\prall e d) } \\ { d4. } >> |
    \clef bass <g, bf d e>4 <a cs e>8-. |
    
    \barNumberCheck 57
    <f a d>4 <g bf>8-. |
    a4 a,8-. |
    d4 <g, g'>8-. |
    <a a'>4 a8-. |
    d,4.-> |
  }
  \repeat volta 2 {
    \clef treble bf''''8-.\noBeam \clef bass bf,,-. bf,-. |
    <ef, ef'>4. |
    \clef treble bf''''8-.\noBeam \clef bass bf,,-. bf,-. |
    
    \barNumberCheck 65
    <f f'>4. |
    \clef treble bf'''8-.\noBeam \clef bass bf,,-. bf,-. |
    <ef, ef'>4. |
    \clef treble bf''''8-.\noBeam \clef bass bf,,-. bf,-. |
    <f f'>4. |
    \clef treble f''4 <e g>8-. |
    <f af>8( <ef! g>) <df f>-. |
    <c g'>4 <e g>8-. |
    
    \barNumberCheck 73
    <f af>8( <ef! g>) <df f>-. |
    <c g'>4. |
    c''8-.\noBeam \clef bass c,,-. c,-. |
    <f, f'>4. |
    \clef treble c''''8-.\noBeam \clef bass c,,-. c,-. |
    <f, f'>4. |
    \clef treble bf'''8-.\noBeam \clef bass bf,,-. bf,-. |
    <ef, ef'>4. |
    
    \barNumberCheck 81
    \clef treble bf''''8-.\noBeam \clef bass bf,,-. bf,-. |
    <ef, ef'>4. |
    \clef treble bf''''8-.\noBeam \clef bass ef,,,-. ef,-. |
    <af af'>4. |
    \clef treble bf'''8-.\noBeam \clef bass ef,,,-. ef,-. |
    <af af'>4. |
    \clef treble f'''8-.\noBeam \clef bass f,,-. f,-. |
    <bf bf'>4. |
    
    \barNumberCheck 89
    \clef treble g'''8-.\noBeam \clef bass g,,-. g,-. |
    <c c'>4. |
    \clef treble a'''8-.\noBeam \clef bass a,,-. a,-. |
    <d d'>4 q8-. |
    <g bf d>4 <c, c'>8-. |
    <d d'>4 q8-. |
    <g bf d>4 <c, c'>8-. |
    <d d'>4 \clef treble <d' d'>8-. |
    
    \barNumberCheck 97
    <ef ef'>4( <d d'>8) |
    <c c'>4( <bf bf'>8) |
    <a a'>4( <g g'>8) |
    \clef bass <f f'>4( <ef ef'>8) |
    <d d'>4( <c c'>8) |
    <bf bf'>8( <a a'>) <g g'>-. |
    <c, c'>8-. <d d'>-. <ef ef'>-. |
    <d d'>4 \clef treble <d'' d'>8-. |
    
    \barNumberCheck 105
    <ef ef'>4( <d d'>8) |
    <c c'>4( <bf bf'>8) |
    <a a'>4( <g g'>8) |
    \clef bass <f f'>4( <ef ef'>8) |
    <d d'>4( <c c'>8) |
    <bf bf'>4 <c c'>8-. |
    <d d'>4 d8-. |
    g,4. |
    
    \barNumberCheck 113
    <d d'>4 <fs fs'>8-. |
    <g g'>4. |
    <d d'>4 <fs fs'>8-. |
    <g g'>4. |
    \clef treble d''''8-.\noBeam \clef bass d,,,-. d,-. |
    <g g'>4. |
    \clef treble d''''8-.\noBeam \clef bass d,,,-. d,-. |
    <g g'>4. |
    
    \barNumberCheck 121
    <c c'>4 <a a'>8-. |
    <g g'>4 <ef' c'>8-. |
    <d g bf>4 <d g a>8-. |
    <g, g'>4 <c c'>8-. |
    <d d'>4. |
    <g, g'>4 <c, c'>8-. |
    <d d'>4. |
    g4.-> |
  }
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s4.\f |
    s4. * 3 |
    s4 s8\mf |
    s4. |
    s4.\cresc |
    s4. |
    
    \barNumberCheck 9
    s4. * 2 |
    s4.\f |
    s4.\f |
    s4. * 3 |
    s4.-\tweak X-offset -3 \mf |
    
    \barNumberCheck 17
    s4. * 8 |
    
    \barNumberCheck 25
    s4. * 7 |
    \tag layout { s4.\sf } \tag midi { s8\ff s4\mf } |
    
    \barNumberCheck 33
    s4.\cresc |
    s4. * 3 |
    s4.\f |
    s4.\f |
    s4. * 2 |
    
    \barNumberCheck 41
    s4. |
    s4.-\tweak X-offset -3 \mf |
    s4.\cresc |
    s4. * 2 |
    s4.\f |
    s4. * 2 |
    
    \barNumberCheck 49
    s4. |
    s4.\f |
    s4. * 6 |
    
    \barNumberCheck 57
    s4. * 5 |
  }
  \repeat volta 2 {
    s4.-\tweak X-offset -3 \mf |
    s4. * 2 |
    
    \barNumberCheck 65
    s4. * 16 |
    
    \barNumberCheck 81
    s4. * 2 |
    s4.\p |
    s4. |
    s4.\cresc |
    s4. * 3 |
    
    \barNumberCheck 89
    s4. * 2 |
    s4.\f |
    s4. * 4 |
    s8\> s\! s\f |
    
    \barNumberCheck 97
    s4-\tweak Y-offset 1 \> s8\! |
    s4-\tweak Y-offset 0.5 \> s8\! |
    s4\> s8\! |
    s4-\tweak Y-offset 1.75 \> s8\! |
    s4-\tweak Y-offset 1 \> s8\! |
    s4. * 2 |
    s4 s8-\tweak Y-offset 0.5 \f |
    
    \barNumberCheck 105
    s4-\tweak Y-offset 1 \> s8\! |
    s4-\tweak Y-offset 0.5 \> s8\! |
    s4\> s8\! |
    s4-\tweak Y-offset 1.75 \> s8\! |
    s4-\tweak Y-offset 1 \> s8\! |
    s4.-\tweak Y-offset 0.5 \f |
    s4. * 2 |
    
    \barNumberCheck 113
    s4. * 4 |
    s4.-\tweak X-offset -3 \mf |
    s4. * 3 |
    
    \barNumberCheck 121
    s4.-\tweak Y-offset 0.5 \f |
    s4. * 7 |
  }
}

tempi = {
  \repeat volta 2 {
    \tempo "Allegro" 4. = 80
    s4. * 56 |
    
    \barNumberCheck 57
    s4. * 3 |
    \set Score.tempoHideNote = ##t
    s8 \tempo 4. = 72 s \tempo 4. = 66 s |
    \tempo 4. = 60 s4. |
  }
  \repeat volta 2 {
    \tempo 4. = 80
    s4. * 3 |
    
    \barNumberCheck 65
    s4. * 56 |
    
    \barNumberCheck 121
    s4. * 6 |
    \tag layout { s4. * 2 | }
    \tag midi {
      \alternative {
        {
          s8 \tempo 4. = 72 s \tempo 4. = 66 s |
          \tempo 4. = 60 s4. |
        }
        {
          \tempo 4. = 69 s8 \tempo 4. = 60 s \tempo 4. = 54 s |
          \tempo 4. = 40 s4. |
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
  s4. * 6 \pageBreak
  
  % page 2
  s4. * 6 \break
  s4. * 6 \break
  s4. * 6 \break
  s4. * 6 \break
  s4. * 6 \pageBreak
  
  % page 3
  s4. * 7 \break
  s4. * 7 \break
  s4. * 7 \break
  s4. * 7 \break
  s4. * 7 \pageBreak
  
  % page 4
  s4. * 7 \break
  s4. * 7 \break
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
