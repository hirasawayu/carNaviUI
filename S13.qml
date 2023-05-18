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
        }
    }

    Loader {
        id: s13TitleText
        source: "CTitleText1.qml"
        x: titleTextX
        y: titleTextY

        onLoaded: {
            item.texts = "自宅/お気に入り"
            item.baseColor = "orange"
        }
    }

    Loader {
        id: toS132Button1
        source: "CButton3.qml"
        x: cButton3X1
        y: cButton3Y1

        onLoaded: {
            item.texts = "自宅"
            item.fileName = "S132.qml"
        }
    }

    Loader {
        id: toS132Button2
        source: "CButton3.qml"
        x: cButton3X2
        y: cButton3Y2

        onLoaded: {
            item.texts = "ガソリン\nスタンド"
            item.fileName = "S132.qml"

        }
    }

    Loader {
        id: toS132Button3
        source: "CButton3.qml"
        x: cButton3X3
        y: cButton3Y3

        onLoaded: {
            item.texts = "未登録"
            item.fileName = "S132.qml"

        }
    }

    Loader {
        id: toS132Button4
        source: "CButton3.qml"
        x: cButton3X4
        y: cButton3Y4

        onLoaded: {
            item.texts = "未登録"
            item.fileName = "S132.qml"

        }
    }

    Loader {
        id: toS132Button5
        source: "CButton3.qml"
        x: cButton3X5
        y: cButton3Y5

        onLoaded: {
            item.texts = "未登録"
            item.fileName = "S132.qml"

        }
    }

    Loader {
        id: toS132Button6
        source: "CButton3.qml"
        x: cButton3X6
        y: cButton3Y6

        onLoaded: {
            item.texts = "未登録"
            item.fileName = "S132.qml"


        }
    }

    Loader {
        id: toS131Button
        source: "CButton5.qml"
        x: cButton2X1
        y: cButton2Y1

        onLoaded: {
            item.texts = "自宅/お気に入り編集"
            item.fileName = "S131.qml"
        }
    }

    Loader {
        id: s13backButton
        source: "CBackButton.qml"
        x: backButtonX
        y: backButtonY

        onLoaded: {
            item.fileName = "S1.qml"
        }
    }





}
