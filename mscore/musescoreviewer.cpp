//=============================================================================
//  MuseScore
//  Music Composition & Notation
//
//  Copyright (C) 2002-2016 Werner Schweer
//
//  This program is free software; you can redistribute it and/or modify
//  it under the terms of the GNU General Public License version 2
//  as published by the Free Software Foundation and appearing in
//  the file LICENCE.GPL
//=============================================================================

#include <fenv.h>
#include "network/loginmanager.h"
#include "uploadscoredialog.h"
#include <QStyleFactory>
#include "palettebox.h"
#include "config.h"
#include "musescore.h"
#include "musescoreviewer.h"
#include "scoreview.h"
#include "libmscore/style.h"
#include "libmscore/score.h"
#include "instrdialog.h"
#include "preferences.h"
#include "prefsdialog.h"
#include "icons.h"
#include "libmscore/xml.h"
#include "seq.h"
#include "libmscore/tempo.h"
#include "libmscore/sym.h"
#include "pagesettings.h"
#include "debugger/debugger.h"
#include "editstyle.h"
#include "playpanel.h"
#include "libmscore/page.h"
#include "mixer.h"
#include "selectionwindow.h"
#include "palette.h"
#include "palettebox.h"
#include "libmscore/part.h"
#include "libmscore/drumset.h"
#include "libmscore/instrtemplate.h"
#include "libmscore/note.h"
#include "libmscore/staff.h"
#include "driver.h"
#include "libmscore/harmony.h"
#include "magbox.h"
#include "libmscore/sig.h"
#include "libmscore/undo.h"
#include "synthcontrol.h"
#include "pianoroll.h"
#include "drumroll.h"
#include "scoretab.h"
#include "timedialog.h"
#include "keyedit.h"
#include "harmonyedit.h"
#include "navigator.h"
#include "timeline.h"
#include "importmidi/importmidi_panel.h"
#include "importmidi/importmidi_instrument.h"
#include "importmidi/importmidi_operations.h"
#include "scorecmp/scorecmp.h"
#include "script/recorderwidget.h"
#include "libmscore/scorediff.h"
#include "libmscore/chord.h"
#include "libmscore/segment.h"
#include "editraster.h"
#include "pianotools.h"
#include "mediadialog.h"
#include "workspace.h"
#include "selectdialog.h"
#include "selectnotedialog.h"
#include "transposedialog.h"
#include "metaedit.h"
#include "inspector/inspector.h"
#ifdef OMR
#include "omrpanel.h"
#endif
#include "shortcut.h"
#ifdef SCRIPT_INTERFACE
#include "plugin/pluginCreator.h"
#include "plugin/pluginManager.h"
#include "plugin/qmlpluginengine.h"
#endif
#include "helpBrowser.h"
#include "drumtools.h"
#include "editstafftype.h"
#include "texttools.h"
#include "textpalette.h"
#include "resourceManager.h"
#include "scoreaccessibility.h"
#include "startupWizard.h"
#include "tourhandler.h"

#include "libmscore/mscore.h"
#include "libmscore/system.h"
#include "libmscore/measure.h"
#include "libmscore/chordlist.h"
#include "libmscore/volta.h"
#include "libmscore/lasso.h"
#include "libmscore/excerpt.h"
#include "libmscore/synthesizerstate.h"
#include "libmscore/utils.h"
#include "libmscore/icon.h"

#include "driver.h"

#include "effects/zita1/zita.h"
#include "effects/compressor/compressor.h"
#include "effects/noeffect/noeffect.h"
#include "synthesizer/synthesizer.h"
#include "synthesizer/synthesizergui.h"
#include "synthesizer/msynthesizer.h"
#include "synthesizer/event.h"
#include "fluid/fluid.h"
#include "plugin/qmlplugin.h"
#include "accessibletoolbutton.h"
#include "toolbuttonmenu.h"
#include "searchComboBox.h"
#include "startcenter.h"
#include "help.h"
#include "awl/aslider.h"
#include "extension.h"
#include "thirdparty/qzip/qzipreader_p.h"


namespace Ms {

MuseScoreViewer* mscoreviewer;

//---------------------------------------------------------
//   MuseScore
//---------------------------------------------------------

MuseScoreViewer::MuseScoreViewer()
   : QMainWindow()
      {

      // QScreen* screen = QGuiApplication::primaryScreen();
      // _physicalDotsPerInch = userDPI;
      // MScore::pixelRatio = DPI / screen->logicalDotsPerInch();
      // setObjectName("MuseScore");
      // _sstate = STATE_INIT;
      // setWindowTitle(QString(MUSESCORE_NAME_VERSION));
      // setAcceptDrops(true);
      // setFocusPolicy(Qt::NoFocus);

      ScoreView* scoreView = new ScoreView;
      setCentralWidget(scoreView);

      // MasterScore* score = mscore->readScore(":/data/My_First_Score.mscx");
	  MasterScore* score = new MasterScore(MScore::defaultStyle());
	  //setMidiReopenInProgress(name);
		  const char* name = ":/data/My_First_Score.mscx";
	  Score::FileError rv = Ms::readScore(score, name, false);
      if (score) {
            //score->setName(mscore->createDefaultName());
		  score->setName("yosi");
            // TODO score->setPageFormat(*MScore::defaultStyle().pageFormat());
            score->doLayout();
            score->setCreated(true);
            }
            scoreView->setScore(score);
      }
}

using namespace Ms;

int main(int argc, char* argv[])
{
// #ifndef NDEBUG
//       qSetMessagePattern("%{file}:%{function}: %{message}");
//       Ms::checkStyles();
// #endif

      qDebug("Score viewer starting");
      QApplication app(argc, argv);
//       QApplication::setDesktopSettingsAware(true);
// #ifdef Q_OS_LINUX
//       QGuiApplication::setDesktopFileName("mscore");
// #endif
//       QApplication::setAttribute(Qt::AA_UseHighDpiPixmaps);
//       QApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
// #if defined(QT_DEBUG) && defined(Q_OS_WIN)
//       qInstallMessageHandler(mscoreMessageHandler);
// #endif

//       const char* appName="MuseScoreView";
//       QCoreApplication::setApplicationName(appName);
//       QCoreApplication::setOrganizationName("MuseScore");
//       QCoreApplication::setOrganizationDomain("musescore.org");
//       QCoreApplication::setApplicationVersion(VERSION);

      // mscoreGlobalShare = getSharePath();
      // setMscoreLocale("system");
      MScore::init();         // initialize libmscore
      // Workspace::initWorkspace();
      // create a score for internal use
      gscore = new MasterScore();
      gscore->setPaletteMode(true);
      gscore->setMovements(new Movements());
      gscore->setStyle(MScore::baseStyle());

      gscore->style().set(Sid::MusicalTextFont, QString("Bravura Text"));
      ScoreFont* scoreFont = ScoreFont::fontFactory("Bravura");
      gscore->setScoreFont(scoreFont);
      gscore->setNoteHeadWidth(scoreFont->width(SymId::noteheadBlack, gscore->spatium()) / SPATIUM20);
      //read languages list
      // mscoreviewer->readLanguages(mscoreGlobalShare + "locale/languages.xml");

      // QApplication::instance()->installEventFilter(mscoreviewer);

      // mscore->setRevision(revision);
      // int files = 0;
      // bool restoredSession = false;
      // mscoreviewer->changeState(mscoreviewer->noScore() ? STATE_DISABLED : STATE_NORMAL);
      preferences.init();
      // mscore = new MuseScore();
      mscoreviewer = new MuseScoreViewer();
      mscoreviewer->show();

      return qApp->exec();
}
