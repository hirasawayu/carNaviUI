import QtQuick 2.15

Rectangle {
    id: cButton1
    visible: true
    width: 200
    height: 180
    radius: 10
    border.width: 3

    property string fileName: ""
    property string text: ""

    Text {
        text: parent.text
        anchors.fill: parent
        font.pixelSize: 30
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }

    MouseArea {
        id: cButton1MA
        anchors.fill: parent
        onClicked: screenLoader.source = parent.fileName
    }

}
