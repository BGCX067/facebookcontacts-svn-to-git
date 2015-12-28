import QtQuick 1.0

Item {
    id: container
    property string caption: "Button"
    property string backcolor: ""
    property color textcolor: "#777777"
    property int pixelSize: 16
    property real bopacity: 0
    property string source: ""

	signal clicked
    signal pressed
    signal pressedAndHold


    BorderImage {
        id: backgroundBorder
        border.bottom: 4
        border.top: 4
        border.right: 4
        border.left: 4
        anchors.fill: parent
        source: "button"+backcolor+".png"
    }
    BorderImage {
        id: backgroundBorderDown
        border.bottom: 4
        border.top: 4
        border.right: 4
        border.left: 4
        anchors.fill: parent
        opacity: bopacity
        source: "button"+backcolor+"2.png"
    }
    Image {
        id: icon
        source: container.source
        width: container.width - 10
        height: container.height - 10
        x: container.width / 2 - width / 2
        y: container.height / 2 - height / 2
    }

    Text {
        id: label
        anchors.fill: parent
        text: caption
        font.bold: true
        verticalAlignment: "AlignVCenter"
        horizontalAlignment: "AlignHCenter"
        color: textcolor
        font.pixelSize: pixelSize
        font.family: "Series 60 Sans"
        style: "Sunken"
    }

    MouseArea {
        id: mArea
        anchors.fill: parent
        onClicked: container.clicked()
        onPressed: container.pressed()
        onPressAndHold: container.pressAndHold()
    }
    states: [
        State {
            name: "down"

            PropertyChanges {
                target: container
                textcolor: "#ffffff"
                bopacity: 1
            }

        }
    ]
    state: (mArea.pressed ? "down" : "")
    transitions: Transition {
        PropertyAnimation {
            properties: "textcolor, bopacity"
            easing.type: Easing.InOutBounce
            duration: 100
        }
    }
}
