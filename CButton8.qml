import QtQuick 2.15

Rectangle {
    id: cButton1
    visible: true
    width: 150
    height: 180
    radius: 10
    color: baseColor
    border.width: 3
    border.color: borderColor
    enabled: true

    signal selected

    property string baseColor;
    property string borderColor;
    property string texts;
    property string textColor;
    property string pressedColor;
    property real textOpacity: 1
    property string buttonCircleColor: "black"

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
        font.pixelSize: 30
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }

    MouseArea {
        id: cButton8MA
        anchors.fill: parent
        onPressed: parent.color = pressedColor
        onExited: parent.color = baseColor
        onEntered: parent.color = pressedColor
        onClicked: {
            buttonCircleColor = "orange"
            selected()
        }
    }

    Rectangle {
        id: rectangle
        width: 30
        height: 30
        color: buttonCircleColor
        border.width: 2
        border.color: borderColor
        radius: width / 2
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 10
        anchors.topMargin: 10
    }
}

