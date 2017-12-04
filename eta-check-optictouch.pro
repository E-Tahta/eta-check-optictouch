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

script.files = eta-optictouch-handler
script.path = /usr/bin/

service.files = eta-optictouch.service
service.path = /lib/systemd/system/

target.path = /usr/bin/

INSTALLS += target script

