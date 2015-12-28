import QtQuick 1.0

Rectangle {
	property alias avatar: avatar.source
	property alias name: name.text
	property alias phoneNumber: phoneNumber.text
	property alias email: email.text
	property bool online: true
    width: 100
	height: 60
	color: Qt.rgba(255,255,255,0.5)
	radius: 4
	clip:true
	Image {
		id:avatar
		fillMode: "PreserveAspectCrop"
		x: 5
		y: 5
		width: 50
		height: 50
		source: "https://graph.facebook.com/ducktor/picture"
		Image {
			id:icon
			source: parent.parent.online ? "../facebook.png" : "../phonebook.png"
			width:16
			height: 16
			x: 34; y: 34
		}
	}
	Column {
		x: 60; y: 5
		spacing: 5
		Text {
			id: name
			color:Qt.rgba(0,0,0,0.8)
			font.pixelSize: 20
			text: "Barta Tamás"
		}
		Row {
			spacing: 5
			Text {
				id: phoneNumber
				color: Qt.rgba(0,0,0,0.5)
				font.pixelSize:16
				text: "+36308511135"
			}
			Text {
				id:email
				color: Qt.rgba(0,0,0,0.5)
				font.pixelSize: 16
				text: "barta.tamas.d@gmail.com"
			}
		}
	}
}
