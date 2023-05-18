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
        text: parent.texts
        anchors.fill: parent
        color: textColor
        font.pixelSize: 30
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }

    MouseArea {
        anchors.fill: parent
        onClicked: screenLoader.source = parent.fileName
        onPressed: cButton3.color = pressedColor
        onExited: cButton3.color = baseColor
    }
}



