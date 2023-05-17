import QtQuick 2.15

Rectangle {
    id: s1Base
    //Delete
    color: baseColor

    property string baseColor;
    property int titleTextX;
    property int titleTextY;
    property int cButton2X1;
    property int cButton2Y1;
    property int cButton2X2;
    property int cButton2Y2;
    property int cButton2X3;
    property int cButton2Y3;
    property int backButtonX;
    property int backButtonY;


    Loader {
        id: commonProperty
        source: "PCommonProperty.qml"

        onLoaded: {
            baseColor = commonProperty.item.baseColor
        }
    }

    Loader {
        id: screenProperty
        source: "PScreen1Property.qml"

        onLoaded: {
            titleTextX = screenProperty.item.titleTextX
            titleTextY = screenProperty.item.titleTextY
            cButton2X1 = screenProperty.item.cButton2X1
            cButton2Y1 = screenProperty.item.cButton2Y1
            cButton2X2 = screenProperty.item.cButton2X2
            cButton2Y2 = screenProperty.item.cButton2Y2
            cButton2X3 = screenProperty.item.cButton2X3
            cButton2Y3 = screenProperty.item.cButton2Y3
            backButtonX = screenProperty.item.backButtonX
            backButtonY = screenProperty.item.backButtonY
        }
    }




    Loader {
        id: s1TitleText
        source: "CTitleText1.qml"
        x: titleTextX
        y: titleTextY



        onLoaded: {
            item.titleText = "ナビゲーション"
        }



    }


    Loader {
        id: s11Button
        source: "CButton1.qml"
        anchors.topMargin: 90
        anchors.leftMargin: 30
        anchors.left: parent.left
        anchors.top: parent.top

        onLoaded: {
            item.texts = "行き先"
            item.fileName = "S11.qml"
            item.borderColor = "green"
        }

    }

    Loader {
        id: s12Button
        source: "CButton1.qml"
        anchors.topMargin: 0
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: s11Button.top

        onLoaded: {
            item.texts = "最寄"
            item.fileName = "S12.qml"
            item.borderColor = "blue"
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
            item.texts = "自宅\nお気に入り"
            item.fileName = "S13.qml"
            item.borderColor = "orange"
        }

    }

    Rectangle {
        id: line
        x: 0
        y: 300
        width: 700
        height: 3
        border.width: 0
    }

    Loader {
        id: selfS1Button
        source: "CButton2Selected.qml"
        x: cButton2X1
        y: cButton2Y1 -30

        onLoaded: {
            item.text = "ナビ"

        }
    }

    Loader {
        id: s2Button
        source: "CButton2.qml"
        x: cButton2X2
        y: cButton2Y2

        onLoaded: {
            item.text = "アプリ"
            item.fileName = "S2.qml"
        }
    }

    Loader {
        id: s3Button
        source: "CButton2.qml"
        x: cButton2X3
        y: cButton2Y3

        onLoaded: {
            item.text = "設定"
            item.fileName = "S3.qml"
        }
    }


    Loader {
        id: backButton
        source: "CBackButton.qml"
        x: backButtonX
        y: backButtonY

        onLoaded: {
            item.texts = "地図へ戻る"
        }
    }



}
