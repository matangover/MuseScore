TEMPLATE = lib

CONFIG += debug

CONFIG += precompiled_header
PRECOMPILED_HEADER = all.h

#QT += svg declarative
QT += gui xml xmlpatterns widgets concurrent svg qml quick quickwidgets help

LIBS += -L/usr/local/lib -lfreetype -lz

INCLUDEPATH += ./libmscore ./thirdparty/freetype/include

QMAKE_CXXFLAGS += -include all.h -fsigned-char -ffast-math -std=c++11 -stdlib=libc++ -O2
#RESOURCES += libmscore.qrc

SOURCES = \
      libmscore/accidental.cpp            \
      libmscore/arpeggio.cpp              \
      libmscore/articulation.cpp          \
      libmscore/audio.cpp                 \
      libmscore/barline.cpp               \
      libmscore/beam.cpp                  \
      libmscore/bend.cpp                  \
      libmscore/box.cpp                   \
      libmscore/bracket.cpp               \
      libmscore/breath.cpp                \
      libmscore/bsp.cpp                   \
      libmscore/check.cpp                 \
      libmscore/chord.cpp                 \
      libmscore/chordline.cpp             \
      libmscore/chordlist.cpp             \
      libmscore/chordrest.cpp             \
      libmscore/clef.cpp                  \
      libmscore/cleflist.cpp              \
      libmscore/cmd.cpp                   \
#      libmscore/cursor.cpp                \
      libmscore/drumset.cpp               \
#      libmscore/dsp.cpp                   \
      libmscore/duration.cpp              \
      libmscore/durationtype.cpp          \
      libmscore/dynamic.cpp               \
      libmscore/edit.cpp                  \
      libmscore/element.cpp               \
#      libmscore/elementlayout.cpp         \
      libmscore/elementmap.cpp            \
      libmscore/excerpt.cpp               \
      libmscore/fifo.cpp                  \
      libmscore/figuredbass.cpp           \
      libmscore/fingering.cpp             \
#      libmscore/fraction.cpp              \
      libmscore/fret.cpp                  \
      libmscore/glissando.cpp             \
      libmscore/hairpin.cpp               \
      libmscore/harmony.cpp               \
      libmscore/hook.cpp                  \
      libmscore/icon.cpp                  \
      libmscore/image.cpp                 \
      libmscore/imageStore.cpp            \
      libmscore/iname.cpp                 \
      libmscore/input.cpp                 \
      libmscore/instrchange.cpp           \
      libmscore/instrtemplate.cpp         \
      libmscore/instrument.cpp            \
      libmscore/interval.cpp              \
      libmscore/joinMeasure.cpp           \
      libmscore/key.cpp                   \
      libmscore/keyfinder.cpp             \
      libmscore/keysig.cpp                \
      libmscore/lasso.cpp                 \
      libmscore/layoutbreak.cpp           \
      libmscore/layout.cpp                \
      libmscore/line.cpp                  \
      libmscore/lyrics.cpp                \
      libmscore/measurebase.cpp           \
      libmscore/measure.cpp               \
      libmscore/mscore.cpp                \
      libmscore/navigate.cpp              \
      libmscore/note.cpp                  \
      libmscore/notedot.cpp               \
      libmscore/noteevent.cpp             \
      libmscore/ossia.cpp                 \
      libmscore/ottava.cpp                \
      libmscore/page.cpp                  \
      libmscore/part.cpp                  \
      libmscore/paste.cpp                 \
      libmscore/pedal.cpp                 \
      libmscore/pitch.cpp                 \
      libmscore/pitchspelling.cpp         \
      libmscore/pos.cpp                   \
      libmscore/property.cpp              \
#      libmscore/qzip.cpp                  \
      libmscore/range.cpp                 \
      libmscore/read114.cpp               \
      libmscore/rehearsalmark.cpp         \
#      libmscore/rendermidi.cpp            \
      libmscore/repeat.cpp                \
      libmscore/repeatlist.cpp            \
      libmscore/rest.cpp                  \
      libmscore/revisions.cpp             \
      libmscore/score.cpp                 \
      libmscore/scorefile.cpp             \
      libmscore/segment.cpp               \
      libmscore/segmentlist.cpp           \
      libmscore/select.cpp                \
      libmscore/shadownote.cpp            \
      libmscore/sig.cpp                   \
#      libmscore/simpletext.cpp            \
      libmscore/slur.cpp                  \
      libmscore/spacer.cpp                \
      libmscore/spanner.cpp               \
      libmscore/splitMeasure.cpp          \
      libmscore/staff.cpp                 \
      libmscore/staffstate.cpp            \
      libmscore/stafftext.cpp             \
      libmscore/stafftype.cpp             \
      libmscore/stem.cpp                  \
      libmscore/style.cpp                 \
      libmscore/symbol.cpp                \
      libmscore/sym.cpp                   \
      libmscore/system.cpp                \
#      libmscore/tablature.cpp             \
      libmscore/tempo.cpp                 \
      libmscore/tempotext.cpp             \
      libmscore/text.cpp                  \
      libmscore/textframe.cpp             \
      libmscore/textline.cpp              \
      libmscore/timesig.cpp               \
      libmscore/transpose.cpp             \
      libmscore/tremolobar.cpp            \
      libmscore/tremolo.cpp               \
      libmscore/trill.cpp                 \
      libmscore/tuplet.cpp                \
      libmscore/undo.cpp                  \
      libmscore/utils.cpp                 \
      libmscore/velo.cpp                  \
      libmscore/volta.cpp                 \
      libmscore/bsymbol.cpp               \
#      libmscore/xml.cpp                   \
#      embinds/classScore.cpp \
      libmscore/ledgerline.cpp \
      libmscore/scoreElement.cpp \
      libmscore/textBase.cpp \
      libmscore/staffTextBase.cpp \
      libmscore/ambitus.cpp \
      libmscore/textlinebase.cpp \
      libmscore/slurtie.cpp \
      libmscore/tie.cpp \
      libmscore/shape.cpp \
      libmscore/lyricsline.cpp \
      libmscore/bagpembell.cpp \
      libmscore/stemslash.cpp \
      libmscore/stafflines.cpp \
      libmscore/bracketItem.cpp \
      libmscore/marker.cpp \
      libmscore/stringdata.cpp \
      libmscore/synthesizerstate.cpp \
      libmscore/skyline.cpp \
      libmscore/xmlreader.cpp \
      libmscore/noteline.cpp \
      libmscore/xmlwriter.cpp \
      libmscore/location.cpp \
      libmscore/spannermap.cpp \
      libmscore/systemtext.cpp \
      libmscore/midimapping.cpp \
      libmscore/keylist.cpp \
      libmscore/groups.cpp \
      libmscore/systemdivider.cpp \
      libmscore/stafftypelist.cpp \
      libmscore/connector.cpp \
      libmscore/textedit.cpp \
      libmscore/sticking.cpp \
      libmscore/palmmute.cpp \
      libmscore/vibrato.cpp \
      libmscore/letring.cpp \
      libmscore/fermata.cpp \
      libmscore/noteentry.cpp \
      synthesizer/event.cpp \
      libmscore/read301.cpp \
      libmscore/read206.cpp \
      libmscore/measurenumber.cpp \
      libmscore/jump.cpp \
      libmscore/renderMidi.cpp \
      libmscore/layoutlinear.cpp \
      thirdparty/qzip/qzip.cpp \
      libmscore/stafftypechange.cpp \
      libmscore/web.cpp \

HEADERS += \
    libmscore/ledgerline.h \
    libmscore/scoreElement.h \
    libmscore/textBase.h \
    libmscore/staffTextBase.h \
    libmscore/ambitus.h \
    libmscore/textlinebase.h \
    libmscore/slurtie.h \
    libmscore/tie.h \
    libmscore/shape.h \
    libmscore/bagpembell.h \
    libmscore/stemslash.h \
    libmscore/stafflines.h \
    libmscore/bracketItem.h \
    libmscore/marker.h \
    libmscore/stringdata.h \
    libmscore/synthesizerstate.h \
    libmscore/skyline.h \
    libmscore/noteline.h \
    libmscore/location.h \
    libmscore/spannermap.h \
    libmscore/systemtext.h \
    libmscore/keylist.h \
    libmscore/groups.h \
    libmscore/systemdivider.h \
    libmscore/stafftypelist.h \
    libmscore/connector.h \
    libmscore/textedit.h \
    libmscore/sticking.h \
    libmscore/palmmute.h \
    libmscore/vibrato.h \
    libmscore/letring.h \
    libmscore/fermata.h \
    synthesizer/event.h \
    libmscore/measurenumber.h \
    libmscore/jump.h \
    libmscore/stafftypechange.h \
    libmscore/types.h \
    libmscore/accidental.h              \
    libmscore/arpeggio.h                \
    libmscore/articulation.h            \
    libmscore/audio.h                   \
    libmscore/barline.h                 \
    libmscore/beam.h                    \
    libmscore/bend.h                    \
    libmscore/box.h                     \
    libmscore/bracket.h                 \
    libmscore/breath.h                  \
    libmscore/bsp.h                     \
    libmscore/bsymbol.h                 \
    libmscore/chord.h                   \
    libmscore/chordline.h               \
    libmscore/chordlist.h               \
    libmscore/chordrest.h               \
    libmscore/clef.h                    \
    libmscore/cleflist.h                \
#    libmscore/cursor.h                  \
    libmscore/drumset.h                 \
#    libmscore/dsp.h                     \
    libmscore/duration.h                \
    libmscore/durationtype.h            \
    libmscore/dynamic.h                 \
    libmscore/element.h                 \
#    libmscore/elementlayout.h           \
    libmscore/elementmap.h              \
    libmscore/excerpt.h                 \
    libmscore/fifo.h                    \
    libmscore/figuredbass.h             \
    libmscore/fingering.h               \
    libmscore/fraction.h                \
    libmscore/fret.h                    \
    libmscore/glissando.h               \
    libmscore/hairpin.h                 \
    libmscore/harmony.h                 \
    libmscore/hook.h                    \
    libmscore/icon.h                    \
    libmscore/image.h                   \
    libmscore/imageStore.h              \
    libmscore/iname.h                   \
    libmscore/input.h                   \
    libmscore/instrchange.h             \
    libmscore/instrtemplate.h           \
    libmscore/instrument.h              \
#    libmscore/instrument_p.h            \
    libmscore/interval.h                \
    libmscore/keyfinder.h               \
    libmscore/key.h                     \
    libmscore/keysig.h                  \
    libmscore/lasso.h                   \
    libmscore/layoutbreak.h             \
    libmscore/layout.h                  \
    libmscore/line.h                    \
    libmscore/lyrics.h                  \
    libmscore/measurebase.h             \
    libmscore/measure.h                 \
    libmscore/mscore.h                  \
    libmscore/mscoreview.h              \
    libmscore/navigate.h                \
#    libmscore/noscript.h                \
    libmscore/notedot.h                 \
    libmscore/noteevent.h               \
    libmscore/note.h                    \
    libmscore/ossia.h                   \
    libmscore/ottava.h                  \
    libmscore/page.h                    \
    libmscore/part.h                    \
    libmscore/pedal.h                   \
    libmscore/pitch.h                   \
    libmscore/pitchspelling.h           \
    libmscore/pitchvalue.h              \
    libmscore/pos.h                     \
    libmscore/property.h                \
#    libmscore/qzipreader_p.h            \
#    libmscore/qzipwriter_p.h            \
    libmscore/range.h                   \
    libmscore/rehearsalmark.h           \
    libmscore/repeat.h                  \
    libmscore/repeatlist.h              \
    libmscore/rest.h                    \
    libmscore/revisions.h               \
    libmscore/score.h                   \
    libmscore/segment.h                 \
    libmscore/segmentlist.h             \
    libmscore/select.h                  \
    libmscore/sequencer.h               \
    libmscore/shadownote.h              \
    libmscore/sig.h                     \
#    libmscore/simpletext.h              \
    libmscore/slur.h                    \
#    libmscore/slurmap.h                 \
    libmscore/spacer.h                  \
    libmscore/spanner.h                 \
    libmscore/spannermap.h              \
    libmscore/spatium.h                 \
    libmscore/staff.h                   \
    libmscore/staffstate.h              \
    libmscore/stafftext.h               \
    libmscore/stafftype.h               \
    libmscore/stem.h                    \
    libmscore/style.h                   \
#    libmscore/style_p.h                 \
    libmscore/symbol.h                  \
    libmscore/sym.h                     \
    libmscore/system.h                  \
#    libmscore/tablature.h               \
    libmscore/tempo.h                   \
    libmscore/tempotext.h               \
    libmscore/textframe.h               \
    libmscore/text.h                    \
    libmscore/textline.h                \
    libmscore/tiemap.h                  \
    libmscore/timesig.h                 \
    libmscore/tremolobar.h              \
    libmscore/tremolo.h                 \
    libmscore/trill.h                   \
    libmscore/tuplet.h                  \
    libmscore/tupletmap.h               \
    libmscore/undo.h                    \
    libmscore/utils.h                   \
    libmscore/velo.h                    \
    libmscore/volta.h                   \
    libmscore/xml.h                     \