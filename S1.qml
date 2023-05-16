import QtQuick 2.15

Rectangle {
    id: rectangle
    //Delete
    width: 700
    height: 400
    color: screenProperty.item.color

    Loader {
        id: screenProperty
        source: "ScreenProperty.qml"
    }

    Loader {
        id: s11Button
        source: "CButton1.qml"
        anchors.topMargin: 90
        anchors.leftMargin: 30
        anchors.left: parent.left
        anchors.top: parent.top

        onLoaded: {
            item.text = "行き先"
            item.fileName = "S11.qml"
        }

    }

    Loader {
        id: s12Button
        source: "CButton1.qml"
        anchors.topMargin: 0
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: s11Button.top

        onLoaded: {
            item.text = "最寄"
            item.fileName = "S12.qml"
        }


    }

    Loader {
        id: s13Button
        source: "CButton1.qml"
        anchors.topMargin: 0
        anchors.rightMargin: 30
        anchors.right: parent.right
        anchors.top: s11Button.top

        onLoaded: {
            item.text = "自宅\nお気に入り"
            item.fileName = "S13.qml"
        }

    }

    Loader {
        id: backButton
        source: "CBackButton.qml"
        x: screenProperty.item.backButtonX
        y: screenProperty.item.backButtonY
    }


}
