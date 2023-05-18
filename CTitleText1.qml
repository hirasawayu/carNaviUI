import QtQuick 2.15

Rectangle {
    width: 300
    height: 30
    color: baseColor

    property string baseColor;
    property string titleText;
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
        text: titleText
        color: textColor
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 18
    } 
}
