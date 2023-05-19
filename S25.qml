import QtQuick 2.15

Rectangle{
    id: s25Base
    color: baseColor

    property string baseColor;
    property int titleTextX;
    property int titleTextY;
    property int backButtonX;
    property int backButtonY;

    property int cButton2X1;
    property int cButton2Y1;

    property int cButton4X1;
    property int cButton4Y1;
    property int cButton4X2;
    property int cButton4Y2;
    property int cButton4X3;
    property int cButton4Y3;
    property int cButton4X4;
    property int cButton4Y4;
    property int cButton4X5;
    property int cButton4Y5;
    property int cButton4X6;
    property int cButton4Y6;
    property int cButton4X7;
    property int cButton4Y7;
    property int cButton4X8;
    property int cButton4Y8;

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
        id: screenWith8Property
        source: "PScreenWith8ButtonProperty.qml"

        onLoaded: {
            cButton4X1 = screenWith8Property.item.cButton4X1
            cButton4Y1 = screenWith8Property.item.cButton4Y1
            cButton4X2 = screenWith8Property.item.cButton4X2
            cButton4Y2 = screenWith8Property.item.cButton4Y2
            cButton4X3 = screenWith8Property.item.cButton4X3
            cButton4Y3 = screenWith8Property.item.cButton4Y3
            cButton4X4 = screenWith8Property.item.cButton4X4
            cButton4Y4 = screenWith8Property.item.cButton4Y4
            cButton4X5 = screenWith8Property.item.cButton4X5
            cButton4Y5 = screenWith8Property.item.cButton4Y5
            cButton4X6 = screenWith8Property.item.cButton4X6
            cButton4Y6 = screenWith8Property.item.cButton4Y6
            cButton4X7 = screenWith8Property.item.cButton4X7
            cButton4Y7 = screenWith8Property.item.cButton4Y7
            cButton4X8 = screenWith8Property.item.cButton4X8
            cButton4Y8 = screenWith8Property.item.cButton4Y8

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
        id: s25TitleText
        source: "CTitleText1.qml"
        x: titleTextX
        y: titleTextY

        onLoaded: {
            item.texts = "ハンズフリー"
            item.baseColor = "blue"
        }
    }

    Loader {
        id: toS251Button
        source: "CButton4.qml"
        x: cButton4X1
        y: cButton4Y1

        onLoaded: {
            item.texts = "発信履歴"
            item.fileName = "S251.qml"
        }
    }

    Loader {
        id: toS252Button
        source: "CButton4.qml"
        x: cButton4X2
        y: cButton4Y2

        onLoaded: {
            item.texts = "着信履歴"
            item.fileName = "S252.qml"
        }
    }

    Loader {
        id: toS254Button
        source: "CButton4.qml"
        x: cButton4X3
        y: cButton4Y3

        onLoaded: {
            item.texts = "電話帳"
            item.textOpacity = 0.2
            item.enabled = false
        }
    }

    Loader {
        id: toS255Button
        source: "CButton4.qml"
        x: cButton4X4
        y: cButton4Y4

        onLoaded: {
            item.texts = "番号入力"
            item.textOpacity = 0.2
            item.enabled = false
        }
    }

    Loader {
        id: toS256Button
        source: "CButton4.qml"
        x: cButton4X5
        y: cButton4Y5

        onLoaded: {
            item.texts = "自宅"
            item.textOpacity = 0.2
            item.enabled = false
        }
    }
    Loader {
        id: toS257Button
        source: "CButton4.qml"
        x: cButton4X6
        y: cButton4Y6

        onLoaded: {
            item.texts = "プリセット１"
            item.textOpacity = 0.2
            item.enabled = false
        }
    }

    Loader {
        id: toS258Button
        source: "CButton4.qml"
        x: cButton4X7
        y: cButton4Y7

        onLoaded: {
            item.texts = "プリセット２"
            item.textOpacity = 0.2
            item.enabled = false
        }
    }

    Loader {
        id: toS259Button
        source: "CButton4.qml"
        x: cButton4X8
        y: cButton4Y8

        onLoaded: {
            item.texts = "プリセット３"
            item.textOpacity = 0.2
            item.enabled = false
        }
    }

    Loader {
        id: toS253Button
        source: "CButton5.qml"
        x: cButton2X1
        y: cButton2Y1

        onLoaded: {
            item.texts = "ハンズフリー設定"
            item.fileName = "S253.qml"
        }
    }

    Loader {
        id: s25BackButton
        source: "CBackButton.qml"
        x: backButtonX
        y: backButtonY

        onLoaded: {
            item.fileName = "S2.qml"
        }
    }
}

