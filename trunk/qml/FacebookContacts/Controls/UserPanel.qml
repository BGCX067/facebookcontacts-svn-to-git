import QtQuick 1.0

Rectangle {
    property alias avatar: avatar.source
	property alias name: name.text
	signal clicked
    width: 100
	height: 62
	BorderImage {
		id: background
		source: "userPanel.png"
		anchors.fill: parent
		anchors.bottomMargin: -9
		border.left: 0; border.top: 2
		border.right: 0; border.bottom: 11
	}
	Image {
		id: avatar
		width: 50
		height: 50
		x: 10
		y: 10
	}
	Text {
		id: name
		text: "text"
		font.family: "Series 60 Sans"
		style: Text.Raised
		font.pixelSize: 24
		font.bold: true
		color: 'white'
		y: parent.height / 2 - height / 2
		x: 70
		width: parent.width - button.width - 90
	}
	Button {
		id:button
		caption: ''
		source: '../facebook.png'
		// backcolor: 'Red'
		textcolor: 'white'
		onClicked: parent.clicked()
		anchors.right: parent.right
		anchors.rightMargin: 10
		width: 40
		height: 40
		y: parent.height / 2 - height / 2
	}
}
