TEMPLATE = app
CONFIG += console c++11
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += main.cpp \
    CCard.cpp \
    CSlot.cpp \
    CBoard.cpp \
    CEffect.cpp \
    CCost.cpp

HEADERS += \
    CCard.h \
    CSlot.h \
    CBoard.h \
    CEffect.h \
    CCost.h
