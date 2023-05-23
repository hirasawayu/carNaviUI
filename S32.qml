import QtQuick 2.15

Rectangle{
    id: s32Base
    color: baseColor

    property string baseColor;
    property int titleTextX;
    property int titleTextY;
    property int backButtonX;
    property int backButtonY;

    property int cButton7X1;
    property int cButton7Y1;
    property int cButton7X2;
    property int cButton7Y2;
    property int cButton7X3;
    property int cButton7Y3;
    property int cButton7X4;
    property int cButton7Y4;

    property int previousPageButtonX;
    property int previousPageButtonY;
    property int nextPageButtonX;
    property int nextPageButtonY;
    property int pageNumberTextX;
    property int pageNumberTextY;

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
            pageNumberTextX = commonProperty.item.pageNumberTextX
            pageNumberTextY = commonProperty.item.pageNumberTextY
        }
    }

    Loader {
        id: screenWith4Property
        source: "PScreenWith4ButtonProperty.qml"

        onLoaded: {
            cButton7X1 = screenWith4Property.item.cButton7X1
            cButton7Y1 = screenWith4Property.item.cButton7Y1
            cButton7X2 = screenWith4Property.item.cButton7X2
            cButton7Y2 = screenWith4Property.item.cButton7Y2
            cButton7X3 = screenWith4Property.item.cButton7X3
            cButton7Y3 = screenWith4Property.item.cButton7Y3
            cButton7X4 = screenWith4Property.item.cButton7X4
            cButton7Y4 = screenWith4Property.item.cButton7Y4
        }
    }

    Loader {
        id: s32TitleText
        source: "CTitleText1.qml"
        x: titleTextX
        y: titleTextY

        onLoaded: {
            item.texts = "ルート編集"
            item.baseColor = "red"
        }
    }

    Loader {
        id: s32PageNumberText
        source: "CPageNumberText.qml"
        x: pageNumberTextX
        y: pageNumberTextY

        onLoaded: {
            item.texts = "1/2"
        }
    }

    Loader {
        id: toS321Button
        source: "CButton7.qml"
        x: cButton7X1
        y: cButton7Y1

        onLoaded: {
            item.texts = "マーク編集"
            item.fileName = "S321.qml"
        }
    }

    Loader {
        id: toS322Button
        source: "CButton7.qml"
        x: cButton7X2
        y: cButton7Y2

        onLoaded: {
            item.texts = "バックアップ"
            item.fileName = "S322.qml"
        }
    }

    Loader {
        id: toS323Button
        source: "CButton7.qml"
        x: cButton7X3
        y: cButton7Y3

        onLoaded: {
            item.texts = "リストア"
            item.fileName = "S323.qml"
        }
    }

    Loader {
        id: toS324Button
        source: "CButton7.qml"
        x: cButton7X4
        y: cButton7Y4

        onLoaded: {
            item.texts = "エクスポート"
            item.fileName = "S324.qml"
        }
    }

    Loader {
        id: previousPageButton
        source: "CPageChangeButton.qml"
        x: previousPageButtonX
        y: previousPageButtonY

        onLoaded: {
            item.texts = "▲"
            item.fileName = "S32Pg2.qml"
        }
    }

    Loader {
        id: nextPageButton
        source: "CPageChangeButton.qml"
        x: nextPageButtonX
        y: nextPageButtonY

        onLoaded: {
            item.texts = "▼"
            item.fileName = "S32Pg2.qml"
        }
    }

    Loader {
        id: s32BackButton
        source: "CBackButton.qml"
        x: backButtonX
        y: backButtonY

        onLoaded: {
            item.fileName = "S3.qml"
        }
    }
}
