TEMPLATE = subdirs
CONFIG += debug_and_release
SUBDIRS = libs/antlr-2.7.7/antlr.pro \
    libs/qhexedit/qhexedit.pro \
    libs/qcustomplot-source/qcustomplot.pro \
    libs/qscintilla/Qt4Qt5/qscintilla.pro \
    libs/sqlite3/sqlite3.pro\
    src \


win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/libs/sqlite3/release/ -lsqlite3
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/libs/sqlite3/debug/ -lsqlite3

INCLUDEPATH += $$PWD/libs/sqlite3
DEPENDPATH += $$PWD/libs/sqlite3

win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/libs/sqlite3/release/libsqlite3.a
else:win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/libs/sqlite3/debug/libsqlite3.a
else:win32:!win32-g++:CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/libs/sqlite3/release/sqlite3.lib
else:win32:!win32-g++:CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/libs/sqlite3/debug/sqlite3.lib
