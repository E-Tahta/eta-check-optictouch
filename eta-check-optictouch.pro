QT += qml quick widgets
TEMPLATE = app
TARGET = eta-optictouch-busy

SOURCES += main.cpp \
    helper.cpp \
    signalhandler.cpp

HEADERS += \
    helper.h \
    signalhandler.h

RESOURCES += qml.qrc

script.files = check_optictouch
script.path = /usr/bin/

target.path = /usr/bin/

INSTALLS += target script

