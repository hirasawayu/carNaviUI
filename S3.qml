import QtQuick 2.15

Rectangle {
    id: s3Base
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

    property int cButton3X4;
    property int cButton3Y4;
    property int cButton3X5;
    property int cButton3Y5;
    property int cButton3X6;
    property int cButton3Y6;

    property int cButton4X1;
    property int cButton4Y1;
    property int cButton4X2;
    property int cButton4Y2;
    property int cButton4X3;
    property int cButton4Y3;
    property int cButton4X4;
    property int cButton4Y4;

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
        }
    }

    Loader {
        id: screenWith6Property
        source: "PScreenWith6ButtonProperty.qml"

        onLoaded: {

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
        id: s3TitleText
        source: "CTitleText1.qml"
        x: titleTextX
        y: titleTextY

        onLoaded: {
            item.texts = "編集・設定"
        }
    }

    Loader {
        id: s31button
        source: "CButton4.qml"
        x: cButton4X1
        y: cButton4Y1

        onLoaded: {
            item.texts = "ルートの編集"
            item.fileName = "S31.qml"
        }
    }

    Loader {
        id: s32button
        source: "CButton4.qml"
        x: cButton4X2
        y: cButton4Y2

        onLoaded: {
            item.texts = "マークの編集"
            item.fileName = "S32.qml"
        }
    }

    Loader {
        id: s33button
        source: "CButton4.qml"
        x: cButton4X3
        y: cButton4Y3

        onLoaded: {
            item.texts = "施設アイコン"
            item.fileName = "S33.qml"
        }
    }

    Loader {
        id: s34button
        source: "CButton4.qml"
        x: cButton4X4
        y: cButton4Y4

        onLoaded: {
            item.texts = "交通情報"
            item.fileName = "S34.qml"
        }
    }


    Loader {
        id: s35button
        source: "CButton3.qml"
        x: cButton3X4
        y: cButton3Y4

        onLoaded: {
            item.texts = "自宅/\nお気に入り編集"
            item.fileName = "S35.qml"
        }
    }

    Loader {
        id: s36button
        source: "CButton3.qml"
        x: cButton3X5
        y: cButton3Y5

        onLoaded: {
            item.texts = "ナビモード切替"
            item.fileName = "S36.qml"

        }
    }

    Loader {
        id: s37button
        source: "CButton3.qml"
        x: cButton3X6
        y: cButton3Y6

        onLoaded: {
            item.texts = "設定"
            item.fileName = "S37.qml"

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
        source: "CButton2Selected.qml"
        x: cButton2X3
        y: cButton2Y3 -30

        onLoaded: {
            item.texts = "設定"
        }
    }

    Loader {
        id: s3backButton
        source: "CBackButton.qml"
        x: backButtonX
        y: backButtonY

        onLoaded: {
            item.texts = "地図へ戻る"
            item.fileName = "S0.qml"
        }
    }



}
