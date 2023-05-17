import QtQuick 2.15
import QtQuick.Shapes 1.15

Rectangle {
    id: cButton2Selected
    visible: true
    width: 150
    height: 90
    radius: 10
    border.width: 3
    border.color: "white"
    color: "black"

    property string text;
    property string textColor: "white"

    Text {
        height: 60
        text: parent.text
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        color: parent.textColor
        font.pixelSize: 30
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }

    Rectangle {
        height: 30
        color: "black"
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.rightMargin: 3
        anchors.leftMargin: 3
        anchors.topMargin: 0

    }

    Rectangle {
        height: 10
        color: "black"
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.rightMargin: -3
        anchors.leftMargin: -3
        anchors.topMargin: 0

    }
}
