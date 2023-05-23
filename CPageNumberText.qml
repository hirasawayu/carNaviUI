import QtQuick 2.15


Text {
    id: cPageNumberText
    text: texts
    anchors.fill: parent
    color: textColor
    font.pointSize: 18

    property string texts;
    property string textColor;

    Loader {
        id: buttonProperty
        source: "PButtonProperty.qml"

        onLoaded: {
            textColor = buttonProperty.item.textColor
        }
    }
}
