import QtQuick 1.0

import 'Controls'

Rectangle {
    property bool landscape: width > height
	property string accessToken:"2227470867|2.CviPVJK8i2cnKaWxaPRwjw__.3600.1298584800-100000489637733|Loslph3badEEJrCwSHvBZVmVgkg"

    id: window
	width: 360
	height: 640
	z: -2
	Image {
		fillMode: Image.PreserveAspectCrop
		anchors.fill: parent
		source:"back.png"
	}
	BorderImage {
		id:contentPanel
		border.bottom: 15;border.left: 15; border.right: 15; border.top: 15
		source:"Controls/contentPanel.png"
		anchors.fill: parent
		anchors.bottomMargin: 10 + softKeys.height
		anchors.leftMargin: 10
		anchors.rightMargin: 10
		anchors.topMargin: shortcuts.height + shortcuts.y + 10
		ContactDelegate {
			y:10
			anchors.left: parent.left
			anchors.right: parent.right
			anchors.margins: 10
		}
		ContactDelegate {
			y:75
			anchors.left: parent.left
			anchors.right: parent.right
			anchors.margins: 10
			name: "Dénes Betti"
			online: false
			avatar: "https://graph.facebook.com/100000909201686/picture"
		}
	}

	UserPanel {
		id: userPanel
		x: 0
		y: 0
		width:	window.width	// window.landscape ? 170 : window.width
		height:	70				// window.landscape ? window.height - softKeys.height : 70
		avatar:	"https://graph.facebook.com/ducktor/picture"
		z:2
		name: 'Barta Tamás'
		onClicked: shortcuts.y = shortcuts.y == 20 ? userPanel.height : 20
	}
	ShortcutBar {
		id:shortcuts
		x: 0;	y: userPanel.height
		height: 54
		width: window.width
		Behavior on y {
			NumberAnimation {
				easing.type: Easing.InOutSine
				duration: 300
			}
		}
		InputBox {
			anchors.fill: parent
			anchors.leftMargin: 15
			anchors.topMargin: 7
			anchors.bottomMargin: 12
			anchors.rightMargin: 15
		}
	}

	SoftKeys {
        id: softKeys
        x: 0
        y: window.height - height
		width: window.width
		height: ! window.landscape ? 64 : 48
		onRightClicked: Qt.quit();
		z:2
	}
/*
	ListView {
		id:contacts
		anchors.fill: parent
		delegate: ContactDelegate {
			anchors.left: parent.left
			anchors.right: parent.right
			anchors.margins: 10
			name: last_name + first_name
			online: false
			avatar: "https://graph.facebook.com/100000909201686/picture"
		}
		model: ContactModel {

			 sortOrders: [
				SortOrder {
				   detail:ContactDetail.Organization
				   field:Organization.Name
				   direction:Qt.AscendingOrder
				},
				SortOrder {
				   detail:ContactDetail.Name
				   field:Name.FirstName
				   direction:Qt.AscendingOrder
				}
			 ]
		 }

	}
*/
	function getFacebookContacts() {

	}

	function getFacebookObject(object, method, fields) {
		var baseURL = "https://graph.facebook.com/"+object+"/"+method+"?access_token="+accessToken+(fields === undefined ? "" : "&fields="+fields);
	}

	function makeRequest() {

	}

}
