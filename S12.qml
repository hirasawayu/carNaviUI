import QtQuick 2.15

Rectangle{
    id: s12Base
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
    property int cButton4X5;
    property int cButton4Y5;
    property int cButton4X6;
    property int cButton4Y6;
    property int cButton4X7;
    property int cButton4Y7;

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
            cButton4X5 = screenWith8Property.item.cButton4X5
            cButton4Y5 = screenWith8Property.item.cButton4Y5
            cButton4X6 = screenWith8Property.item.cButton4X6
            cButton4Y6 = screenWith8Property.item.cButton4Y6
            cButton4X7 = screenWith8Property.item.cButton4X7
            cButton4Y7 = screenWith8Property.item.cButton4Y7
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
        id: s12TitleText
        source: "CTitleText1.qml"
        x: titleTextX
        y: titleTextY

        onLoaded: {
            item.texts = "最寄検索"
            item.baseColor = "purple"
        }
    }

    Loader {
        id: toS121Button
        source: "CButton4.qml"
        x: cButton4X1
        y: cButton4Y1

        onLoaded: {
            item.texts = "ジャンル"
            item.fileName = "S121.qml"
        }
    }

    Loader {
        id: toS122Button
        source: "CButton4.qml"
        x: cButton4X2
        y: cButton4Y2

        onLoaded: {
            item.texts = "名称"
            item.fileName = "S122.qml"
        }
    }

    Loader {
        id: toS123Button
        source: "CButton4.qml"
        x: cButton4X3
        y: cButton4Y3

        onLoaded: {
            item.texts = "ガイドブック"
            item.fileName = "S123.qml"
        }
    }

    Loader {
        id: toS124Button
        source: "CButton4.qml"
        x: cButton4X5
        y: cButton4Y5

        onLoaded: {
            item.texts = "コンビニ"
            item.fileName = "S124.qml"
        }
    }
    Loader {
        id: toS125Button
        source: "CButton4.qml"
        x: cButton4X6
        y: cButton4Y6

        onLoaded: {
            item.texts = "ガソリン\nスタンド"
            item.fileName = "S125.qml"
        }
    }

    Loader {
        id: toS126Button
        source: "CButton4.qml"
        x: cButton4X7
        y: cButton4Y7

        onLoaded: {
            item.texts = "駐車場"
            item.fileName = "S126.qml"
        }
    }

    Loader {
        id: s12SelfButton1
        source: "CButton6.qml"
        x: 515
        y: 70

        onLoaded: {
            item.texts = "現在地から"
            item.baseColor = "yellow"
            item.textColor = "black"
        }
    }

    Loader {
        id: s12SelfButton2
        source: "CButton6.qml"
        x: 515
        y: 125

        onLoaded: {
            item.texts = "目的地方向"
            item.textOpacity = 0.2
            item.enabled = false
        }
    }

    Loader {
        id: s12SelfButton3
        source: "CButton6.qml"
        x: 515
        y: 180

        onLoaded: {
            item.texts = "目的地周辺"
            item.textOpacity = 0.2
            item.enabled = false
        }
    }

    Loader {
        id: toS127Button
        source: "CButton5.qml"
        x: cButton2X1
        y: cButton2Y1

        onLoaded: {
            item.texts = "かんたん最寄編集"
            item.fileName = "S127.qml"
        }
    }

    Loader {
        id: s12BackButton
        source: "CBackButton.qml"
        x: backButtonX
        y: backButtonY

        onLoaded: {
            item.fileName = "S1.qml"
        }
    }


}
