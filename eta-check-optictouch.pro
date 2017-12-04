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

target.path = /usr/bin/

script.files = eta-optictouch-handler eta-optictouch-busy-wrapper
script.path = /usr/bin/

autostart_file.files = eta-check-optictouch.desktop
autostart_file.commands = mkdir -p /etc/xdg/autostart
autostart_file.path = /etc/xdg/autostart/

service.files = eta-check-optictouch.service
service.path = /lib/systemd/system/

INSTALLS += target script autostart_file service

