

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick
import Constants

Rectangle {
    id: root
    width: Constants.width
    height: Constants.height
    color: "#303030"
    property int bpmValue: 0
    property bool heartVisible: true

    Text {
        id: textTitle
        color: "#ffffff"
        text: qsTr("Heart Bit Monitoring")
        font.pointSize: 20
        font.bold: true
        anchors.verticalCenterOffset: -107
        anchors.horizontalCenterOffset: 0
        anchors.centerIn: parent
    }

    Text {
        id: textHeart
        x: 34
        y: 76
        width: 162
        height: 142
        visible: root.heartVisible
        color: "#ff0000"
        text: qsTr("♥")
        font.pixelSize: 150
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }

    Item {
        id: itemBPM
        x: 285
        y: 71
        width: 152
        height: 153

        Text {
            id: textLable
            x: -8
            y: 103
            width: 152
            height: 42
            color: "#ffffff"
            text: qsTr("BPM")
            font.pixelSize: 35
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.bold: true
        }

        Text {
            id: textbpmValue
            x: -8
            y: -14
            width: 152
            height: 111
            color: root.bpmValue > 80 ? (root.bpmValue > 90 ? "red" : "yellow") : "#fffdfd"
            text: root.bpmValue
            font.pixelSize: 70
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.bold: true
        }
    }
}
