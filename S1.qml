import QtQuick 2.15

Rectangle {
    id: s1Base
    color: baseColor

    property string baseColor;
    property int titleTextX;
    property int titleTextY;
    property int backButtonX;
    property int backButtonY;

    property int cButton2X1;
    property int cButton2Y1;
    property int cButton2X2;
    property int cButton2Y2;
    property int cButton2X3;
    property int cButton2Y3;



    Loader {
        id: commonProperty
        source: "PCommonProperty.qml"

        onLoaded: {
            baseColor = commonProperty.item.baseColor
            titleTextX = commonProperty.item.titleTextX
            titleTextY = commonProperty.item.titleTextY
            backButtonX = commonProperty.item.backButtonX
            backButtonY = commonProperty.item.backButtonY
        }
    }

    Loader {
        id: screen1Property
        source: "PScreen1Property.qml"

        onLoaded: {



        }
    }

    Loader {
        id: screenSubButtonProperty
        source: "PScreenSubButtonProperty.qml"

        onLoaded: {
            cButton2X1 = screenSubButtonProperty.item.cButton2X1
            cButton2Y1 = screenSubButtonProperty.item.cButton2Y1
            cButton2X2 = screenSubButtonProperty.item.cButton2X2
            cButton2Y2 = screenSubButtonProperty.item.cButton2Y2
            cButton2X3 = screenSubButtonProperty.item.cButton2X3
            cButton2Y3 = screenSubButtonProperty.item.cButton2Y3
        }
    }

    Loader {
        id: s1TitleText
        source: "CTitleText1.qml"
        x: titleTextX
        y: titleTextY

        onLoaded: {
            item.texts = "ナビゲーション"
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
            item.imageSource = "flag.jpg"
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
            item.borderColor = "purple"
            item.imageSource = "location.jpg"
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
            item.imageSource = "home.jpg"
        }

    }

    Rectangle {
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
            item.texts = "ナビ"

        }
    }

    Loader {
        id: s2Button
        source: "CButton2.qml"
        x: cButton2X2
        y: cButton2Y2

        onLoaded: {
            item.texts = "アプリ"
            item.fileName = "S2.qml"
        }
    }

    Loader {
        id: s3Button
        source: "CButton2.qml"
        x: cButton2X3
        y: cButton2Y3

        onLoaded: {
            item.texts = "設定"
            item.fileName = "S3.qml"
        }
    }


    Loader {
        id: s1backButton
        source: "CBackButton.qml"
        x: backButtonX
        y: backButtonY

        onLoaded: {
            item.texts = "地図へ戻る"
            item.fileName = "S0.qml"
        }
    }



}
