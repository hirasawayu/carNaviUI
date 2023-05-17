import QtQuick 2.15

Rectangle {
    id: cButton1
    visible: true
    width: 200
    height: 180
    radius: 10
    color: baseColor
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
        anchors.topMargin: 100
    }

    MouseArea {
        id: cButton1MA
        anchors.fill: parent
        onClicked: screenLoader.source = parent.fileName
        onPressed: cButton1.color = pressedColor
        onExited: cButton1.color = baseColor
    }

}
