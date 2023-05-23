import QtQuick 2.15

Rectangle{
    id: s36Base
    color: baseColor

    property string baseColor;
    property int titleTextX;
    property int titleTextY;
    property int backButtonX;
    property int backButtonY;

    signal onModeChangedSignal(int naviMode);

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
        id: s36TitleText
        source: "CTitleText1.qml"
        x: titleTextX
        y: titleTextY

        onLoaded: {
            item.texts = "ナビモード切替"
            item.baseColor = "red"
        }
    }

    Loader {
        id: carModeButton
        source: "CButton8.qml"
        x: 100
        y: 80

        onLoaded: {
            item.texts = "自動車\nモード"
            item.buttonCircleColor = "orange"
        }
    }

    Loader {
        id: walkingModeButton
        source: "CButton8.qml"
        x: 280
        y: 80

        onLoaded: {
            item.texts = "徒歩\nモード"
        }
    }

    Loader {
        id: outDoorModeButton
        source: "CButton8.qml"
        x: 460
        y: 80

        onLoaded: {
            item.texts = "アウトドア\nモード"
        }
    }

    Connections {
        target: carModeButton.item
        function onSelected() {
            walkingModeButton.item.buttonCircleColor = baseColor
            outDoorModeButton.item.buttonCircleColor = baseColor
            s36Base.onModeChangedSignal(1)
        }
    }

    Connections {
        target: walkingModeButton.item
        function onSelected() {
            carModeButton.item.buttonCircleColor = baseColor
            outDoorModeButton.item.buttonCircleColor = baseColor
        }
    }

    Connections {
        target: outDoorModeButton.item
        function onSelected() {
            carModeButton.item.buttonCircleColor = baseColor
            walkingModeButton.item.buttonCircleColor = baseColor
        }
    }


    Loader {
        id: s36BackButton
        source: "CBackButton.qml"
        x: backButtonX
        y: backButtonY

        onLoaded: {
            item.fileName = "S3.qml"
        }
    }






}

