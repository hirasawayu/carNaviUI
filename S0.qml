import QtQuick 2.15

Rectangle {
    id: s0Base



    Image{
        anchors.fill: parent
        source: "map.png"
    }

    Loader {
        id: backButton
        source: "CBackButton.qml"
        x: 530
        y:320

        onLoaded: {
            item.texts = "メニュー"
            item.fileName = "S1.qml"
        }

    }
}
