# Add more folders to ship with the application, here
folder_01.source = qml/FacebookContacts
folder_01.target = qml
DEPLOYMENTFOLDERS = folder_01

# Additional import path used to resolve QML modules in Creator's code model
QML_IMPORT_PATH =

# Avoid auto screen rotation
#DEFINES += ORIENTATIONLOCK

# Needs to be defined for Symbian
DEFINES += NETWORKACCESS

symbian:TARGET.UID3 = 0xE0F3C0C6
symbian:TARGET.CAPABILITY = NetworkServices ReadUserData WriteUserData Location

# Define QMLJSDEBUGGER to allow debugging of QML in debug builds
# (This might significantly increase build time)
# DEFINES += QMLJSDEBUGGER

# If your application uses the Qt Mobility libraries, uncomment
# the following lines and add the respective components to the 
# MOBILITY variable. 
CONFIG += mobility
MOBILITY += contacts

# The .cpp file which was generated for your project. Feel free to hack it.
SOURCES += main.cpp \
    facebookprofile.cpp \
    facebookapi.cpp

# Please do not modify the following two lines. Required for deployment.
include(qmlapplicationviewer/qmlapplicationviewer.pri)
qtcAddDeployment()

HEADERS += \
    facebookprofile.h \
    facebookapi.h
