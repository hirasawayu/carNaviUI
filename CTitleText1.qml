import QtQuick 2.15

Rectangle {
    width: 700
    height: 40
    color: baseColor

    property string baseColor;
    property string texts;
    property string textColor;

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
        }
    }

    Text {
        id: cTitleText1
        anchors.fill: parent
        text: texts
        color: textColor
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        anchors.topMargin: 5
        anchors.leftMargin: 20
        font.pointSize: 18
    } 
}
