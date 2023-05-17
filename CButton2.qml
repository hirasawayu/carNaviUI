import QtQuick 2.15

Rectangle {
    id: cButton2
    visible: true
    width: 150
    height: 60
    radius: 10
    border.width: 3
    border.color: "white"
    color: "black"

    property string text;
    property string textColor: "white"
    property string fileName;

    Text {
        text: parent.text
        anchors.fill: parent
        color: parent.textColor
        font.pixelSize: 30
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }

    MouseArea {
        anchors.fill: parent
        onClicked: screenLoader.source = parent.fileName
        onPressed: cButton2.color = "orange"
        onExited: cButton2.color = "black"
    }

}
