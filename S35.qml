import QtQuick 2.15

Rectangle {
    id: s35Base
    color: baseColor

    property string baseColor;
    property int titleTextX;
    property int titleTextY;
    property int backButtonX;
    property int backButtonY;

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
        id: s35TitleText
        source: "CTitleText1.qml"
        x: titleTextX
        y: titleTextY

        onLoaded: {
            item.texts = "自宅/お気に入り編集"
            item.baseColor = "red"
        }
    }

    Loader {
        id: toS351Button1
        source: "CButton3.qml"
        x: cButton3X1
        y: cButton3Y1

        onLoaded: {
            item.texts = "自宅"
            item.fileName = "S351.qml"
        }
    }

    Loader {
        id: toS351Button2
        source: "CButton3.qml"
        x: cButton3X2
        y: cButton3Y2

        onLoaded: {
            item.texts = "ガソリン\nスタンド"
            item.fileName = "S351.qml"
        }
    }

    Loader {
        id: toS351Button3
        source: "CButton3.qml"
        x: cButton3X3
        y: cButton3Y3

        onLoaded: {
            item.texts = "未登録"
            item.fileName = "S351.qml"
        }
    }

    Loader {
        id: toS351Button4
        source: "CButton3.qml"
        x: cButton3X4
        y: cButton3Y4

        onLoaded: {
            item.texts = "未登録"
            item.fileName = "S351.qml"
        }
    }

    Loader {
        id: toS351Button5
        source: "CButton3.qml"
        x: cButton3X5
        y: cButton3Y5

        onLoaded: {
            item.texts = "未登録"
            item.fileName = "S351.qml"

        }
    }

    Loader {
        id: toS351Button6
        source: "CButton3.qml"
        x: cButton3X6
        y: cButton3Y6

        onLoaded: {
            item.texts = "未登録"
            item.fileName = "S351.qml"


        }
    }

    Loader {
        id: s35BackButton
        source: "CBackButton.qml"
        x: backButtonX
        y: backButtonY

        onLoaded: {
            item.fileName = "S3.qml"
        }
    }
}

