//=============================================================================
//  MuseScore
//  Music Composition & Notation
//
//  Copyright (C) 2002-2016 Werner Schweer and others
//
//  This program is free software; you can redistribute it and/or modify
//  it under the terms of the GNU General Public License version 2.
//
//  This program is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU General Public License for more details.
//
//  You should have received a copy of the GNU General Public License
//  along with this program; if not, write to the Free Software
//  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
//=============================================================================

#ifndef __MUSESCOREVIEWER_H__
#define __MUSESCOREVIEWER_H__

#include "config.h"
#include "globals.h"
#include "ui_measuresdialog.h"
#include "ui_insertmeasuresdialog.h"
#include "ui_aboutbox.h"
#include "ui_aboutmusicxmlbox.h"
#include "singleapp/src/QtSingleApplication"
#include "updatechecker.h"
#include "libmscore/musescoreCore.h"
#include "libmscore/score.h"
#include "newwizard.h"

namespace Ms {

class UploadScoreDialog;
class LoginManager;
class Shortcut;
class ScoreView;
class Element;
class PreferenceDialog;
class InstrumentsDialog;
class Instrument;
class MidiFile;
class TextStyleDialog;
class PlayPanel;
class Mixer;
class Debugger;
class MeasureListEditor;
class MasterScore;
class Score;
class Tuplet;
class PageSettings;
class PaletteBox;
class Palette;
class PaletteScrollArea;
class SelectionWindow;
class XmlWriter;
class MagBox;
class NewWizard;
class ExcerptsDialog;
class SynthControl;
class PianorollEditor;
class DrumrollEditor;
class Staff;
class ScoreTab;
class Drumset;
class TextTools;
class DrumTools;
class ScriptEngine;
class KeyEditor;
class ChordStyleEditor;
class Navigator;
class Timeline;
class PianoTools;
class MediaDialog;
class Workspace;
class WorkspaceDialog;
class AlbumManager;
class WebPageDockWidget;
class ChordList;
class Capella;
class Inspector;
class OmrPanel;
class NScrollArea;
class TDockWidget;
class Sym;
class MasterPalette;
class PluginCreator;
#ifdef SCRIPT_INTERFACE
class PluginManager;
class QmlPluginEngine;
#endif
class MasterSynthesizer;
class SynthesizerState;
class Driver;
class Seq;
class ImportMidiPanel;
class ScoreComparisonTool;
class ScriptRecorder;
class ScriptRecorderWidget;
class Startcenter;
class HelpBrowser;
class ToolbarEditor;
class TourHandler;
class GeneralAutoUpdater;

struct PluginDescription;
enum class SelState : char;
enum class IconType : signed char;
enum class MagIdx : char;

extern QString mscoreGlobalShare;


//---------------------------------------------------------
//   MuseScore
//---------------------------------------------------------

class MuseScoreViewer : public QMainWindow, public MuseScoreCore {
      Q_OBJECT

      // ScoreView* cv                        { 0 };
      // ScoreState _sstate;

      // QVBoxLayout* layout;    // main window layout
   public:
      MuseScoreViewer();
      // ~MuseScoreViewer();
      // virtual int appendScore(MasterScore*);
      // bool noScore() const { return scoreList.isEmpty(); }
      // ScoreState state() const { return _sstate; }
      // void changeState(ScoreState);
      // void updateInputState(Score*);
      // void updateShadowNote();
      // Q_INVOKABLE void loadFile(const QString& url);
      // void loadFile(const QUrl&);
      // virtual Score* openScore(const QString& fn, bool switchTab = true);

      // MasterScore* readScore(const QString& name);

      // virtual void closeScore(Score* score);
      // ScoreView* currentScoreView() const { return cv; }

};

extern MuseScoreViewer* mscoreviewer;

} // namespace Ms

#endif
