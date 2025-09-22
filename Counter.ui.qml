import QtQuick
import QtQuick.Studio.Components

Item {
    id: root
    width: 200
    implicitHeight: width

    property int total_days: 730
    property int passed_days: 730

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
            end: 230 + (2.6 * (passed_days / total_days * 100))
            strokeWidth: 15
            strokeColor: "#ee92b1"
            fillColor: "#00000000"
        }

        Text {
            id: text1
            text: total_days - passed_days
            font.pixelSize: root.width >= 200 ? root.width * 0.15 : root.width * 0.11
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
            text: total_days
            font.pixelSize: root.width >= 200 ? root.width * 0.17 : root.width * 0.13
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: parent.right
            anchors.rightMargin: 30
        }
    }
}
