import QtQuick 2.0
import QQuickBgfx 1.0

Item {

    width: 1024
    height: 640

    BgfxItem {
        objectName: "bgfxItem1"
        id: bgfxItem1
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right
        height: parent.height / 3
        viewId: 0
        backgroundColor: "#3369ff"


        Text {
            id: labelItem1
            color: "white"
            wrapMode: Text.WordWrap
            text: "Name: " + parent.objectName + " | ViewId: " + parent.viewId + " | Color: " + parent.backgroundColor
            anchors.right: parent.right
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.margins: 20
        }

        SequentialAnimation on backgroundColor {
            ColorAnimation { to: "white"; duration: 2000 }
            ColorAnimation { to: "#3369ff"; duration: 1500 }
            loops: Animation.Infinite
            running: true
        }

        Rectangle {
            anchors.fill: parent
            border.width: 4
            border.color: parent.backgroundColor
            color: "transparent"
        }
    }

    BgfxItem {
        objectName: "bgfxItem2"
        id: bgfxItem2
        anchors.top: bgfxItem1.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        height: parent.height / 3
        viewId: 1
        backgroundColor: "#ff69ff"

        SequentialAnimation on backgroundColor {
            ColorAnimation { to: "white"; duration: 1500 }
            ColorAnimation { to: "#ff69ff"; duration: 1400 }
            loops: Animation.Infinite
            running: true
        }

        Text {
            id: labelItem2
            color: "white"
            wrapMode: Text.WordWrap
            text: "Name: " + parent.objectName + " | ViewId: " + parent.viewId + " | Color: " + parent.backgroundColor
            anchors.right: parent.right
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.margins: 20
        }

        Rectangle {
            anchors.fill: parent
            border.width: 4
            border.color: parent.backgroundColor
            color: "transparent"
        }
    }

    BgfxItem {
        objectName: "bgfxItem3"
        id: bgfxItem3
        anchors.top: bgfxItem2.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        height: parent.height / 3
        viewId: 2
        backgroundColor: "#4fa92f"

        SequentialAnimation on backgroundColor {
            ColorAnimation { to: "white"; duration: 1600 }
            ColorAnimation { to: "#4fa92f"; duration: 1200 }
            loops: Animation.Infinite
            running: true
        }

        Text {
            id: labelItem3
            color: "white"
            wrapMode: Text.WordWrap
            text: "Name: " + parent.objectName + " | ViewId: " + parent.viewId + " | Color: " + parent.backgroundColor
            anchors.right: parent.right
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.margins: 20
        }

        Rectangle {
            anchors.fill: parent
            border.width: 4
            border.color: parent.backgroundColor
            color: "transparent"
        }
    }

    Rectangle {
        color: Qt.rgba(1, 0.85, 0.7, 0.7)
        radius: 10
        border.width: 1
        border.color: "white"
        anchors.fill: label
        anchors.margins: -10
    }

    Text {
        id: label
        color: "black"
        wrapMode: Text.WordWrap
        text: "Click and drag mouse over the height of each BgfxItem to change the color luminance at render time. BgfxItem background color is updated from SequentialAnimation in main.qml."
        anchors.right: parent.right
        anchors.left: parent.left
        anchors.bottom: parent.bottom
        anchors.margins: 20
    }
}
