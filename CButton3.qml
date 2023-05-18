import QtQuick 2.15

Rectangle {
    id: cButton3
    visible: true
    width: 210
    height: 100
    radius: 10
    border.width: 3
    border.color: borderColor
    color: baseColor

    property string fileName;
    property string baseColor;
    property string borderColor;
    property string texts;
    property string textColor;
    property string pressedColor;
    property string fontSize;

    Loader {
        id: buttonProperty
        source: "PButtonProperty.qml"

        onLoaded: {
            baseColor = buttonProperty.item.baseColor
            borderColor = buttonProperty.item.borderColor
            textColor = buttonProperty.item.textColor
            pressedColor = buttonProperty.item.pressedColor
            fontSize = buttonProperty.item.fontSize
        }
    }



    Text {
        text: texts
        anchors.fill: parent
        color: textColor
        font.pixelSize: fontSize
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }

    MouseArea {
        anchors.fill: parent
        onClicked: screenLoader.source = fileName
        onPressed: parent.color = pressedColor
        onExited: parent.color = baseColor
    }
}



