import QtQuick
import QtQuick.Studio.Components
import QtQuick.Studio.DesignEffects

Item {
    Rectangle {
        id: rectangle
        x: 0
        y: 0
        width: 200
        height: 200
        color: "#eeddf3"
        radius: 100
        antialiasing: true

        ArcItem {
            id: arc
            x: 8
            y: 8
            width: 184
            height: 184
            begin: 230
            end: 490
            strokeWidth: 15
            strokeColor: "#ee92b1"
            fillColor: "#00000000"
        }

        Text {
            id: text1
            x: 36
            y: 68
            text: qsTr("500")
            font.pixelSize: 30
        }

        Text {
            id: text2
            x: 84
            y: 68
            text: qsTr("/")
            font.pixelSize: 60
        }

        Text {
            id: text3
            x: 104
            y: 89
            text: qsTr("500")
            font.pixelSize: 34
        }
    }
}
