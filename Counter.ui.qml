import QtQuick
import QtQuick.Studio.Components

Item {
    id: root
    width: 200
    implicitHeight: width

    Rectangle {
        id: rectangle
        anchors.fill: parent
        color: "#eeddf3"
        radius: width / 2
        antialiasing: true

        ArcItem {
            anchors.centerIn: parent
            width: parent.width * 0.92
            height: parent.height * 0.92
            begin: 230
            end: 490
            strokeWidth: 15
            strokeColor: "#ee92b1"
            fillColor: "#00000000"
        }

        Text {
            id: text1
            text: qsTr("500")
            font.pixelSize: root.width * 0.15
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            anchors.leftMargin: 35
        }

        Text {
            id: text2
            text: qsTr("/")
            font.pixelSize: root.width * 0.25
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Text {
            id: text3
            text: qsTr("500")
            font.pixelSize: root.width * 0.17
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: parent.right
            anchors.rightMargin: 30
        }
    }
}
