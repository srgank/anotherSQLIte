TEMPLATE = lib

CONFIG += staticlib
CONFIG += debug_and_release

INCLUDEPATH += ./


SOURCES += \
    sqlite3.c

HEADERS += \
    sqlite3.h \
    sqlite3ext.h
