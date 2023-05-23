import QtQuick 2.15

Rectangle{
    id: s32Pg2Base
    color: baseColor

    property string baseColor;
    property int titleTextX;
    property int titleTextY;
    property int backButtonX;
    property int backButtonY;

    property int cButton7X1;
    property int cButton7Y1;

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
        }
    }

    Loader {
        id: s32Pg2TitleText
        source: "CTitleText1.qml"
        x: titleTextX
        y: titleTextY

        onLoaded: {
            item.texts = "ルート編集"
            item.baseColor = "red"
        }
    }

    Loader {
        id: s32Pg2PageNumberText
        source: "CPageNumberText.qml"
        x: pageNumberTextX
        y: pageNumberTextY

        onLoaded: {
            item.texts = "2/2"
        }
    }

    Loader {
        id: toS325Button
        source: "CButton7.qml"
        x: cButton7X1
        y: cButton7Y1

        onLoaded: {
            item.texts = "インポート"
            item.fileName = "S325.qml"
        }
    }

    Loader {
        id: previousPageButton
        source: "CPageChangeButton.qml"
        x: previousPageButtonX
        y: previousPageButtonY

        onLoaded: {
            item.texts = "▲"
            item.fileName = "S32.qml"
        }
    }

    Loader {
        id: nextPageButton
        source: "CPageChangeButton.qml"
        x: nextPageButtonX
        y: nextPageButtonY

        onLoaded: {
            item.texts = "▼"
            item.fileName = "S32.qml"
        }
    }

    Loader {
        id: s32Pg2BackButton
        source: "CBackButton.qml"
        x: backButtonX
        y: backButtonY

        onLoaded: {
            item.fileName = "S3.qml"
        }
    }
}
