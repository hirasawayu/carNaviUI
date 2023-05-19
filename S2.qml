import QtQuick 2.15

Rectangle {
    id: s2Base
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

    property int cButton3X1;
    property int cButton3Y1;
    property int cButton3X2;
    property int cButton3Y2;
    property int cButton3X3;
    property int cButton3Y3;
    property int cButton3X4;
    property int cButton3Y4;
    property int cButton3X5;
    property int cButton3Y5;
    property int cButton3X6;
    property int cButton3Y6;



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
        id: screenWith6Property
        source: "PScreenWith6ButtonProperty.qml"

        onLoaded: {

            cButton3X1 = screenWith6Property.item.cButton3X1
            cButton3Y1 = screenWith6Property.item.cButton3Y1
            cButton3X2 = screenWith6Property.item.cButton3X2
            cButton3Y2 = screenWith6Property.item.cButton3Y2
            cButton3X3 = screenWith6Property.item.cButton3X3
            cButton3Y3 = screenWith6Property.item.cButton3Y3
            cButton3X4 = screenWith6Property.item.cButton3X4
            cButton3Y4 = screenWith6Property.item.cButton3Y4
            cButton3X5 = screenWith6Property.item.cButton3X5
            cButton3Y5 = screenWith6Property.item.cButton3Y5
            cButton3X6 = screenWith6Property.item.cButton3X6
            cButton3Y6 = screenWith6Property.item.cButton3Y6
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
        id: s2TitleText
        source: "CTitleText1.qml"
        x: titleTextX
        y: titleTextY

        onLoaded: {
            item.texts = "アプリケーション"
        }
    }

    //write

    Loader {
        id: toS21Button
        source: "CButton3.qml"
        x: cButton3X1
        y: cButton3Y1

        onLoaded: {
            item.texts = "音楽"
            item.fileName = "S21.qml"
        }
    }

    Loader {
        id: toS22Button
        source: "CButton3.qml"
        x: cButton3X2
        y: cButton3Y2

        onLoaded: {
            item.texts = "ビデオ"
            item.fileName = "S22.qml"

        }
    }

    Loader {
        id: toS23Button
        source: "CButton3.qml"
        x: cButton3X3
        y: cButton3Y3

        onLoaded: {
            item.texts = "写真"
            item.fileName = "S23.qml"

        }
    }

    Loader {
        id: toS24Button
        source: "CButton3.qml"
        x: cButton3X4
        y: cButton3Y4

        onLoaded: {
            item.texts = "ワンセグ"
            item.fileName = "S24.qml"

        }
    }

    Loader {
        id: toS25Button
        source: "CButton3.qml"
        x: cButton3X5
        y: cButton3Y5

        onLoaded: {
            item.texts = "ハンズフリー"
            item.fileName = "S25.qml"

        }
    }

    Loader {
        id: toS26Button
        source: "CButton3.qml"
        x: cButton3X6
        y: cButton3Y6

        onLoaded: {
            item.texts = "ガイドブック"
            item.fileName = "S26.qml"


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
        id: toS1Button
        source: "CButton2.qml"
        x: cButton2X1
        y: cButton2Y1

        onLoaded: {
            item.texts = "ナビ"
            item.fileName = "S1.qml"
        }
    }

    Loader {
        id: selfS2Button
        source: "CButton2Selected.qml"
        x: cButton2X2
        y: cButton2Y2 -30

        onLoaded: {
            item.texts = "アプリ"
        }
    }

    Loader {
        id: toS3Button
        source: "CButton2.qml"
        x: cButton2X3
        y: cButton2Y3

        onLoaded: {
            item.texts = "設定"
            item.fileName = "S3.qml"
        }
    }


    Loader {
        id: s2BackButton
        source: "CBackButton.qml"
        x: backButtonX
        y: backButtonY

        onLoaded: {
            item.texts = "地図へ戻る"
            item.fileName = "S0.qml"
        }
    }



}


