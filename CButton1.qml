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
    enabled: true

    property string fileName;
    property string imageSource;
    property string baseColor;
    property string borderColor;
    property string texts;
    property string textColor;
    property string pressedColor;
    property real textOpacity: 1


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
        opacity: textOpacity
        font.pixelSize: 30
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        anchors.topMargin: 100
    }

    Image {
        id: image
        width: 100
        height: 100
        anchors.top: parent.top
        anchors.topMargin: 10
        source: imageSource
        anchors.horizontalCenter: parent.horizontalCenter

    }

    MouseArea {
        id: cButton1MA
        anchors.fill: parent
        onClicked: screenLoader.source = fileName
        onPressed: parent.color = pressedColor
        onExited: parent.color = baseColor
    }

}
