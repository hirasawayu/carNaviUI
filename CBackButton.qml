import QtQuick 2.15

Rectangle {
    id: cBackButton
    visible: true
    width: 150
    height: 60

    radius: 10
    border.width: 3

    property string fileName: ""

    Text {
        text: qsTr("←戻る")
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
