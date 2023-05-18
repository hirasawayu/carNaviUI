import QtQuick 2.15
import QtQuick.Shapes 1.15

Rectangle {
    id: cButton2Selected
    visible: true
    width: 150
    height: 90
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
        id: commonProperty
        source: "PCommonProperty.qml"

        onLoaded: {
            baseColor = commonProperty.item.baseColor
        }
    }

    Loader {
        id: buttonProperty
        source: "PButtonProperty.qml"

        onLoaded: {
            textColor = buttonProperty.item.textColor
            borderColor = buttonProperty.item.borderColor

        }
    }

    Text {
        height: 60
        text: parent.texts
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        color: textColor
        font.pixelSize: 30
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }

    Rectangle {
        height: 30
        color: baseColor
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.rightMargin: 3
        anchors.leftMargin: 3
        anchors.topMargin: 0

    }

    Rectangle {
        height: 10
        color: baseColor
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.rightMargin: -3
        anchors.leftMargin: -3
        anchors.topMargin: 0

    }
}
