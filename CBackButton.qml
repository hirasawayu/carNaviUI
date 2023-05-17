import QtQuick 2.15

Rectangle {
    id: cBackButton
    visible: true
    width: 150
    height: 60
    color: baseColor

    radius: 10
    border.width: 3
    border.color: borderColor

    property string fileName;
    property string baseColor;
    property string borderColor;
    property string texts;
    property string textColor;
    property string pressedColor

    Loader {
        id: buttonProperty
        source: "PButtonProperty.qml"

        onLoaded: {
            baseColor = buttonProperty.item.baseColor
            borderColor = buttonProperty.item.borderColor
            texts = buttonProperty.item.texts
            textColor = buttonProperty.item.textColor
            pressedColor = buttonProperty.item.pressedColor

        }

    }

    Text {
        text: texts
        anchors.fill: parent
        color: textColor
        font.pixelSize: 30
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }

    MouseArea {
        anchors.fill: parent
        onClicked: screenLoader.source = parent.fileName
        onPressed: cBackButton.color = pressedColor
        onExited: cBackButton.color = baseColor
    }

}
