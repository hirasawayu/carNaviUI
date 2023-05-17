import QtQuick 2.15

Rectangle {
    width: 300
    height: 30
    color: "black"

    property string titleText: ""
    property string textColor: "white"

    Text {
        id: cTitleText1
        anchors.fill: parent
        text: parent.titleText
        color: parent.textColor
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 18
    } 
}
