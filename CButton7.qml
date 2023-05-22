import QtQuick 2.15

Rectangle {
    id: cButton6
    visible: true
    width: 550
    height: 50
    radius: 10
    border.width: 3
    border.color: borderColor
    color: baseColor
    enabled: true

    property string fileName;
    property string baseColor;
    property string borderColor;
    property string texts;
    property string textColor;
    property string pressedColor;
    property int fontSize: 25
    property real textOpacity: 1

    Loader {
        id: buttonProperty
        source: "PButtonProperty.qml"

        onLoaded: {
            baseColor = buttonProperty.item.baseColor
            borderColor = buttonProperty.item.borderColor
            textColor = buttonProperty.item.textColor
            pressedColor = buttonProperty.item.pressedColor
        }
    }

    Text {
        text: texts
        anchors.fill: parent
        color: textColor
        opacity: textOpacity
        font.pixelSize: fontSize
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        anchors.leftMargin: 20
    }

    MouseArea {
        anchors.fill: parent
        onClicked: screenLoader.source = fileName
        onPressed: parent.color = pressedColor
        onExited: parent.color = baseColor
    }
}
