import QtQuick 1.0

Item {
    width: 100
    height: 62
	BorderImage {
		id: back
		anchors.fill: parent
		source: "input.png"
		width: 100; height: 100
		border.left: 5; border.top: 5
		border.right: 5; border.bottom: 5
	}
	TextInput {
		id:input
		anchors.fill: parent
		anchors.margins: 5
		font.pixelSize: 20
		selectByMouse: true
	}
}
