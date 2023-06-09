import QtQuick 2.15

Rectangle{
    id: s11Base
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
            cButton2X2 = screenSubButtonProperty.item.cButton2X2
            cButton2Y2 = screenSubButtonProperty.item.cButton2Y2
            cButton2X3 = screenSubButtonProperty.item.cButton2X3
            cButton2Y3 = screenSubButtonProperty.item.cButton2Y3
        }
    }

    Loader {
        id: s11TitleText
        source: "CTitleText1.qml"
        x: titleTextX
        y: titleTextY

        onLoaded: {
            item.texts = "行き先"
            item.baseColor = "green"
        }
    }

    //write

    Loader {
        id: toS111Button
        source: "CButton4.qml"
        x: cButton4X1
        y: cButton4Y1

        onLoaded: {
            item.texts = "住所"
            item.fileName = "S111.qml"
        }
    }

    Loader {
        id: toS11Button
        source: "CButton4.qml"
        x: cButton4X2
        y: cButton4Y2

        onLoaded: {
            item.texts = "電話番号"
            item.fileName = "S112.qml"
        }
    }

    Loader {
        id: toS113Button
        source: "CButton4.qml"
        x: cButton4X3
        y: cButton4Y3

        onLoaded: {
            item.texts = "ガイドブック"
            item.fileName = "S113.qml"
        }
    }

    Loader {
        id: toS114Button
        source: "CButton4.qml"
        x: cButton4X4
        y: cButton4Y4

        onLoaded: {
            item.texts = "ジャンル"
            item.fileName = "S114.qml"
        }
    }

    Loader {
        id: toS115Button
        source: "CButton4.qml"
        x: cButton4X5
        y: cButton4Y5

        onLoaded: {
            item.texts = "名称"
            item.fileName = "S115.qml"
        }
    }
    Loader {
        id: toS116Button
        source: "CButton4.qml"
        x: cButton4X6
        y: cButton4Y6

        onLoaded: {
            item.texts = "マーク"
            item.fileName = "S116.qml"
        }
    }

    Loader {
        id: toS117Button
        source: "CButton4.qml"
        x: cButton4X7
        y: cButton4Y7

        onLoaded: {
            item.texts = "緯度経度"
            item.fileName = "S117.qml"
        }
    }

    Loader {
        id: toS118Button
        source: "CButton4.qml"
        x: cButton4X8
        y: cButton4Y8

        onLoaded: {
            item.texts = "履歴"
            item.fileName = "S118.qml"
        }
    }

    Loader {
        id: toS119Button
        source: "CButton2.qml"
        x: cButton2X1
        y: cButton2Y1

        onLoaded: {
            item.texts = "ルートの編集"
            item.fileName = "S119.qml"
        }
    }

    Loader {
        id: toS11AButton
        source: "CButton2.qml"
        x: cButton2X2
        y: cButton2Y2

        onLoaded: {
            item.texts = "ルート呼出"
            item.fileName = "S11A.qml"
        }
    }

    Loader {
        id: toS11BButton
        source: "CButton2.qml"
        x: cButton2X3
        y: cButton2Y3

        onLoaded: {
            item.texts = "携帯から"
            item.fileName = "S11B.qml"
        }
    }

    Loader {
        id: s11BackButton
        source: "CBackButton.qml"
        x: backButtonX
        y: backButtonY

        onLoaded: {
            item.fileName = "S1.qml"
        }
    }



}
