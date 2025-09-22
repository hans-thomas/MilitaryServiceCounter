import QtQuick
import QtQuick.Layouts
import MyApp.TimeCalculator

Window {
    id: mainWindow
    title: qsTr("Holy Counter")
    width: 1366
    height: 768
    minimumWidth: 640
    minimumHeight: 480
    visible: true
    color: "#EEDDF3"

    Rectangle {
        color: "#DFCAEC"
        radius: 10
        anchors.centerIn: parent
        width: mainWindow.width > mainWindow.height ? parent.width * 0.4 : parent.width * 0.9
        height: width

        ColumnLayout {
            anchors.fill: parent
            spacing: 1

            Text {
                text: qsTr("Day %nth", "", timeCalc.daysPassed())
                font.pointSize: parent.width * 0.05
                Layout.alignment: Qt.AlignLeft
                Layout.leftMargin: 20
                Layout.topMargin: 20
            }

            Item {
                Layout.fillHeight: true
            }

            Counter {
                Layout.alignment: Qt.AlignHCenter
                Layout.preferredWidth: parent.height * 0.6

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
                    font.pointSize: parent.width * 0.038
                    Layout.alignment: Qt.AlignCenter
                }

                Item {
                    Layout.fillWidth: true
                }

                Text {
                    text: "0 Kcal"
                    font.pointSize: parent.width * 0.042
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
                    font.pointSize: parent.width * 0.038
                    Layout.alignment: Qt.AlignCenter
                }

                Item {
                    Layout.fillWidth: true
                }

                Text {
                    text: qsTr("%n cm", "", 0)
                    font.pointSize: parent.width * 0.042
                    Layout.alignment: Qt.AlignCenter
                }
            }
        }
    }

    TimeCalculator {
        id: timeCalc
    }
}
