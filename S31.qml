import QtQuick 2.15

Rectangle{
    id: s21Base
    color: baseColor

    property string baseColor;
    property int titleTextX;
    property int titleTextY;
    property int backButtonX;
    property int backButtonY;
    property int previousPageButtonX;
    property int previousPageButtonY;
    property int nextPageButtonX;
    property int nextPageButtonY;

    property int cButton2X1;
    property int cButton2Y1;

    property int cButton7X1;
    property int cButton7Y1;
    property int cButton7X2;
    property int cButton7Y2;
    property int cButton7X3;
    property int cButton7Y3;
    property int cButton7X4;
    property int cButton7Y4;

    Loader {
        id: commonProperty
        source: "PCommonProperty.qml"

        onLoaded: {
            baseColor = commonProperty.item.baseColor
            titleTextX = commonProperty.item.titleTextX
            titleTextY = commonProperty.item.titleTextY
            backButtonX = commonProperty.item.backButtonX
            backButtonY = commonProperty.item.backButtonY
            previousPageButtonX = commonProperty.item.previousPageButtonX
            previousPageButtonY = commonProperty.item.previousPageButtonY
            nextPageButtonX = commonProperty.item.nextPageButtonX
            nextPageButtonY = commonProperty.item.nextPageButtonY
        }
    }

    Loader {
        id: screenSubButtonProperty
        source: "PScreenSubButtonProperty.qml"

        onLoaded: {
            cButton2X1 = screenSubButtonProperty.item.cButton2X1
            cButton2Y1 = screenSubButtonProperty.item.cButton2Y1
        }
    }

    Loader {
        id: s31TitleText
        source: "CTitleText1.qml"
        x: titleTextX
        y: titleTextY

        onLoaded: {
            item.texts = "ルート編集"
            item.baseColor = "red"
        }
    }

    Loader {
        id: toS311Button
        source: "CButton7.qml"
        x:
        y:

        onLoaded: {
            item.texts = "現在ルート編集"
            item.fileName = "S311.qml"
        }
    }

    Loader {
        id: toS312Button
        source: "CButton7.qml"
        x:
        y:

        onLoaded: {
            item.texts = "新規ルート作成"
            item.fileName = "S312.qml"
        }
    }

    Loader {
        id: toS313Button
        source: "CButton7.qml"
        x:
        y:

        onLoaded: {
            item.texts = "保存ルート呼出"
            item.fileName = "S313.qml"
        }
    }

    Loader {
        id: toS314Button
        source: "CButton7.qml"
        x:
        y:

        onLoaded: {
            item.texts = "現在ルート消去"
            item.fileName = "S314.qml"
        }
    }

    Loader {
        id: previousPageButton
        source: "CPageChangeButton.qml"
        x: previousPageButtonX
        y: previousPageButtonY

        onLoaded: {
            item.texts = "▲"
            item.textOpacity = 0.2
            item.enabled = false
        }
    }

    Loader {
        id: nextPageButton
        source: "CPageChangeButton.qml"
        x: nextPageButtonX
        y: nextPageButtonY

        onLoaded: {
            item.texts = "▼"
            item.textOpacity = 0.2
            item.enabled = false
        }
    }

    Loader {
        id: toS315Button
        source: "CButton5.qml"
        x: cButton2X1
        y: cButton2Y1

        onLoaded: {
            item.texts = "ルートシミュレーション"
            item.fileName = "S315.qml"
        }
    }

    Loader {
        id: s31BackButton
        source: "CBackButton.qml"
        x: backButtonX
        y: backButtonY

        onLoaded: {
            item.fileName = "S3.qml"
        }
    }






}

