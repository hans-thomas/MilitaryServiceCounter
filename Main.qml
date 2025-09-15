import QtQuick
import QtQuick.Layouts

Window {
    title: qsTr("Holy Counter")
    width: 640
    height: 480
    minimumWidth: 640
    minimumHeight: 480
    visible: true

    Rectangle {
        color: "blue"
        anchors.fill: parent
        anchors.margins: 50

        ColumnLayout {
            anchors.fill: parent
            spacing: 1

            Text {
                text: "Day Counter"
                font.pointSize: 15
                Layout.alignment: Qt.AlignLeft
                Layout.leftMargin: 10
                Layout.bottomMargin: 10
            }

            Counter {
                Layout.alignment: Qt.AlignCenter
                Layout.fillWidth: true
            }

            Item {
                Layout.fillHeight: true
            }

            RowLayout {
                Layout.fillWidth: true
                Layout.alignment: Qt.AlignCenter
                spacing: 40

                Text {
                    text: "Calories Burned"
                    font.pointSize: 12
                    Layout.alignment: Qt.AlignLeft
                }
                Item {
                    Layout.fillWidth: true
                }
                Text {
                    text: "460 Kcal"
                    font.pointSize: 12
                    Layout.alignment: Qt.AlignRight
                }
            }

            RowLayout {
                Layout.fillWidth: true
                Layout.alignment: Qt.AlignLeft
                spacing: 40

                Text {
                    text: "Distance Covered"
                    font.pointSize: 12
                    Layout.alignment: Qt.AlignLeft
                }

                Item {
                    Layout.fillWidth: true
                }

                Text {
                    text: "0 cm"
                    font.pointSize: 12
                    Layout.alignment: Qt.AlignRight
                }
            }
        }
    }
}
