import QtQuick 1.0

Item {
	property alias leftText: leftText.text
	property alias rightText: rightText.text
	signal leftClicked
	signal rightClicked
    width: 100
	height: 62
	BorderImage {
		id: leftBG
		source: "softkeyLeft.png"
		width: parent.width/2; height: parent.height
		border.top: 2
		border.right: 1
	}
	BorderImage {
		id: rightBG
		source: "softkeyRight.png"
		width: Math.ceil(parent.width/2); height: parent.height; x: Math.floor(leftBG.width)
		border.top: 2
		border.left: 1
	}
	MouseArea {
		anchors.fill: leftBG
		onClicked: leftClicked()
	}
	MouseArea {
		anchors.fill: rightBG
		onClicked: rightClicked()
	}
	Text {
		id: leftText
		color: "#ffffff"
		anchors.fill: leftBG
		anchors.margins: 5
		text: "Opciók"
		font.family: "Series 60 Sans"
		font.pixelSize: 24
		verticalAlignment: Text.AlignVCenter
		style: Text.Sunken
	}
	Text {
		id: rightText
		color: "#ffffff"
		anchors.fill: rightBG
		anchors.margins: 5
		text: "Kilépés"
		font.family: "Series 60 Sans"
		horizontalAlignment: Text.AlignRight
		font.pixelSize: 24
		verticalAlignment: Text.AlignVCenter
		style: Text.Sunken
	}
}
