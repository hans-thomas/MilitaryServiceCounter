import QtQuick
import QtQuick.Layouts
import MyApp.TimeCalculator

Window {
    id: mainWindow
    title: qsTr("Holy Counter")
    width: 640
    height: 480
    minimumWidth: 640
    minimumHeight: 480
    visible: true
    color: "#EEDDF3"

    Rectangle {
        color: "#DFCAEC"
        radius: 10
        anchors.fill: parent
        anchors.margins: 50

        ColumnLayout {
            anchors.fill: parent
            spacing: 1

            Text {
                text: qsTr("Day %nth", "", timeCalc.daysPassed())
                font.pointSize: 21
                Layout.alignment: Qt.AlignLeft
                Layout.leftMargin: 20
                Layout.topMargin: 20
            }

            Item {
                Layout.fillHeight: true
            }

            Counter {
                Layout.alignment: Qt.AlignHCenter
                Layout.preferredWidth: mainWindow.height * 0.52

                total_days: timeCalc.totalDays()
                passed_days: timeCalc.daysPassed()
            }

            Item {
                Layout.fillHeight: true
            }

            RowLayout {
                Layout.fillWidth: true
                Layout.alignment: Qt.AlignCenter
                Layout.leftMargin: 20
                Layout.rightMargin: 20
                spacing: 40

                Text {
                    text: "Calories Burned"
                    font.pointSize: 16
                    Layout.alignment: Qt.AlignCenter
                }

                Item {
                    Layout.fillWidth: true
                }

                Text {
                    text: "0 Kcal"
                    font.pointSize: 18
                    Layout.alignment: Qt.AlignCenter
                }
            }

            RowLayout {
                Layout.fillWidth: true
                Layout.alignment: Qt.AlignCenter
                Layout.leftMargin: 20
                Layout.rightMargin: 20
                Layout.bottomMargin: 20
                spacing: 40

                Text {
                    text: "Distance Covered"
                    font.pointSize: 16
                    Layout.alignment: Qt.AlignCenter
                }

                Item {
                    Layout.fillWidth: true
                }

                Text {
                    text: qsTr("%n cm", "", 0)
                    font.pointSize: 18
                    Layout.alignment: Qt.AlignCenter
                }
            }
        }
    }

    TimeCalculator {
        id: timeCalc
    }
}
