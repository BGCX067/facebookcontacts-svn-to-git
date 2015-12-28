import QtQuick 1.0

Item {
    width: 100
    height: 62
	BorderImage {
		id: back
		source: "shortcutBar.png"
		anchors.fill: parent
		border.left: 14; border.top: 0
		border.right: 14; border.bottom: 14
	}
}
